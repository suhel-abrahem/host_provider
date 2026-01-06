import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/constants/font_constants.dart';
import '/core/dependencies_injection.dart';
import '/core/resource/common_state_widget/error_state_widget.dart';
import '/core/resource/common_state_widget/no_data_state_widget.dart';
import '/core/resource/common_state_widget/no_internet_state_widget.dart';
import '/core/resource/common_state_widget/unAuth_state_widget.dart';
import '/core/resource/main_page/main_page.dart';
import '/core/util/helper/helper.dart';
import '/features/chat/data/models/chat_model.dart';
import '/features/chat/domain/entities/message/message_entity.dart';
import '/features/chat/presentation/bloc/get_chat_bloc.dart';
import '/features/chat/presentation/widgets/conversion_widget.dart';
import '/generated/locale_keys.g.dart';

import '../../domain/entities/other_participant/other_participant_entity.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  ChatModel? chatModel = ChatModel();
  @override
  void didUpdateWidget(covariant ChatsPage oldWidget) {
    chatModel = chatModel?.copyWith(
      acceptLanguage: Helper.getCountryCode(context),
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    chatModel = chatModel?.copyWith(
      acceptLanguage: Helper.getCountryCode(context),
    );
    return MainPage(
      title: LocaleKeys.chatsPage_title.tr(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
            child: Text(
              LocaleKeys.chatsPage_label.tr(),
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontFamily: FontConstants.fontFamily(context.locale),
              ),
            ),
          ),
          BlocProvider<GetChatBloc>(
            create: (context) =>
                getItInstance<GetChatBloc>()
                  ..add(GetChatEvent.getChats(chatModel: chatModel)),
            child: BlocListener<GetChatBloc, GetChatState>(
              listener: (context, state) {},
              child: BlocBuilder<GetChatBloc, GetChatState>(
                builder: (context, state) {
                  print("GetChatState: $state");
                  return state.when(
                    initial: () => Center(child: CircularProgressIndicator()),
                    loading: () => Center(child: CircularProgressIndicator()),
                    getChatStateLoaded: (data) => ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: data?.length ?? 0,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.zero,
                        child: SizedBox(
                          width: 1.sw,
                          child: ConversionWidget(
                            chatId: data?[index]?.id,
                            messageEntity: MessageEntity.fromJson(
                              data?[index]?.last_message ?? {},
                            ),
                            bookingNumber: data?[index]?.booking_number,
                            unreadCount: data?[index]?.unread_count,
                            otherParticipantEntity:
                                OtherParticipantEntity.fromJson(
                                  data?[index]?.other_participant ?? {},
                                ),
                          ),
                        ),
                      ),
                    ),
                    getChatDetailsLoaded: (e) => Center(
                      child: ErrorStateWidget(
                        lottieHeight: 150.h,
                        lottieWidth: 150.w,
                      ),
                    ),
                    error: (e) => Center(
                      child: ErrorStateWidget(
                        lottieHeight: 150.h,
                        lottieWidth: 150.w,
                      ),
                    ),
                    unAuthenticated: () => Center(
                      child: UnauthStateWidget(
                        lottieHeight: 150.h,
                        lottieWidth: 150.w,
                      ),
                    ),
                    noInternet: () => Center(
                      child: NoInternetStateWidget(
                        lottieHeight: 150.h,
                        lottieWidth: 150.w,
                      ),
                    ),
                    noChats: () => Center(
                      child: NodataStateWidget(
                        lottieHeight: 150.h,
                        lottieWidth: 150.w,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
