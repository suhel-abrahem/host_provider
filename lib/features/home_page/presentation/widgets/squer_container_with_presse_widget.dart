import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosta_provider/core/constants/font_constants.dart';
import 'package:hosta_provider/core/constants/language_constant.dart';

class SquerContainerWithPresseWidget extends StatelessWidget {
  final Color? backgroundColor;
  final String? title;
  final String? info;
  final VoidCallback? onPressed;
  const SquerContainerWithPresseWidget({
    super.key,
    this.backgroundColor,
    this.title,
    this.info,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.w,
      height: 114.h,
      child: ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
          backgroundColor: WidgetStateProperty.all(
            backgroundColor ?? Theme.of(context).colorScheme.primaryContainer,
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          ),
          padding: WidgetStateProperty.all(
            EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
          ),
        ),
        onPressed: onPressed,
        child: Row(
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
                    height: 40.h,
                    child: Text(
                      title ?? '',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: FontConstants.fontFamily(context.locale),
                      ),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      info ?? '',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
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

                    color: Theme.of(context).textTheme.labelLarge?.color,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
