// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketEntity _$TicketEntityFromJson(Map<String, dynamic> json) =>
    _TicketEntity(
      ticket: json['ticket'] as Map<String, dynamic>? ?? const {},
      messages:
          (json['messages'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>?)
              .toList() ??
          const [{}],
      pagination: json['pagination'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$TicketEntityToJson(_TicketEntity instance) =>
    <String, dynamic>{
      'ticket': instance.ticket,
      'messages': instance.messages,
      'pagination': instance.pagination,
    };
