import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/resource/custom_widget/custom_input_field/custom_input_field.dart';
import '../../../../core/util/helper/helper.dart';
import '../../data/models/working_time_model.dart';
import '../../domain/entities/working_hours_entity.dart';

import '../../../../generated/locale_keys.g.dart';

class DayContainerWidget extends StatefulWidget {
  final WorkingHoursEntity? workingHoursEntity;
  final bool? canEdit;
  final ValueChanged<WorkingTimeModel?>? onChanged;

  const DayContainerWidget({
    super.key,
    this.workingHoursEntity,
    this.canEdit,
    this.onChanged,
  });

  @override
  State<DayContainerWidget> createState() => _DayContainerWidgetState();
}

class _DayContainerWidgetState extends State<DayContainerWidget> {
  late WorkingTimeModel workingHoursModel;

  @override
  void initState() {
    super.initState();
    final entity = widget.workingHoursEntity;
    workingHoursModel = WorkingTimeModel(
      day_of_week: entity?.day_of_week,
      is_available: entity?.is_available,
      start_time: entity?.start_time,
      end_time: entity?.end_time,
    );
  }

  @override
  Widget build(BuildContext context) {
    final canEdit = widget.canEdit ?? false;
    final theme = Theme.of(context);
    final locale = context.locale;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Helper.getDayById(widget.workingHoursEntity?.day_of_week)?.tr() ?? '',
          style: theme.textTheme.labelSmall?.copyWith(
            fontFamily: FontConstants.fontFamily(locale),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: canEdit ? 100.h : 58.h,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (canEdit)
                Row(
                  children: [
                    Text(
                      LocaleKeys.profilePage_dayOff.tr(),
                      style: theme.textTheme.labelMedium?.copyWith(
                        fontFamily: FontConstants.fontFamily(locale),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 8.w),
                      child: Switch(
                        value: !(workingHoursModel.is_available ?? false),
                        onChanged: (value) => setState(() {
                          workingHoursModel = workingHoursModel.copyWith(
                            is_available: !value,
                          );
                          if (widget.onChanged != null) {
                            widget.onChanged!(workingHoursModel);
                          }
                        }),
                      ),
                    ),
                  ],
                ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 400),
                child: (workingHoursModel.is_available ?? false)
                    ? Row(
                        key: ValueKey(
                          'available_${workingHoursModel.day_of_week}',
                        ),
                        children: [
                          _buildTimeField(
                            context,
                            workingHoursModel.start_time,
                            locale,
                            (value) {
                              if (widget.onChanged != null) {
                                widget.onChanged!(workingHoursModel);
                              }
                            },
                          ),
                          Text(
                            ' - ',
                            style: theme.textTheme.labelLarge?.copyWith(
                              fontFamily: FontConstants.fontFamily(locale),
                            ),
                          ),
                          _buildTimeField(
                            context,
                            workingHoursModel.end_time,
                            locale,
                            (value) {
                              if (widget.onChanged != null) {
                                widget.onChanged!(workingHoursModel);
                              }
                            },
                          ),
                        ],
                      )
                    : Center(
                        key: ValueKey(
                          'dayoff_${workingHoursModel.day_of_week}',
                        ),
                        child: Text(
                          LocaleKeys.profilePage_dayOff.tr(),
                          style: theme.textTheme.labelMedium?.copyWith(
                            fontFamily: FontConstants.fontFamily(locale),
                            color: theme.colorScheme.error,
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ).asGlass(
          frosted: true,
          blurX: 58,
          blurY: 58,
          tintColor: theme.colorScheme.primary.withValues(alpha: 0.9),
          clipBorderRadius: BorderRadius.circular(12.r),
          border: theme.defaultBorderSide,
        ),
      ],
    );
  }

  Widget _buildTimeField(
    BuildContext context,
    String? time,
    Locale locale,
    Function(dynamic)? onChanged,
  ) {
    final theme = Theme.of(context);
    String formattedTime = '';

    if (time?.isNotEmpty ?? false) {
      try {
        formattedTime = DateFormat(
          'HH:mm',
        ).format(DateFormat('HH:mm').parse(time!));
      } catch (_) {}
    }

    return CustomInputField(
      width: 62.w,
      height: 25.h,
      style: theme.textTheme.labelSmall?.copyWith(
        fontFamily: FontConstants.fontFamily(locale),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 4.w),
      initialValue: formattedTime,
      onChanged: onChanged,
    );
  }
}
