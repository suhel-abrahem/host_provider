import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification_entity.freezed.dart';
part 'notification_entity.g.dart';

@freezed
abstract class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity({
    @Default(0) int? id,
    @Default(0) int? user_id,
    @Default('') String? type,
    @Default("") String? title,
    @Default('') String? body,
    @Default({}) Map<String, dynamic>? data,
    @Default(false) bool? is_read,
    @Default("") String? created_at,
    @Default("") String? updated_at,
    @Default("") String? read_at,
  }) = _NotificationEntity;
  factory NotificationEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationEntityFromJson(json);
}
