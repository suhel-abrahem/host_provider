// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/chat/domain/entities/message/message_entity.dart';
part 'message_from_websocet_entity.freezed.dart';
part 'message_from_websocet_entity.g.dart';

@freezed
abstract class MessageFromWebSocketEntity with _$MessageFromWebSocketEntity {
  const factory MessageFromWebSocketEntity({
    @Default(0) int? conversation_id,
    @Default("") String booking_number,
    @Default(MessageEntity()) MessageEntity? message,
  }) = _MessageFromWebSocketEntity;

  factory MessageFromWebSocketEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageFromWebSocketEntityFromJson(json);
}
