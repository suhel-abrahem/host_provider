import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/resource/main_page/main_page.dart';
import '/features/profile_page/presentation/bloc/tickets_bloc_bloc.dart';

import '../../../../core/constants/font_constants.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../core/resource/common_state_widget/error_state_widget.dart';
import '../../../../core/resource/common_state_widget/no_data_state_widget.dart';
import '../../../../core/resource/common_state_widget/no_internet_state_widget.dart';
import '../../../../core/resource/common_state_widget/unAuth_state_widget.dart';
import '../../../../core/util/helper/helper.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../chat/domain/entities/message/message_entity.dart';
import '../../../chat/presentation/widgets/conversion_widget.dart';
import '../../data/models/help/get_tickets_model.dart';
import '../../domain/entities/help/ticket_entity.dart';
import '../../domain/entities/help/tickets_entity.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({super.key});

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  GetTicketsModel? model = GetTicketsModel();
  @override
  void didUpdateWidget(covariant TicketsPage oldWidget) {
    model = model?.copyWith(accepted_language: Helper.getCountryCode(context));
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    model = model?.copyWith(accepted_language: Helper.getCountryCode(context));
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
          BlocProvider<TicketsBlocBloc>(
            create: (context) =>
                getItInstance<TicketsBlocBloc>()
                  ..add(TicketsBlocEvent.getTickets(model: model)),
            child: BlocListener<TicketsBlocBloc, TicketsBlocState>(
              listener: (context, state) {},
              child: BlocBuilder<TicketsBlocBloc, TicketsBlocState>(
                builder: (context, state) {
                  print("GetChatState: $state");
                  return state.when(
                    initial: () => Center(child: CircularProgressIndicator()),
                    loading: () => Center(child: CircularProgressIndicator()),
                    loadedTickets: (data) => ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: data?.length ?? 0,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.zero,
                        child: SizedBox(
                          width: 1.sw,
                          child: ConversionWidget(
                            isTicket: true,
                            ticketImage: data?[index]?.user?["avatar"],
                            chatId: data?[index]?.id,
                            messageEntity: MessageEntity.fromJson(
                              data?[index]?.last_message ?? {},
                            ),
                            bookingNumber: data?[index]?.ticket_number,
                            unreadCount: data?[index]?.unread_count,
                          ),
                        ),
                      ),
                    ),

                    error: (e) => Center(
                      child: ErrorStateWidget(
                        lottieHeight: 150.h,
                        lottieWidth: 150.w,
                      ),
                    ),
                    sessionExpired: () => Center(
                      child: UnauthStateWidget(
                        lottieHeight: 150.h,
                        lottieWidth: 150.w,
                      ),
                    ),
                    connectionError: () => Center(
                      child: NoInternetStateWidget(
                        lottieHeight: 150.h,
                        lottieWidth: 150.w,
                      ),
                    ),
                    noData: () => Center(
                      child: NodataStateWidget(
                        lottieHeight: 150.h,
                        lottieWidth: 150.w,
                      ),
                    ),
                    ticketCreated: (TicketsEntity? ticket) {
                      return Center(
                        child: ErrorStateWidget(
                          lottieHeight: 150.h,
                          lottieWidth: 150.w,
                        ),
                      );
                    },
                    ticketDetailsLoaded: (TicketEntity? ticketDetails) {
                      return SizedBox.shrink();
                    },
                    messageSentSuccessfully: (e) {
                      return SizedBox.shrink();
                    },
                    messageSendError: (String? message) {
                      return SizedBox.shrink();
                    },
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
