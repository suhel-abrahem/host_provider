// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConversationEntity _$ConversationEntityFromJson(Map<String, dynamic> json) =>
    _ConversationEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      booking_id: (json['booking_id'] as num?)?.toInt() ?? 0,
      booking_number: json['booking_number'] as String? ?? "",
    );

Map<String, dynamic> _$ConversationEntityToJson(_ConversationEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'booking_id': instance.booking_id,
      'booking_number': instance.booking_number,
    };
