import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/font_constants.dart';
import '../color_manager.dart';

class DrawerButtonWidget extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final VoidCallback? onPressed;
  final bool? selected;
  const DrawerButtonWidget({
    super.key,
    this.title,
    this.icon,
    this.onPressed,
    this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible:
          (title != null && (title?.trim().isNotEmpty ?? false)) &&
          (icon != null && (icon?.codePoint != 0)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: SizedBox(
          height: 50.h,
          child: ElevatedButton(
            onPressed: onPressed,
            style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              elevation: WidgetStateProperty.fromMap({WidgetState.pressed: 10}),
              shadowColor: WidgetStatePropertyAll(
                selected ?? false
                    ? Theme.of(context).colorScheme.shadow
                    : Colors.transparent,
              ),
              backgroundColor: WidgetStatePropertyAll(
                (selected ?? false)
                    ? const Color.fromARGB(255, 225, 238, 231)
                    : ColorManager.primaryColor,
              ),
              foregroundColor: WidgetStatePropertyAll(
                selected ?? false
                    ? ColorManager.primaryColor
                    : ColorManager.darkTextColor,
              ),
              side: WidgetStatePropertyAll(BorderSide.none),

              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              ),
            ),
            child: SizedBox(
              height: 50.h,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: selected ?? false
                        ? ColorManager.primaryColor
                        : ColorManager.darkTextColor,
                    size: 24.sp,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 24.sp),
                    child: Text(
                      title ?? "",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
                        fontWeight: FontWeight.w500,
                        color: selected ?? false
                            ? ColorManager.primaryColor
                            : ColorManager.darkTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
