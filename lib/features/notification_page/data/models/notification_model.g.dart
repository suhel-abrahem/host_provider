// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    _NotificationModel(
      id: json['id'] as String? ?? '',
      token: json['token'] as String? ?? '',
      isRead: json['isRead'] as bool? ?? false,
      acceptLanguage: json['acceptLanguage'] as String? ?? "",
    );

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'token': instance.token,
      'isRead': instance.isRead,
      'acceptLanguage': instance.acceptLanguage,
    };
