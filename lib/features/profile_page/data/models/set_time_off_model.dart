import 'package:freezed_annotation/freezed_annotation.dart';
part 'set_time_off_model.freezed.dart';
part 'set_time_off_model.g.dart';

@freezed
abstract class SetTimeOffModel with _$SetTimeOffModel {
  const factory SetTimeOffModel({
    @Default(0) int? provider_id,
    @Default("") String? date,
    @Default("") String? reason,
    @Default(false) bool? is_full_day,
    @Default("") String? start_time,
    @Default("") String? end_time,
  }) = _SetTimeOffModel;
  factory SetTimeOffModel.fromJson(Map<String, dynamic> json) =>
      _$SetTimeOffModelFromJson(json);
}
