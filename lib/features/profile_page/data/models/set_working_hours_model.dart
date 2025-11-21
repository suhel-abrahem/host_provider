import 'package:freezed_annotation/freezed_annotation.dart';
import 'working_time_model.dart';

part 'set_working_hours_model.freezed.dart';
part 'set_working_hours_model.g.dart';

@freezed
abstract class SetWorkingHoursModel with _$SetWorkingHoursModel {
  const factory SetWorkingHoursModel({
    @Default([]) List<WorkingTimeModel?>? workingTime,

    @Default("") String? authToken,

    @Default("") String? acceptLanguage,
  }) = _SetWorkingHoursModel;
  factory SetWorkingHoursModel.fromJson(Map<String, dynamic> json) =>
      _$SetWorkingHoursModelFromJson(json);
}
