// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileEntity _$ProfileEntityFromJson(Map<String, dynamic> json) =>
    _ProfileEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      email: json['email'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      dob: json['dob'] as String? ?? "",
      avatar: json['avatar'] as String? ?? "",
      addresses: json['addresses'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$ProfileEntityToJson(_ProfileEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'dob': instance.dob,
      'avatar': instance.avatar,
      'addresses': instance.addresses,
    };
