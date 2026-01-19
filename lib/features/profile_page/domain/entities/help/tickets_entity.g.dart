// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketsEntity _$TicketsEntityFromJson(Map<String, dynamic> json) =>
    _TicketsEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      ticket_number: json['ticket_number'] as String? ?? "",
      subject: json['subject'] as String? ?? "",
      category: json['category'] as String? ?? "",
      priority: json['priority'] as String? ?? "",
      user: json['user'] as Map<String, dynamic>? ?? const {},
      assigned_admin:
          json['assigned_admin'] as Map<String, dynamic>? ?? const {},
      last_message: json['last_message'] as Map<String, dynamic>? ?? const {},
      unread_count: (json['unread_count'] as num?)?.toInt() ?? 0,
      last_message_at: json['last_message_at'] as String? ?? "",
      created_at: json['created_at'] as String? ?? "",
      closed_at: json['closed_at'] as String? ?? "",
    );

Map<String, dynamic> _$TicketsEntityToJson(_TicketsEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ticket_number': instance.ticket_number,
      'subject': instance.subject,
      'category': instance.category,
      'priority': instance.priority,
      'user': instance.user,
      'assigned_admin': instance.assigned_admin,
      'last_message': instance.last_message,
      'unread_count': instance.unread_count,
      'last_message_at': instance.last_message_at,
      'created_at': instance.created_at,
      'closed_at': instance.closed_at,
    };
