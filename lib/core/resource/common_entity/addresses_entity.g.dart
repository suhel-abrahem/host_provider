// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addresses_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressesEntity _$AddressesEntityFromJson(Map<String, dynamic> json) =>
    _AddressesEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      address: json['address'] as String? ?? "",
      lat: json['lat'] as String? ?? "",
      lng: json['lng'] as String? ?? "",
    );

Map<String, dynamic> _$AddressesEntityToJson(_AddressesEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'lat': instance.lat,
      'lng': instance.lng,
    };
