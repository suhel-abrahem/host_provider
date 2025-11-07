import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosta_provider/core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import 'package:hosta_provider/features/category_services_page/data/models/set_service_model.dart';

import '../../../../core/constants/font_constants.dart';
import '../../../../generated/locale_keys.g.dart';

class AddButtonMyService extends StatefulWidget {
  final VoidCallback onPressed;
  final bool? validator;
  const AddButtonMyService({
    super.key,
    required this.onPressed,
    this.validator,
  });

  @override
  State<AddButtonMyService> createState() => _AddButtonMyServiceState();
}

class _AddButtonMyServiceState extends State<AddButtonMyService> {
  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 95.w,
      height: 40.h,
      child: ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
          padding: WidgetStateProperty.resolveWith((callback) {
            if (callback.contains(WidgetState.pressed)) {
              return EdgeInsets.symmetric(horizontal: 8.w, vertical: 13.h);
            }
            if (callback.contains(WidgetState.hovered)) {
              return EdgeInsets.symmetric(horizontal: 5.w, vertical: 13.h);
            }
            return EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h);
          }),
        ),
        onPressed: () {
          if ((widget.validator ?? false)) {
            widget.onPressed();
          } else {
            showMessage(
              message: LocaleKeys.categoryServices_thePriceFieldIsRequired.tr(),
              context: context,
            );
          }
        },
        child: Text(
          LocaleKeys.common_add.tr(),
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            fontFamily: FontConstants.fontFamily(context.locale),
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
