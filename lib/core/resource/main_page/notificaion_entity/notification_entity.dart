import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification_entity.freezed.dart';
part 'notification_entity.g.dart';

@freezed
abstract class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity({
    @Default(0) int? id,
    @Default("") String title,
    @Default("") String body,
    @Default("") String type,
    @Default({}) Map<String, dynamic>? data,
  }) = _NotificationEntity;

  factory NotificationEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationEntityFromJson(json);
}
