// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import '/features/chat/domain/entities/message/message_entity.dart';
part 'message_notification_entity.freezed.dart';
part 'message_notification_entity.g.dart';

@freezed
abstract class MessageNotificationEntity with _$MessageNotificationEntity {
  const factory MessageNotificationEntity({
    @Default(0) int? conversation_id,

    @Default("") String booking_number,
    @Default(MessageEntity()) MessageEntity? message,
  }) = _MessageNotificationEntity;

  factory MessageNotificationEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageNotificationEntityFromJson(json);
}
