import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showMessage({
  required String message,
  required BuildContext context,
  bool haveButton = false,
  Widget? buttonWidget,
  VoidCallback? onPressed,
  int duration = 3000,
}) {
  final snack = SnackBar(
    behavior: SnackBarBehavior.floating,
    // margin: EdgeInsets.only(bottom: 3.h, left: 3.w, right: 3.w),
    backgroundColor: Theme.of(context).colorScheme.onSurface,
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
    content: SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: haveButton ? 250.w : 300.w,
            child: Text(
              message,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.error,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          if (haveButton)
            SizedBox(
              width: 50.w,
              height: 30.h,
              child: ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                  padding: WidgetStatePropertyAll(EdgeInsets.zero),
                  shape: WidgetStatePropertyAll(CircleBorder()),
                ),
                onPressed: onPressed,
                child: buttonWidget ?? const SizedBox.shrink(),
              ),
            ),
        ],
      ),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.r),
      side: BorderSide(color: Theme.of(context).focusColor, width: 1.w),
    ),
    duration: Duration(milliseconds: duration),
  );
  ScaffoldMessenger.of(context).showSnackBar(snack);
}
