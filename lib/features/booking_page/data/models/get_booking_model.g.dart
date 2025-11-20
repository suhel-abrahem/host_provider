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
    );

Map<String, dynamic> _$GetBookingModelToJson(_GetBookingModel instance) =>
    <String, dynamic>{
      'auth': instance.auth,
      'reason': instance.reason,
      'acceptLanguage': instance.acceptLanguage,
      'status': instance.status,
      'id': instance.id,
    };
