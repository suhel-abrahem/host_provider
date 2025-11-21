// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetProfileModel _$SetProfileModelFromJson(Map<String, dynamic> json) =>
    _SetProfileModel(
      name: json['name'] as String? ?? "",
      email: json['email'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      dob: json['dob'] as String? ?? "",
      avatar: const FilePathConverter().fromJson(json['avatar'] as String?),
      address: json['address'] as String? ?? "",
      city_id: (json['city_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SetProfileModelToJson(_SetProfileModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'dob': instance.dob,
      'avatar': const FilePathConverter().toJson(instance.avatar),
      'address': instance.address,
      'city_id': instance.city_id,
    };
