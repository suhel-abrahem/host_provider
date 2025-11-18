// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomePageEntity _$HomePageEntityFromJson(
  Map<String, dynamic> json,
) => _HomePageEntity(
  today_bookings: (json['today_bookings'] as num?)?.toInt() ?? 0,
  completed_revenue: (json['completed_revenue'] as num?)?.toInt() ?? 0,
  current_month_bookings:
      (json['current_month_bookings'] as num?)?.toInt() ?? 0,
  current_month_revenue: (json['current_month_revenue'] as num?)?.toInt() ?? 0,
  in_progress_bookings: (json['in_progress_bookings'] as num?)?.toInt() ?? 0,
  pending_bookings: (json['pending_bookings'] as num?)?.toInt() ?? 0,
  yearly_stats: json['yearly_stats'] as List<dynamic>? ?? const [],
);

Map<String, dynamic> _$HomePageEntityToJson(_HomePageEntity instance) =>
    <String, dynamic>{
      'today_bookings': instance.today_bookings,
      'completed_revenue': instance.completed_revenue,
      'current_month_bookings': instance.current_month_bookings,
      'current_month_revenue': instance.current_month_revenue,
      'in_progress_bookings': instance.in_progress_bookings,
      'pending_bookings': instance.pending_bookings,
      'yearly_stats': instance.yearly_stats,
    };
