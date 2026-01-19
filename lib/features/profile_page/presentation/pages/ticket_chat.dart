import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/features/profile_page/presentation/bloc/tickets_bloc_bloc.dart';
import '/features/profile_page/presentation/widgets/help/ticket_send_container.dart';

import '../../../../core/util/helper/helper.dart';
import '../../../chat/domain/entities/message/message_entity.dart';
import '../../../chat/presentation/widgets/message_container.dart';
import '../../data/models/help/get_tickets_model.dart';
import '../../domain/entities/help/ticket_entity.dart';
import '../../domain/entities/help/tickets_entity.dart';
import '/features/login_page/domain/entities/login_state_entity.dart';
import '../../../../config/app/app_preferences.dart';

import '../../../../core/constants/font_constants.dart';
import '../../../../core/resource/common_state_widget/error_state_widget.dart';
import '../../../../core/resource/common_state_widget/no_internet_state_widget.dart';
import '../../../../core/resource/common_state_widget/unAuth_state_widget.dart';
import '../../../../generated/locale_keys.g.dart';
import '/core/dependencies_injection.dart';

import '/core/resource/main_page/main_page.dart';

import '/features/chat/presentation/bloc/get_chat_bloc.dart';
import '/features/chat/presentation/widgets/send_message_field.dart';

import '../../../../core/resource/rst_stream/rst_stream.dart';

class TicketChatPage extends StatefulWidget {
  final String? bookingNumber;
  final int? chatId;

  const TicketChatPage({super.key, this.bookingNumber, this.chatId});

  @override
  State<TicketChatPage> createState() => _TicketChatPageState();
}

class _TicketChatPageState extends State<TicketChatPage> {
  List<MessageEntity?>? chatMesages;
  ScrollController scrollController = ScrollController(keepScrollOffset: true);
  GetTicketsModel? model = GetTicketsModel();
  TicketsBlocState currentState = TicketsBlocState.initial();
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
    model = model?.copyWith(id: widget.chatId.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    model = model?.copyWith(accepted_language: Helper.getCountryCode(context));
    return MainPage(
      title: widget.bookingNumber,
      body: Column(
        children: [
          Expanded(
            child: BlocProvider<TicketsBlocBloc>(
              create: (context) =>
                  getItInstance<TicketsBlocBloc>()
                    ..add(TicketsBlocEvent.getTicketDetails(model: model)),
              child: BlocListener<TicketsBlocBloc, TicketsBlocState>(
                listener: (context, state) async {
                  print("TicketChatPage Listener: $state");
                  currentState = state;
                  if (state is TicketsBlocStateTicketDetailsLoaded) {
                    bool added = false;

                    for (final element in state.ticketDetails?.messages ?? []) {
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
                  } else if (state is TicketsBlocStateError) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          LocaleKeys.common_error.tr(),
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                fontFamily: FontConstants.fontFamily(
                                  context.locale,
                                ),
                              ),
                        ),
                      ),
                    );
                  } else if (state is TicketsBlocStateSessionExpired) {
                    await await getItInstance<AppPreferences>().setUserInfo(
                      loginStateEntity: LoginStateEntity(),
                    );
                  }
                },
                child: currentState.when(
                  initial: () => Center(child: CircularProgressIndicator()),
                  loading: () => Center(child: CircularProgressIndicator()),

                  error: (e) => Center(
                    child: ErrorStateWidget(
                      lottieHeight: 200.h,
                      lottieWidth: 200.w,
                    ),
                  ),

                  loadedTickets: (List<TicketsEntity?>? tickets) => Center(
                    child: ErrorStateWidget(
                      lottieHeight: 200.h,
                      lottieWidth: 200.w,
                    ),
                  ),
                  ticketCreated: (TicketsEntity? ticket) => Center(
                    child: ErrorStateWidget(
                      lottieHeight: 200.h,
                      lottieWidth: 200.w,
                    ),
                  ),
                  noData: () => Center(
                    child: Text(
                      LocaleKeys.chatsPage_noChatsAvailable.tr(),
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
                      ),
                    ),
                  ),
                  connectionError: () => Center(
                    child: NoInternetStateWidget(
                      lottieHeight: 200.h,
                      lottieWidth: 200.w,
                    ),
                  ),
                  sessionExpired: () => Center(
                    child: UnauthStateWidget(
                      lottieHeight: 200.h,
                      lottieWidth: 200.w,
                    ),
                  ),
                  ticketDetailsLoaded: (data) {
                    return StreamBuilder(
                      stream: chatMessageStreamSocket.stream,
                      builder: (context, asyncSnapshot) {
                        if (asyncSnapshot.data != null) {
                          final msg = asyncSnapshot.data as MessageEntity;

                          final exists =
                              chatMesages?.any((m) => m?.id == msg.id) ?? false;
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
                            return TicketMessageContainer(
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
                  messageSentSuccessfully: (e) {
                    return null;
                  },
                  messageSendError: (String? message) {
                    return null;
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
                  currentState = TicketsBlocState.ticketDetailsLoaded(
                    ticketDetails: null,
                  );
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
