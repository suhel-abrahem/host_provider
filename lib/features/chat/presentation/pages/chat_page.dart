import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/constants/font_constants.dart';
import '/core/dependencies_injection.dart';
import '/core/resource/common_state_widget/error_state_widget.dart';
import '/core/resource/common_state_widget/no_internet_state_widget.dart';
import '/core/resource/common_state_widget/unAuth_state_widget.dart';
import '/core/resource/main_page/main_page.dart';
import '/features/chat/data/models/chat_model.dart';
import '/features/chat/presentation/bloc/get_chat_bloc.dart';
import '/features/chat/presentation/widgets/send_message_field.dart';
import '/generated/locale_keys.g.dart';

import '../../domain/entities/message/message_entity.dart';
import '../widgets/message_container.dart';

class ChatPage extends StatefulWidget {
  final String? bookingNumber;
  final int? chatId;
  const ChatPage({super.key, this.bookingNumber, this.chatId});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<MessageEntity?>? messages = [];
  @override
  Widget build(BuildContext context) {
    return MainPage(
      title: widget.bookingNumber,
      body: Column(
        children: [
          Expanded(
            child: BlocProvider<GetChatBloc>(
              create: (context) => getItInstance<GetChatBloc>()
                ..add(
                  GetChatEvent.getChatDetails(
                    chatModel: ChatModel(id: widget.chatId),
                  ),
                ),
              child: BlocListener<GetChatBloc, GetChatState>(
                listener: (context, state) {
                  if (state is GetChatStateGetChatDetailsLoaded) {
                    state.chatEntity?.messages?.forEach((element) {
                      if (!(messages?.any((msg) => msg?.id == element["id"]) ??
                          false)) {
                        messages?.add(MessageEntity.fromJson(element));
                      }
                    });
                  }
                },
                child: BlocBuilder<GetChatBloc, GetChatState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => Center(child: CircularProgressIndicator()),
                      loading: () => Center(child: CircularProgressIndicator()),
                      getChatStateLoaded: (data) => Center(
                        child: ErrorStateWidget(
                          lottieHeight: 200.h,
                          lottieWidth: 200.w,
                        ),
                      ),
                      getChatDetailsLoaded: (data) => ListView.builder(
                        shrinkWrap: true,
                        controller: ScrollController(
                          initialScrollOffset: messages != null
                              ? messages!.length * 260.h
                              : 0,
                        ),
                        itemCount: messages?.length ?? 0,
                        itemBuilder: (context, index) => MessageContainer(
                          messageEntity: messages?[index],
                          chatId: widget.chatId,
                        ),
                      ),
                      error: (e) => Center(
                        child: ErrorStateWidget(
                          lottieHeight: 200.h,
                          lottieWidth: 200.w,
                        ),
                      ),
                      unAuthenticated: () => Center(
                        child: UnauthStateWidget(
                          lottieHeight: 200.h,
                          lottieWidth: 200.w,
                        ),
                      ),
                      noInternet: () => Center(
                        child: NoInternetStateWidget(
                          lottieHeight: 200.h,
                          lottieWidth: 200.w,
                        ),
                      ),
                      noChats: () => Center(
                        child: Text(
                          LocaleKeys.chatsPage_noChatsAvailable.tr(),
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                fontFamily: FontConstants.fontFamily(
                                  context.locale,
                                ),
                              ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            child: SendMessageField(
              chatId: widget.chatId,
              onSend: (value) {
                setState(() {
                  messages?.add(value);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
