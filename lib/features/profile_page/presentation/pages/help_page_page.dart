import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/resource/custom_widget/custom_input_field/custom_input_field.dart';
import '../../../../core/resource/main_page/main_page.dart';
import '../../../../generated/locale_keys.g.dart';

class HelpPagePage extends StatelessWidget {
  const HelpPagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainPage(
      title: LocaleKeys.profilePage_helpAndSupport.tr(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 20.w,
              end: 20.w,
              top: 20.h,
              bottom: 12.h,
            ),
            child: Text(
              LocaleKeys.profilePage_helpAndSupport.tr(),
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontFamily: FontConstants.fontFamily(context.locale),
                fontSize: 22.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              LocaleKeys.profilePage_howCanWeHelpYou.tr(),
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontFamily: FontConstants.fontFamily(context.locale),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(
              vertical: 20.h,
              horizontal: 20.w,
            ),
            child:
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 20.h,
                  ),
                  child: Column(
                    children: [
                      CustomInputField(
                        width: 300.w,
                        label: LocaleKeys.profilePage_subject.tr(),
                        fillColor: Colors.transparent,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.h),
                        child: CustomInputField(
                          width: 300.w,
                          label: LocaleKeys.profilePage_message.tr(),
                          fillColor: Colors.transparent,
                          initialValue: LocaleKeys
                              .profilePage_typeYourMessageHere
                              .tr(),
                          maxLines: 6,
                        ),
                      ),
                      ElevatedButton(
                        style: Theme.of(context).elevatedButtonTheme.style
                            ?.copyWith(
                              backgroundColor: WidgetStatePropertyAll(
                                Colors.transparent,
                              ),

                              padding: WidgetStatePropertyAll(EdgeInsets.zero),
                              shadowColor: WidgetStatePropertyAll(
                                Colors.transparent,
                              ),
                            ),
                        onPressed: () {},
                        child:
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 40.w,
                                vertical: 12.h,
                              ),
                              child: Center(
                                child: Text(
                                  LocaleKeys.profilePage_submit.tr(),
                                  style: Theme.of(context).textTheme.labelLarge
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
                                          context.locale,
                                        ),
                                      ),
                                ),
                              ),
                            ).asGlass(
                              frosted: true,
                              blurX: 38,
                              blurY: 38,
                              border: Theme.of(context).defaultBorderSide,
                              clipBorderRadius: BorderRadiusGeometry.circular(
                                12.r,
                              ),
                              tintColor: Theme.of(
                                context,
                              ).colorScheme.primary.withValues(alpha: 0.9),
                            ),
                      ),
                    ],
                  ),
                ).asGlass(
                  frosted: true,
                  blurX: 38,
                  blurY: 38,
                  border: Theme.of(context).defaultBorderSide,
                  clipBorderRadius: BorderRadiusGeometry.circular(12.r),
                  tintColor: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.9),
                ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child:
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 20.h,
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.profilePage_contactInfo.tr(),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsGeometry.symmetric(vertical: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 8.h,
                              ),
                              child: Icon(
                                Icons.email_outlined,
                                size: 20.sp,
                                color: Theme.of(
                                  context,
                                ).textTheme.labelLarge?.color,
                              ),
                            ).asGlass(
                              frosted: true,
                              blurX: 38,
                              blurY: 38,
                              border: Theme.of(context).defaultBorderSide,
                              clipBorderRadius: BorderRadiusGeometry.circular(
                                12.r,
                              ),
                              tintColor: Theme.of(
                                context,
                              ).colorScheme.primary.withValues(alpha: 0.9),
                            ),
                            SizedBox(
                              width: 240.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    LocaleKeys.profilePage_email.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall
                                        ?.copyWith(
                                          fontFamily: FontConstants.fontFamily(
                                            context.locale,
                                          ),
                                        ),
                                  ),
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "support@hosta.com",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(
                                            fontFamily:
                                                FontConstants.fontFamily(
                                                  context.locale,
                                                ),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsGeometry.symmetric(vertical: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 8.h,
                              ),
                              child: Icon(
                                Icons.phone_outlined,
                                size: 20.sp,
                                color: Theme.of(
                                  context,
                                ).textTheme.labelLarge?.color,
                              ),
                            ).asGlass(
                              frosted: true,
                              blurX: 38,
                              blurY: 38,
                              border: Theme.of(context).defaultBorderSide,
                              clipBorderRadius: BorderRadiusGeometry.circular(
                                12.r,
                              ),
                              tintColor: Theme.of(
                                context,
                              ).colorScheme.primary.withValues(alpha: 0.9),
                            ),
                            SizedBox(
                              width: 240.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    LocaleKeys.profilePage_phone.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall
                                        ?.copyWith(
                                          fontFamily: FontConstants.fontFamily(
                                            context.locale,
                                          ),
                                        ),
                                  ),
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "07701234567",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(
                                            fontFamily:
                                                FontConstants.fontFamily(
                                                  context.locale,
                                                ),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ).asGlass(
                  frosted: true,
                  blurX: 38,
                  blurY: 38,
                  border: Theme.of(context).defaultBorderSide,
                  clipBorderRadius: BorderRadiusGeometry.circular(12.r),
                  tintColor: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.9),
                ),
          ),
        ],
      ),
    );
  }
}
