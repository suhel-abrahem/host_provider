import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showMessage({
  required String message,
  required BuildContext context,
  bool haveButton = false,
  String? buttonTitle,
  VoidCallback? onPressed,
  int duration = 3000,
}) {
  final snack = SnackBar(
    behavior: SnackBarBehavior.floating,
    // margin: EdgeInsets.only(bottom: 3.h, left: 3.w, right: 3.w),
    backgroundColor: Theme.of(context).colorScheme.onSurface,
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
    content: SizedBox(
      height: 50.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                message,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          if (haveButton)
            SizedBox(
              width: 50.w,
              height: 30.h,
              child: ElevatedButton(
                onPressed: onPressed,
                child: Text(buttonTitle ?? ''),
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
