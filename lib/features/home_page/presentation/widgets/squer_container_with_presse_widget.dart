import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/constants/language_constant.dart';
import '../bloc/home_page_bloc.dart';

class SquerContainerWithPresseWidget extends StatelessWidget {
  final Color? backgroundColor;
  final String? title;
  final String? info;
  final VoidCallback? onPressed;
  final HomePageState? state;
  const SquerContainerWithPresseWidget({
    super.key,
    this.backgroundColor,
    this.title,
    this.info,
    this.onPressed,
    this.state,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.w,
      height: 114.h,
      child: ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
          backgroundColor: WidgetStateProperty.all(Colors.transparent),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          ),
          shadowColor: WidgetStateProperty.all(Colors.transparent),
          padding: WidgetStateProperty.all(EdgeInsets.zero),
        ),
        onPressed: onPressed,
        child:
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: (state is HomePageStateLoading)
                  ? Center(child: CircularProgressIndicator())
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 100.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 50.h,
                                child: Text(
                                  title ?? '',
                                  style: Theme.of(context).textTheme.labelMedium
                                      ?.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: FontConstants.fontFamily(
                                          context.locale,
                                        ),
                                      ),
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  info ?? '',
                                  style: Theme.of(context).textTheme.labelLarge
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
                                          context.locale,
                                        ),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (onPressed != null)
                          SizedBox(
                            width: 15.w,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Icon(
                                context.locale == LanguageConstant.enLoacle
                                    ? Icons.arrow_forward_ios
                                    : Icons.arrow_back_ios,

                                color: Theme.of(
                                  context,
                                ).textTheme.labelLarge?.color,
                              ),
                            ),
                          ),
                      ],
                    ),
            ).asGlass(
              frosted: true,
              blurX: 38,
              blurY: 38,
              tintColor:
                  backgroundColor?.withValues(alpha: 0.9) ??
                  Theme.of(
                    context,
                  ).colorScheme.primaryContainer.withValues(alpha: 0.9),
              clipBorderRadius: BorderRadius.circular(12.r),
              border: Theme.of(context).defaultBorderSide,
            ),
      ),
    );
  }
}
