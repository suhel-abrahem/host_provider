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
      addresses: json['addresses'] == null
          ? const AddressesEntity()
          : AddressesEntity.fromJson(json['addresses'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerEntityToJson(_CustomerEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'addresses': instance.addresses,
    };
