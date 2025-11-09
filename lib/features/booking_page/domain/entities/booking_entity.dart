import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hosta_provider/core/resource/common_entity/customer_entity.dart';
import 'package:hosta_provider/core/resource/common_entity/provider_entity.dart';
import 'package:hosta_provider/core/resource/common_entity/service_entity.dart';
part 'booking_entity.freezed.dart';
part 'booking_entity.g.dart';

@freezed
abstract class BookingEntity with _$BookingEntity {
  const factory BookingEntity({
    @Default(0) int? id,
    @Default("") String? booking_number,
    @Default({}) Map<String, dynamic>? customer,
    @Default({}) Map<String, dynamic>? provider,
    @Default({}) Map<String, dynamic>? service,
    @Default("") String? start_time,
    @Default("") String? end_time,
    @Default("") String? actual_start_time,
    @Default("") String? actual_end_time,
    @Default(0) int? total_price,
    @Default(0) int? base_price,
    @Default(0) int? additional_cost,
    @Default("") String? additional_cost_notes,
    @Default("") String? status,
    @Default("") String? notes,
    @Default([]) List? images,
    @Default("") String? created_at,
    @Default("") String? updated_at,
  }) = _BookingEntity;
  factory BookingEntity.fromJson(Map<String, dynamic> json) =>
      _$BookingEntityFromJson(json);
}
