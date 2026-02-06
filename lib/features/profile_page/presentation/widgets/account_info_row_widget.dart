import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import '../../../../config/theme/app_theme.dart';

import '../../../../core/resource/custom_widget/custom_input_field/custom_input_field.dart';

class AccountInfoRowWidget extends StatefulWidget {
  final String? profileEntity;
  final IconData? iconData;
  final String? label;
  final ValueChanged<String?> onChanged;
  final VoidCallback? onEdit;
  final String? Function(String?)? validator;
  const AccountInfoRowWidget({
    super.key,
    this.profileEntity,
    this.iconData,
    this.label,
    required this.onChanged,
    this.validator,
    this.onEdit,
  });

  @override
  State<AccountInfoRowWidget> createState() => _AccountInfoRowWidgetState();
}

class _AccountInfoRowWidgetState extends State<AccountInfoRowWidget> {
  bool enabled = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
          child: Icon(
            widget.iconData ?? Icons.error,
            size: 24.r,
            color: Theme.of(context).colorScheme.primary,
          ),
        ).asGlass(
          frosted: true,
          blurX: 18,
          blurY: 18,
          tintColor: Theme.of(
            context,
          ).colorScheme.primary.withValues(alpha: 0.9),
          clipBorderRadius: BorderRadius.circular(12.r),
          border: Theme.of(context).defaultBorderSide,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          child: CustomInputField(
            onChanged: (value) => widget.onChanged(value),
            validator: widget.validator,
            width: 200.w,
            enabled: enabled,
            fillColor: Theme.of(
              context,
            ).colorScheme.primaryContainer.withValues(alpha: 0.3),
            initialValue: widget.profileEntity ?? "",
            label: widget.label ?? "",
          ),
        ),
        SizedBox(
          width: 40.w,
          height: 40.h,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                enabled = !enabled;
              });
              if (widget.onEdit != null && enabled) {
                widget.onEdit!();
              }
            },
            style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              backgroundColor: WidgetStatePropertyAll(Colors.transparent),
              shadowColor: WidgetStatePropertyAll(Colors.transparent),
              padding: WidgetStatePropertyAll(EdgeInsets.zero),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  side: Theme.of(context).defaultBorderSide.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),
            child:
                Container(
                  width: 40.w,
                  height: 40.h,
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Icon(
                      Icons.edit_outlined,
                      size: 20.sp,
                      color: Theme.of(context).textTheme.labelLarge?.color,
                    ),
                  ),
                ).asGlass(
                  frosted: true,
                  blurX: 18,
                  blurY: 18,
                  tintColor: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.9),
                  clipBorderRadius: BorderRadius.circular(12.r),
                  border: Theme.of(context).defaultBorderSide.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
