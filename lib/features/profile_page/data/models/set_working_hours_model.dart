import 'package:freezed_annotation/freezed_annotation.dart';
part 'set_working_hours_model.freezed.dart';
part 'set_working_hours_model.g.dart';

@freezed
abstract class SetWorkingHoursModel with _$SetWorkingHoursModel {
  const factory SetWorkingHoursModel({
    @Default(0) int? provider_id,
    @Default(0) int? day_of_week,
    @Default("") String? start_time,
    @Default("") String? end_time,
    @Default(false) bool? is_available,
  }) = _SetWorkingHoursModel;
  factory SetWorkingHoursModel.fromJson(Map<String, dynamic> json) =>
      _$SetWorkingHoursModelFromJson(json);
}
