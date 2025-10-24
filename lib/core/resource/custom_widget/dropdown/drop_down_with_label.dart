import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../enums/psition_enum.dart';
import '../../../util/validator/validator.dart';

class DropDownWithLabel<T> extends StatefulWidget {
  final T? value;
  final List<T?>? items;
  final String? label;
  final T? hint;
  final ValueChanged<T?> onChange;
  final String Function(T) stringConverter;
  final EdgeInsetsGeometry? labelPadding;
  final double dropDownWidth;
  final double dropDownHeight;
  final double? dropDownMinWidth;
  final double? itemWidth;
  final EdgeInsetsGeometry? contentPadding;
  final bool readOnly;
  final String? Function(T?)? validator;
  final bool isLoading;
  final Position labelPosition;
  final TextStyle? labelStyle;
  final Color? backgroundColor;
  final Animation<Color?>? loadingValueColor;
  final Color? loadingBackgroundColor;
  final BorderRadiusGeometry? borderRadius;
  const DropDownWithLabel({
    super.key,
    required this.items,
    this.label,
    this.value,
    required this.onChange,
    required this.stringConverter,
    required this.dropDownWidth,
    this.labelPadding,
    this.hint,
    this.itemWidth,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 3),
    this.validator,
    this.readOnly = false,
    this.isLoading = true,
    this.labelPosition = Position.beside,
    required this.dropDownHeight,
    this.labelStyle,
    this.backgroundColor,
    this.loadingValueColor,
    this.loadingBackgroundColor,
    this.dropDownMinWidth,
    this.borderRadius,
  });

  @override
  State<DropDownWithLabel> createState() => _DropDownWithLabelState<T>();
}

class _DropDownWithLabelState<T> extends State<DropDownWithLabel<T>> {
  late T? selectedValue = widget.value;
  ValueNotifier<bool> isShow = ValueNotifier<bool>(false);

