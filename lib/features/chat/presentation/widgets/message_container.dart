import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/config/theme/app_theme.dart';
import '/core/constants/font_constants.dart';
import '/core/dependencies_injection.dart';
import '/core/resource/image_widget.dart';
import '/features/chat/data/models/chat_model.dart';
import '/features/chat/domain/entities/message/message_entity.dart';
import '/features/chat/presentation/bloc/send_chat_bloc.dart';
import '/generated/locale_keys.g.dart';

import '../../../../core/enums/uploading_state_enum.dart';

class MessageContainer extends StatefulWidget {
  final MessageEntity? messageEntity;
  final int? chatId;
  final ValueChanged<MessageEntity?>? onMessageSent;
  const MessageContainer({
    super.key,
    this.messageEntity,
    this.chatId,
    this.onMessageSent,
  });

  @override
  State<MessageContainer> createState() => _MessageContainerState();
}

class _MessageContainerState extends State<MessageContainer> {
  MessageEntity? messageEntity;
  ChatModel chatModel = ChatModel();
  bool isGif = false;
  @override
  void initState() {
    String? messageType = widget.messageEntity?.message_type;
    String lower =
        widget.messageEntity?.content?.last.toString().toLowerCase() ?? '';
    if (lower.startsWith('http') &&
        (lower.endsWith('.gif') ||
            lower.contains('tenor.com') ||
            lower.contains('giphy.com'))) {
      print("Detected GIF URL: $lower");

      isGif = true;
    }

    messageEntity = widget.messageEntity?.copyWith(message_type: messageType);
    chatModel = ChatModel(
      id: widget.chatId,
      content: messageType == "text"
          ? widget.messageEntity?.content?.last
          : null,
      attachments: widget.messageEntity?.files,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Building MessageContainer for message: $isGif}");
    return BlocProvider<SendChatBloc>(
      create: (context) => getItInstance<SendChatBloc>()
        ..add(
          messageEntity?.uploadingState == UploadingStateEnum.uploading
              ? SendChatEvent.sendChat(chatModel: chatModel)
              : SendChatEvent.started(),
        ),
      child: BlocListener<SendChatBloc, SendChatState>(
        listener: (context, state) {
          if (state is SendChatStateLoading) {
            setState(() {
              messageEntity = messageEntity?.copyWith(
                uploadingState: UploadingStateEnum.uploading,
              );
            });
          } else if (state is SendChatStateSent) {
            setState(() {
              messageEntity = state.messageEntity?.copyWith(
                uploadingState: UploadingStateEnum.uploaded,
                me: true,
              );
              widget.onMessageSent?.call(messageEntity);
            });
          } else if (state is SendChatStateError) {
            setState(() {
              messageEntity = messageEntity?.copyWith(
                uploadingState: UploadingStateEnum.failed,
              );
            });
          }
        },
        child: Align(
          alignment: messageEntity?.me == true
              ? AlignmentDirectional.centerStart
              : AlignmentDirectional.centerEnd,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
            child: Stack(
              children: [
                Container(
                  padding:
                      (widget.messageEntity?.message_type == "image" || isGif)
                      ? EdgeInsets.zero
                      : EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  margin: EdgeInsetsDirectional.only(
                    start:
                        messageEntity?.uploadingState ==
                            UploadingStateEnum.uploaded
                        ? 0
                        : 8.w,
                  ),
                  constraints: BoxConstraints(
                    maxWidth: 260.w,
                    minWidth: 20.w,
                    minHeight: 25.h,
                    maxHeight: 200.h,
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor,
                        blurRadius: 4.r,
                        offset: Offset(0, 2.h),
                      ),
                    ],
                    border: Border.fromBorderSide(
                      Theme.of(context).defaultBorderSide,
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                    color: messageEntity?.me == true
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.primaryContainer,
                  ),
                  child: (messageEntity?.message_type == "image" || isGif)
                      ? ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(12.r),
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      messageEntity?.content?.length == 1
                                      ? 1
                                      : 2,
                                  mainAxisSpacing: 0.h,
                                  crossAxisSpacing: 0.w,
                                  mainAxisExtent:
                                      messageEntity?.content?.length == 1
                                      ? 200.h
                                      : 100.h,
                                ),
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: messageEntity?.content?.length ?? 0,
                            itemBuilder: (context, index) =>
                                messageEntity?.uploadingState !=
                                    UploadingStateEnum.uploaded
                                ? GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Dialog(
                                            child: Container(
                                              width: 300.w,
                                              height: 400.h,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12.r),
                                              ),
                                              child: isGif
                                                  ? ImageWidget(
                                                      boxFit: BoxFit.cover,
                                                      imageUrl:
                                                          messageEntity
                                                              ?.content
                                                              ?.last ??
                                                          "",

                                                      errorWidget: Icon(
                                                        Icons
                                                            .broken_image_outlined,
                                                      ),
                                                    )
                                                  : FittedBox(
                                                      fit: BoxFit.fill,
                                                      child: Image.file(
                                                        messageEntity
                                                                ?.files?[index] ??
                                                            File(""),
                                                      ),
                                                    ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Container(
                                      height:
                                          messageEntity?.content?.length == 1
                                          ? 200.h
                                          : 100.h,
                                      width: messageEntity?.content?.length == 1
                                          ? 260.w
                                          : 130.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0),
                                        border: Border.fromBorderSide(
                                          Theme.of(context).defaultBorderSide,
                                        ),
                                      ),
                                      child: isGif
                                          ? ImageWidget(
                                              boxFit: BoxFit.cover,
                                              imageUrl:
                                                  messageEntity
                                                      ?.content
                                                      ?.last ??
                                                  "",

                                              errorWidget: Icon(
                                                Icons.broken_image_outlined,
                                              ),
                                            )
                                          : FittedBox(
                                              fit: BoxFit.cover,
                                              child: Image.file(
                                                messageEntity?.files?[index] ??
                                                    File(""),
                                              ),
                                            ),
                                    ),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      border: Border.fromBorderSide(
                                        Theme.of(context).defaultBorderSide,
                                      ),
                                    ),
                                    child: isGif
                                        ? ImageWidget(
                                            boxFit: BoxFit.cover,
                                            imageUrl:
                                                messageEntity?.content?.last ??
                                                "",

                                            errorWidget: Icon(
                                              Icons.broken_image_outlined,
                                            ),
                                          )
                                        : ImageWidget(
                                            boxFit: BoxFit.cover,

                                            imageUrl:
                                                messageEntity
                                                    ?.content?[index] ??
                                                '',
                                            errorIconSize: 50.sp,
                                            errorWidget: Icon(
                                              Icons.broken_image_outlined,
                                              size: 50.sp,
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.onErrorContainer,
                                            ),
                                          ),
                                  ),
                          ),
                        )
                      : Text(
                          (widget.messageEntity?.content?.isEmpty == true)
                              ? LocaleKeys.common_error.tr()
                              : widget.messageEntity?.content?.last ??
                                    LocaleKeys.common_error.tr(),
                          style: Theme.of(context).textTheme.labelSmall
                              ?.copyWith(
                                fontFamily: FontConstants.fontFamily(
                                  context.locale,
                                ),
                              ),
                        ),
                ),
                PositionedDirectional(
                  bottom: 0,
                  start: 0,
                  child:
                      messageEntity?.uploadingState == UploadingStateEnum.failed
                      ? SizedBox(
                          width: 25.w,
                          height: 25.h,
                          child: Builder(
                            builder: (context) {
                              return IconButton(
                                style: Theme.of(context).iconButtonTheme.style
                                    ?.copyWith(
                                      shape: WidgetStatePropertyAll(
                                        CircleBorder(
                                          eccentricity:
                                              BorderSide.strokeAlignOutside,
                                          side: Theme.of(
                                            context,
                                          ).defaultBorderSide,
                                        ),
                                      ),
                                      shadowColor: WidgetStatePropertyAll(
                                        Theme.of(context).colorScheme.shadow,
                                      ),
                                      backgroundColor: WidgetStatePropertyAll(
                                        Theme.of(
                                          context,
                                        ).colorScheme.primaryContainer,
                                      ),
                                    ),
                                onPressed: () {
                                  setState(() {
                                    messageEntity = messageEntity?.copyWith(
                                      uploadingState:
                                          UploadingStateEnum.uploading,
                                    );
                                  });
                                  context.read<SendChatBloc>().add(
                                    SendChatEvent.sendChat(
                                      chatModel: chatModel,
                                    ),
                                  );
                                },
                                icon: Icon(
                                  Icons.refresh_outlined,
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              );
                            },
                          ),
                        )
                      : messageEntity?.uploadingState ==
                            UploadingStateEnum.uploading
                      ? SizedBox(
                          width: 10.w,
                          height: 10.h,
                          child: CircularProgressIndicator(),
                        )
                      : SizedBox.shrink(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
