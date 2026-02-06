// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignupModel _$SignupModelFromJson(Map<String, dynamic> json) => _SignupModel(
  country_id: (json['country_id'] as num?)?.toInt() ?? 0,
  lng: json['lng'] as num? ?? 0.000,
  verify_via: json['verify_via'] as String? ?? "",
  name: json['name'] as String? ?? "",
  phone: json['phone'] as String? ?? "",
  city_id: (json['city_id'] as num?)?.toInt() ?? 0,
  address: json['address'] as String? ?? "",
  role: json['role'] as String? ?? "",
  dob: json['dob'] as String? ?? "",
  avatar: const FileJsonConverter().fromJson(json['avatar'] as String?),
  password: json['password'] as String? ?? "",
  password_confirmation: json['password_confirmation'] as String? ?? "",
  email: json['email'] as String? ?? "",
  lat: json['lat'] as num? ?? 0.000,
);

Map<String, dynamic> _$SignupModelToJson(_SignupModel instance) =>
    <String, dynamic>{
      'country_id': instance.country_id,
      'lng': instance.lng,
      'verify_via': instance.verify_via,
      'name': instance.name,
      'phone': instance.phone,
      'city_id': instance.city_id,
      'address': instance.address,
      'role': instance.role,
      'dob': instance.dob,
      'avatar': const FileJsonConverter().toJson(instance.avatar),
      'password': instance.password,
      'password_confirmation': instance.password_confirmation,
      'email': instance.email,
      'lat': instance.lat,
    };
