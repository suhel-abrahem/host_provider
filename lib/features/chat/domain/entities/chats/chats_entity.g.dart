// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatsEntity _$ChatsEntityFromJson(Map<String, dynamic> json) => _ChatsEntity(
  id: (json['id'] as num?)?.toInt() ?? 0,
  booking_id: (json['booking_id'] as num?)?.toInt() ?? 0,
  booking_number: json['booking_number'] as String? ?? "",
  booking_status: json['booking_status'] as String? ?? "",
  service_name: json['service_name'] as String? ?? "",
  other_participant:
      json['other_participant'] as Map<String, dynamic>? ?? const {},
  last_message: json['last_message'] as Map<String, dynamic>? ?? const {},
  last_message_at: json['last_message_at'] as String? ?? "",
  unread_count: (json['unread_count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$ChatsEntityToJson(_ChatsEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'booking_id': instance.booking_id,
      'booking_number': instance.booking_number,
      'booking_status': instance.booking_status,
      'service_name': instance.service_name,
      'other_participant': instance.other_participant,
      'last_message': instance.last_message,
      'last_message_at': instance.last_message_at,
      'unread_count': instance.unread_count,
    };
