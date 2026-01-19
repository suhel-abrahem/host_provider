import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/font_constants.dart';
import '../../../enums/psition_enum.dart';
import '../../../util/helper/helper.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final String? initialValue;
  final String? hintText;
  final bool isRequired;
  final double? width;
  final double? height;
  final TextInputType? textInputType;
  final Widget? suffix;
  final Widget? prefix;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final ValueChanged? onChanged;
  final ValueChanged? onSubmitted;

  final VoidCallback? onTap;
  final ValueChanged? onTapOut;
  final String? Function(String?)? validator;
  final TextAlign? textAlign;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? suffixPadding;
  final EdgeInsetsGeometry? prefixPadding;
  final bool? haveOuterLabel;
  final String? outerLabel;
  final Position? outerLabelPosition;
  final EdgeInsetsGeometry? outerLabelPadding;
  final int? maxLength;
  final int? maxLines;
  final Color? fillColor;
  final bool? filled;
  final TextStyle? style;
  final BorderRadius? borderRadius;
  final bool? readOnly;
  final bool? enabled;
  final int? minLines;
  final Function(String?)? onSaved;
  const CustomInputField({
    super.key,
    this.controller,
    this.label = '',
    this.isRequired = true,
    this.width,
    this.height,
    this.textInputType,
    this.suffix,
    this.prefix,
    this.textInputAction,
    this.obscureText = false,
    this.onChanged,
    this.onSubmitted,
    this.validator,
    this.initialValue,
    this.textAlign,
    this.contentPadding,
    this.suffixPadding,
    this.prefixPadding,
    this.haveOuterLabel = false,
    this.outerLabel = '',
    this.outerLabelPosition = Position.upper,
    this.outerLabelPadding,
    this.maxLength,
    this.maxLines,
    this.onTap,
    this.onTapOut,
    this.fillColor,
    this.filled,
    this.style,
    this.borderRadius,
    this.readOnly,
    this.onSaved,
    this.enabled,
    this.hintText,
    this.minLines,
  });

  @override
  Widget build(BuildContext context) {
    var field = SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        onSaved: onSaved,
        textAlignVertical: TextAlignVertical.center,
        style:
            style ??
            Theme.of(context).textTheme.labelLarge?.copyWith(
              fontFamily: FontConstants.fontFamily(context.locale),
            ),
        enabled: enabled,
        maxLines: maxLines ?? 1,
        minLines: minLines,
        maxLength: maxLength,
        controller: controller,
        initialValue: initialValue,

        obscureText: obscureText,
        onChanged: onChanged,
        onTapOutside: onTapOut,
        onTap: onTap,
        onFieldSubmitted: onSubmitted,
        validator: validator,
        textAlign: textAlign ?? TextAlign.start,
        readOnly: readOnly ?? false,
        decoration: InputDecoration(
          hint: (hintText != null)
              ? Text(
                  hintText ?? "",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                  ),
                )
              : null,
          fillColor: fillColor ?? Theme.of(context).scaffoldBackgroundColor,
          filled: filled,
          contentPadding:
              contentPadding ??
              EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          label: Helper.labelText(
            label: label,
            isRequired: isRequired,
            context: context,
          ),
          suffixIcon: suffix != null
              ? Padding(
                  padding:
                      suffixPadding ??
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                  child: suffix,
                )
              : null,
          prefixIcon: prefix != null
              ? Padding(
                  padding:
                      prefixPadding ??
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                  child: prefix,
                )
              : null,
          prefixIconConstraints: const BoxConstraints(
            minHeight: 0.0,
            minWidth: 0.0,
          ),
          suffixIconConstraints: const BoxConstraints(
            minHeight: 0.0,
            minWidth: 0.0,
          ),
          constraints: BoxConstraints(
            minHeight: height ?? 0.h,
            minWidth: width ?? 0.w,
          ),
        ),
        keyboardType: textInputType,
        textInputAction: textInputAction,
      ),
    );
    return (haveOuterLabel ?? false)
        ? outerLabelPosition == Position.upper
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: outerLabelPadding ?? EdgeInsets.zero,
                      child: Helper.labelText(
                        label: outerLabel ?? '',
                        isRequired: isRequired,
                        context: context,
                      ),
                    ),
                    field,
                  ],
                )
              : Row(
                  children: [
                    Padding(
                      padding: outerLabelPadding ?? EdgeInsets.zero,
                      child: Helper.labelText(
                        context: context,
                        label: outerLabel ?? '',
                        isRequired: isRequired,
                      ),
                    ),
                    field,
                  ],
                )
        : field;
  }
}
