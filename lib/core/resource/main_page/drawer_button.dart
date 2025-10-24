import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerButtonWidget extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final VoidCallback? onPressed;
  final String? pagePath;
  final String? currentPagePath;
  const DrawerButtonWidget({
    super.key,
    this.title,
    this.icon,
    this.onPressed,
    this.pagePath, this.currentPagePath,
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
          width: 200.w,
          height: 50.h,
          child: ElevatedButton(
            onPressed: onPressed,
            style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              elevation: WidgetStateProperty.fromMap({WidgetState.pressed: 10}),
              shadowColor: WidgetStatePropertyAll(Colors.transparent),
              backgroundColor: WidgetStatePropertyAll(
                pagePath == currentPagePath
                    ? Theme.of(context).colorScheme.surface
                    : Theme.of(context).colorScheme.primary,
              ),
              foregroundColor: WidgetStatePropertyAll(
                Theme.of(context).textTheme.labelLarge?.color,
              ),
              side: WidgetStatePropertyAll(BorderSide.none),

              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: Theme.of(context).textTheme.labelLarge?.color,
                  size: 24.sp,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 24.sp),
                  child: Text(
                    title ?? "",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
