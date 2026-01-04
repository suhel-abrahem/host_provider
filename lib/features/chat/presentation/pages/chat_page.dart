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

import '../../../../core/resource/rst_stream/rst_stream.dart';
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
  List<MessageEntity?>? chatMesages;
  ScrollController scrollController = ScrollController(keepScrollOffset: true);
  void _scrollToBottom({bool animated = true}) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      double max = scrollController.position.maxScrollExtent;

      if (animated) {
        scrollController.animateTo(
          max,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeOut,
        );
      } else {
        scrollController.jumpTo(max);
      }
    });
  }

  @override
  void initState() {
    chatMesages = [];

    super.initState();
  }

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
                    bool added = false;

                    for (final element in state.chatEntity?.messages ?? []) {
                      final msg = MessageEntity.fromJson(element);
                      final exists =
                          chatMesages?.any((m) => m?.id == msg.id) ?? false;
                      if (!exists) {
                        chatMesages?.add(msg);
                        added = true;
                      }
                    }

                    if (added) {
                      setState(() {});
                      _scrollToBottom();
                    }
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
                      getChatDetailsLoaded: (data) {
                        return StreamBuilder(
                          stream: chatMessageStreamSocket.stream,
                          builder: (context, asyncSnapshot) {
                            print(
                              'New message received: ${asyncSnapshot.data}',
                            );
                            if (asyncSnapshot.data != null) {
                              final msg = asyncSnapshot.data as MessageEntity;

                              final exists =
                                  chatMesages?.any((m) => m?.id == msg.id) ??
                                  false;
                              if (!exists) {
                                chatMesages?.add(msg);
                                _scrollToBottom(animated: true);
                              }
                            }

                            return ListView.builder(
                              shrinkWrap: true,
                              controller: scrollController,
                              itemCount: chatMesages?.length ?? 0,
                              itemBuilder: (context, index) {
                                return MessageContainer(
                                  onMessageSent: (value) {
                                    setState(() {
                                      chatMesages?[index] = value;
                                    });
                                  },
                                  messageEntity: chatMesages?[index],
                                  chatId: widget.chatId,
                                );
                              },
                            );
                          },
                        );
                      },
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
                  chatMesages?.add(value);
                });

                _scrollToBottom();
              },
            ),
          ),
        ],
      ),
    );
  }
}
