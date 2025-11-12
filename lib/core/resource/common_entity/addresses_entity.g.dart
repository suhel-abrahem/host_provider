// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addresses_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressesEntity _$AddressesEntityFromJson(Map<String, dynamic> json) =>
    _AddressesEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      address: json['address'] as String? ?? "",
      city: json['city'] as Map<String, dynamic>? ?? const {},
      country: json['country'] as Map<String, dynamic>? ?? const {},
      lat: json['lat'] as String? ?? "",
      lng: json['lng'] as String? ?? "",
    );

Map<String, dynamic> _$AddressesEntityToJson(_AddressesEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'city': instance.city,
      'country': instance.country,
      'lat': instance.lat,
      'lng': instance.lng,
    };
