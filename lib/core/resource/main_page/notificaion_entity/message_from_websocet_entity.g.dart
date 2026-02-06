// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_from_websocet_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageFromWebSocketEntity _$MessageFromWebSocketEntityFromJson(
  Map<String, dynamic> json,
) => _MessageFromWebSocketEntity(
  conversation_id: (json['conversation_id'] as num?)?.toInt() ?? 0,
  booking_number: json['booking_number'] as String? ?? "",
  message: json['message'] == null
      ? const MessageEntity()
      : MessageEntity.fromJson(json['message'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MessageFromWebSocketEntityToJson(
  _MessageFromWebSocketEntity instance,
) => <String, dynamic>{
  'conversation_id': instance.conversation_id,
  'booking_number': instance.booking_number,
  'message': instance.message,
};
