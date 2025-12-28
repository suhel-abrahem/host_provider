// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatEntity _$ChatEntityFromJson(Map<String, dynamic> json) => _ChatEntity(
  conversation: json['conversation'] as Map<String, dynamic>? ?? const {},
  messages:
      (json['messages'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const [],
  pagination: json['pagination'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$ChatEntityToJson(_ChatEntity instance) =>
    <String, dynamic>{
      'conversation': instance.conversation,
      'messages': instance.messages,
      'pagination': instance.pagination,
    };
