// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateTicketModel _$CreateTicketModelFromJson(Map<String, dynamic> json) =>
    _CreateTicketModel(
      subject: json['subject'] as String? ?? "",
      category: json['category'] as String? ?? "",
      priority: json['priority'] as String? ?? "",
      initial_message: json['initial_message'] as String? ?? "",
      accepted_language: json['accepted_language'] as String? ?? "",
      token: json['token'] as String? ?? "",
    );

Map<String, dynamic> _$CreateTicketModelToJson(_CreateTicketModel instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'category': instance.category,
      'priority': instance.priority,
      'initial_message': instance.initial_message,
      'accepted_language': instance.accepted_language,
      'token': instance.token,
    };
