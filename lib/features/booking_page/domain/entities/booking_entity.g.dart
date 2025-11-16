// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookingEntity _$BookingEntityFromJson(Map<String, dynamic> json) =>
    _BookingEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      booking_number: json['booking_number'] as String? ?? "",
      customer: json['customer'] as Map<String, dynamic>? ?? const {},
      provider: json['provider'] as Map<String, dynamic>? ?? const {},
      service: json['service'] as Map<String, dynamic>? ?? const {},
      start_time: json['start_time'] as String? ?? "",
      end_time: json['end_time'] as String? ?? "",
      actual_start_time: json['actual_start_time'] as String? ?? "",
      actual_end_time: json['actual_end_time'] as String? ?? "",
      total_price: (json['total_price'] as num?)?.toInt() ?? 0,
      base_price: (json['base_price'] as num?)?.toInt() ?? 0,
      additional_cost: (json['additional_cost'] as num?)?.toInt() ?? 0,
      additional_cost_notes: json['additional_cost_notes'] as String? ?? "",
      status: json['status'] as String? ?? "",
      notes: json['notes'] as String? ?? "",
      images: json['images'] as List<dynamic>? ?? const [],
      created_at: json['created_at'] as String? ?? "",
      updated_at: json['updated_at'] as String? ?? "",
      image: json['image'] as String? ?? "",
    );

Map<String, dynamic> _$BookingEntityToJson(_BookingEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'booking_number': instance.booking_number,
      'customer': instance.customer,
      'provider': instance.provider,
      'service': instance.service,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'actual_start_time': instance.actual_start_time,
      'actual_end_time': instance.actual_end_time,
      'total_price': instance.total_price,
      'base_price': instance.base_price,
      'additional_cost': instance.additional_cost,
      'additional_cost_notes': instance.additional_cost_notes,
      'status': instance.status,
      'notes': instance.notes,
      'images': instance.images,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'image': instance.image,
    };
