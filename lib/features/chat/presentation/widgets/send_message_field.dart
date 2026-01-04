import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/core/resource/custom_widget/custom_input_field/custom_input_field.dart';
import '/core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';

import '/features/chat/domain/entities/message/message_entity.dart';

import '/generated/locale_keys.g.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/enums/uploading_state_enum.dart';

class SendMessageField extends StatefulWidget {
  final ValueChanged<MessageEntity?>? onSend;

  final int? chatId;
  const SendMessageField({super.key, this.onSend, this.chatId});

  @override
  State<SendMessageField> createState() => _SendMessageFieldState();
}

class _SendMessageFieldState extends State<SendMessageField> {
  List<File?>? images = [];
  String? messageText;
  String? localeKey;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Future<void> openCamera() async {
    images ??= [];
    if ((images?.length ?? 0) <= 4) {
      final imagePicker = ImagePicker();

      await imagePicker
          .pickImage(source: ImageSource.camera, imageQuality: 60)
          .then((onValue) {
            setState(() {
              if (onValue != null) {
                images?.add(File(onValue.path));
              }
            });
            print("Images Length: $images");
          });
    } else {
      showMessage(
        message: LocaleKeys.chatsPage_maximumOf5ImagesAllowed.tr(),
        context: context,
      );
    }
  }

  Future<void> openGallery() async {
    images ??= [];
    if ((images?.length ?? 0) <= 4) {
      final imagePicker = ImagePicker();

      await imagePicker
          .pickMultiImage(limit: 6 - (images?.length ?? 0), imageQuality: 60)
          .then((onValue) {
            setState(() {
              for (var element in onValue) {
                if ((images?.length ?? 0) < 5) images?.add(File(element.path));
              }
            });
            print("Images Length: $images");
          });
    } else {
      showMessage(
        message: LocaleKeys.chatsPage_maximumOf5ImagesAllowed.tr(),
        context: context,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      height: ((images?.isNotEmpty ?? false)) ? 180.h : null,
      constraints: BoxConstraints(minHeight: 60.h, maxHeight: 180.h),
      child: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Row(
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return (constraints.biggest.height > 60.h &&
                          (images?.isNotEmpty ?? false))
                      ? SizedBox(
                          height: 150.h,
                          width: double.maxFinite,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: images?.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                child: Stack(
                                  children: [
                                    GestureDetector(
                                      onTap: () async {
                                        await showDialog(
                                          context: context,

                                          builder: (context) {
                                            return Dialog(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12.r),
                                                child: Image.file(
                                                  images![index] ?? File(""),

                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          12.r,
                                        ),
                                        child: Image.file(
                                          images![index] ?? File(""),
                                          width: 100.w,
                                          height: 150.h,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    PositionedDirectional(
                                      top: 0,
                                      start: 0.w,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            images?.removeAt(index);
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.error,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.close,
                                            color: Theme.of(
                                              context,
                                            ).scaffoldBackgroundColor,
                                            size: 20.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ).animate().fadeIn(duration: 600.ms),
                        )
                      : CustomInputField(
                          minLines: 1,
                          maxLines: 5,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 2.h,
                          ),
                          onChanged: (value) {
                            messageText = value.toString().trim();
                          },
                          validator: (value) {
                            if (value?.trim().isEmpty ?? true) {
                              return "";
                            }
                            return null;
                          },
                        ).animate().fadeIn(duration: 600.ms);
                },
              ),
            ),
            IconButton(
              onPressed: () async {
                await openCamera();
              },
              icon: Icon(
                Icons.camera_alt,
                color: Theme.of(context).textTheme.labelLarge?.color,
              ),
            ),
            IconButton(
              onPressed: () async {
                await openGallery();
              },
              icon: Icon(
                Icons.attach_file,
                color: Theme.of(context).textTheme.labelLarge?.color,
              ),
            ),
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    print("Send Message Clicked:${widget.chatId}");
                    if ((formKey.currentState?.validate() ?? false) ||
                        (images?.isNotEmpty ?? false)) {
                      if (widget.onSend != null) {
                        widget.onSend?.call(
                          MessageEntity(
                            me: true,
                            uploadingState: UploadingStateEnum.uploading,
                            message_type: images?.isNotEmpty == true
                                ? "image"
                                : "text",
                            content: images?.isNotEmpty == true
                                ? images?.map((e) => e?.path).toList()
                                : [messageText ?? ""],
                            files: images?.isNotEmpty == true ? images : null,
                          ),
                        );
                      }
                      formKey.currentState?.reset();
                      setState(() {
                        images = [];
                        messageText = null;
                      });
                    }
                  },
                  icon: Icon(
                    Icons.send,
                    color: Theme.of(context).textTheme.labelLarge?.color,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
