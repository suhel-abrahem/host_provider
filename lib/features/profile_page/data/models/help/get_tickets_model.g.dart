// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_tickets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetTicketsModel _$GetTicketsModelFromJson(Map<String, dynamic> json) =>
    _GetTicketsModel(
      token: json['token'] as String? ?? "",
      accepted_language: json['accepted_language'] as String? ?? "",
      status: json['status'] as String? ?? "",
      id: json['id'] as String? ?? "",
    );

Map<String, dynamic> _$GetTicketsModelToJson(_GetTicketsModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'accepted_language': instance.accepted_language,
      'status': instance.status,
      'id': instance.id,
    };
