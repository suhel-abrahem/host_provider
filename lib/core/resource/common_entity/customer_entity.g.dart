// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerEntity _$CustomerEntityFromJson(Map<String, dynamic> json) =>
    _CustomerEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      email: json['email'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      addresses:
          (json['addresses'] as List<dynamic>?)
              ?.map((e) => AddressesEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      avatar: json['avatar'] as String? ?? "",
    );

Map<String, dynamic> _$CustomerEntityToJson(_CustomerEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'addresses': instance.addresses,
      'avatar': instance.avatar,
    };
