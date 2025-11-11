import 'package:freezed_annotation/freezed_annotation.dart';
part 'working_hours_entity.freezed.dart';
part 'working_hours_entity.g.dart';

@freezed
abstract class WorkingHoursEntity with _$WorkingHoursEntity {
  const factory WorkingHoursEntity({
    @Default(0) int? id,
    @Default(0) int? provider_id,
    @Default(0) int? day_of_week,
    @Default("") String? day_name,
    @Default("") String? start_time,
    @Default("") String? end_time,
    @Default(false) bool? is_available,
    @Default("") String? created_at,
    @Default("") String? updated_at,
  }) = _WorkingHoursEntity;
  factory WorkingHoursEntity.fromJson(Map<String, dynamic> json) =>
      _$WorkingHoursEntityFromJson(json);
}