  RichText checkForRequiredField({String? message}) {
    if (message != null && message == Validator.requiredField) {
      return RichText(
        text: TextSpan(
          text: widget.label ?? '',
          style: Theme.of(context).textTheme.labelLarge,
          children: <TextSpan>[
            TextSpan(
              text: message,
              style: Theme.of(context).inputDecorationTheme.errorStyle,
            ),
          ],
        ),
      );
    }
    if (widget.validator != null) {
      if (widget.validator!(selectedValue) == Validator.requiredField) {
        return RichText(
          text: TextSpan(
            text: widget.label ?? '',
            style: widget.labelStyle ?? Theme.of(context).textTheme.labelLarge,
            children: <TextSpan>[
              TextSpan(
                text: ' ${widget.validator!(selectedValue)}',
                style: Theme.of(context).inputDecorationTheme.errorStyle,
              ),
            ],
          ),
        );
      }
    }
    return RichText(
      text: TextSpan(
        text: widget.label ?? '',
        style: widget.labelStyle ?? Theme.of(context).textTheme.labelLarge,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FormField(
        validator: widget.validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialValue: widget.value,
        builder: (FormFieldState<T> state) {
          return widget.labelPosition == Position.beside
              ? Row(
                  children: [
                    if (widget.label != null && widget.label!.trim().isNotEmpty)
                      Padding(
                        padding:
                            widget.labelPadding ??
                            EdgeInsets.symmetric(horizontal: 12.w),
                        child: checkForRequiredField(message: state.errorText),
                      ),
                    Container(
                      height: widget.dropDownHeight,
                      decoration: BoxDecoration(
                        color: widget.backgroundColor,
                        border: Border.fromBorderSide(
                          (!state.hasError)
                              ? Theme.of(
                                  context,
                                ).inputDecorationTheme.focusedBorder!.borderSide
                              : Theme.of(
                                  context,
                                ).inputDecorationTheme.errorBorder!.borderSide,
                        ),
                        borderRadius:
                            widget.borderRadius ??
                            BorderRadius.all(Radius.circular(9.r)),
                      ),
                      child: Row(
                        key: ValueKey(widget.isLoading),
                        children: [
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 300),
                            child: widget.isLoading
                                ? Container(
                                    constraints: BoxConstraints(
                                      minWidth: widget.dropDownMinWidth ?? 40,
                                    ),
                                    width: widget.dropDownWidth,
                                    child: LinearProgressIndicator(
                                      valueColor: widget.loadingValueColor,
                                      backgroundColor:
                                          widget.loadingBackgroundColor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5.r),
                                      ),
                                      minHeight: 5.h,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                    ),
                                  )
                                : _customDropDown(state: state),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.label != null && widget.label!.trim().isNotEmpty)
                      Padding(
                        padding:
                            widget.labelPadding ??
                            EdgeInsets.symmetric(vertical: 8.h),
                        child: checkForRequiredField(message: state.errorText),
                      ),
                    Container(
                      decoration: BoxDecoration(
                        color: widget.backgroundColor,
                        border: Border.fromBorderSide(
                          (!state.hasError)
                              ? Theme.of(
                                  context,
                                ).inputDecorationTheme.focusedBorder!.borderSide
                              : Theme.of(
                                  context,
                                ).inputDecorationTheme.errorBorder!.borderSide,
                        ),
                        borderRadius:
                            widget.borderRadius ??
                            BorderRadius.all(Radius.circular(9.r)),
                      ),
                      height: widget.dropDownHeight,
                      child: Container(
                        constraints: BoxConstraints(
                          minWidth: widget.dropDownMinWidth ?? 40,
                        ),
                        width: widget.dropDownWidth,
                        child: Row(
                          key: ValueKey(widget.isLoading),
                          children: [
                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 300),
                              child: widget.isLoading
                                  ? SizedBox(
                                      width: widget.dropDownWidth,
                                      child: LinearProgressIndicator(
                                        valueColor: widget.loadingValueColor,
                                        backgroundColor:
                                            widget.loadingBackgroundColor,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.r),
                                        ),
                                        minHeight: 5.h,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.primary,
                                      ),
                                    )
                                  : _customDropDown(state: state),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }

  Widget _customDropDown({required FormFieldState<T> state}) {
    return Container(
      constraints: BoxConstraints(minWidth: widget.dropDownMinWidth ?? 40),
      width: widget.dropDownWidth,
      child: DropdownButton2(
        underline: const SizedBox(),
        customButton: Container(
          constraints: BoxConstraints(
            minWidth: ((widget.dropDownMinWidth ?? 40) * 0.95),
          ),
          width: widget.dropDownWidth,
          height: widget.dropDownHeight,
          child: Padding(
            padding: widget.contentPadding ?? EdgeInsets.zero,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (selectedValue != null || widget.hint != null)
                  Expanded(
                    flex: 6,
                    child: Tooltip(
                      message: widget.stringConverter.call(
                        selectedValue ?? widget.hint as T,
                      ),
                      waitDuration: const Duration(milliseconds: 500),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: selectedValue != null
                            ? Text(
                                widget.stringConverter.call(selectedValue as T),
                                style: Theme.of(context).textTheme.labelLarge,
                                textAlign: TextAlign.start,
                              )
                            : Text(
                                widget.hint != null
                                    ? widget.stringConverter(widget.hint as T)
                                    : '',
                                style: Theme.of(
                                  context,
                                ).inputDecorationTheme.hintStyle,
                                textAlign: TextAlign.start,
                              ),
                      ),
                    ),
                  ),
                const Expanded(flex: 2, child: SizedBox()),
                if (!widget.readOnly)
                  Expanded(
                    flex: 2,
                    child: ValueListenableBuilder<bool>(
                      key: ValueKey(isShow),
                      valueListenable: isShow,
                      builder: (context, value, _) {
                        return AnimatedRotation(
                          duration: const Duration(milliseconds: 300),
                          turns: value ? 0.5 : 0,
                          child: const FittedBox(
                            fit: BoxFit.contain,
                            child: Icon(Icons.keyboard_arrow_down_rounded),
                          ),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
        dropdownStyleData: DropdownStyleData(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(9.r)),
          useSafeArea: true,
          isOverButton: false,
          maxHeight: 130.h,
          useRootNavigator: true,
        ),
        value: selectedValue,
        onChanged: (value) {
          if (widget.readOnly) {
            return;
          }
          setState(() {
            selectedValue = value;
          });
          state.didChange(value);
          widget.onChange(value);
        },
        items: (widget.items ?? [])
            .map(
              (element) => DropdownMenuItem<T>(
                value: element,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    widget.stringConverter.call(element as T),
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ),
            )
            .toList(),
        onMenuStateChange: (isOpen) {
          setState(() {
            isShow.value = isOpen;
          });
        },
      ),
    );
  }
}
