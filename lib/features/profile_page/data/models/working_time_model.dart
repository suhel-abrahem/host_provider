import 'package:freezed_annotation/freezed_annotation.dart';
part 'working_time_model.freezed.dart';
part 'working_time_model.g.dart';

@freezed
abstract class WorkingTimeModel with _$WorkingTimeModel {
  const factory WorkingTimeModel({
    @Default(0) int? day_of_week,
    @Default("") String? start_time,
    @Default("") String? end_time,
    @Default(false) bool? is_available,
  }) = _WorkingTimeModel;
  factory WorkingTimeModel.fromJson(Map<String, dynamic> json) =>
      _$WorkingTimeModelFromJson(json);
}
