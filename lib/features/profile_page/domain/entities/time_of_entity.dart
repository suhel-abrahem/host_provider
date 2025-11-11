import 'package:freezed_annotation/freezed_annotation.dart';
part 'time_of_entity.freezed.dart';
part 'time_of_entity.g.dart';

@freezed
abstract class TimeOfEntity with _$TimeOfEntity {
  const factory TimeOfEntity({
    @Default(0) int? id,
    @Default(0) int? provider_id,
    @Default("") String? date,
    @Default("") String? reason,
    @Default("") String? start_time,
    @Default("") String? end_time,
    @Default(false) bool? is_full_day,
    @Default("") String? created_at,
    @Default("") String? updated_at,
  }) = _TimeOfEntity;
  factory TimeOfEntity.fromJson(Map<String, dynamic> json) =>
      _$TimeOfEntityFromJson(json);
}
