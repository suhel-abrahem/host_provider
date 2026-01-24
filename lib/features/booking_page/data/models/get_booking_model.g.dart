// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetBookingModel _$GetBookingModelFromJson(Map<String, dynamic> json) =>
    _GetBookingModel(
      auth: json['auth'] as String? ?? "",
      reason: json['reason'] as String? ?? "",
      acceptLanguage: json['acceptLanguage'] as String? ?? "",
      status: json['status'] as String? ?? "",
      id: json['id'] as String? ?? "",
      additional_cost: (json['additional_cost'] as num?)?.toDouble() ?? 0.0,
      additional_cost_notes: json['additional_cost_notes'] as String? ?? "",
    );

Map<String, dynamic> _$GetBookingModelToJson(_GetBookingModel instance) =>
    <String, dynamic>{
      'auth': instance.auth,
      'reason': instance.reason,
      'acceptLanguage': instance.acceptLanguage,
      'status': instance.status,
      'id': instance.id,
      'additional_cost': instance.additional_cost,
      'additional_cost_notes': instance.additional_cost_notes,
    };
