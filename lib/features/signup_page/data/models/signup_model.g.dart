// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignupModel _$SignupModelFromJson(Map<String, dynamic> json) => _SignupModel(
  country_id: json['country_id'] as String? ?? "",
  lng: json['lng'] as String? ?? "",
  verify_via: json['verify_via'] as String? ?? "",
  name: json['name'] as String? ?? "",
  phone: json['phone'] as String? ?? "",
  city_id: json['city_id'] as String? ?? "",
  address: json['address'] as String? ?? "",
  role: json['role'] as String? ?? "",
  dop: json['dop'] as String? ?? "",
  avatar:
      (json['avatar'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
  password: json['password'] as String? ?? "",
  password_confirmation: json['password_confirmation'] as String? ?? "",
  email: json['email'] as String? ?? "",
  lat: json['lat'] as String? ?? "",
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
      'dop': instance.dop,
      'avatar': instance.avatar,
      'password': instance.password,
      'password_confirmation': instance.password_confirmation,
      'email': instance.email,
      'lat': instance.lat,
    };
