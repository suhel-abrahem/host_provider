import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hosta_provider/core/resource/common_entity/service_error_entity.dart';
import 'package:hosta_provider/features/signup_page/data/models/uint8list_json_converter.dart';
part 'service_entity.freezed.dart';
part 'service_entity.g.dart';

@freezed
abstract class ServiceEntity with _$ServiceEntity {
  const factory ServiceEntity({
    @Default(0) int? id,
    @Default(0) int? user_id,
    @Default(0) int? service_id,
    @Default("") String? name,
    @Default("") String? acceptedLanguage,
    @Default(0) int? price,
    @Default("") String? notes,
    @Default(false) bool? is_active,
    @Default("") String? image,
    @Default(0) int? category_id,
    @Default("") String? created_at,
    @Default("") String? updated_at,
    @Default(ServiceErrorEntity()) ServiceErrorEntity? serviceErrorEntity,
    @Default({}) Map<String, dynamic>? category,
    @Default({}) Map<String, dynamic>? service,
    @Default({}) Map<String, dynamic>? provider,
    @Default(0) int? duration_minutes,
    @Default(0) int? buffer_minutes,
  }) = _ServiceEntity;
  factory ServiceEntity.fromJson(Map<String, dynamic> json) =>
      _$ServiceEntityFromJson(json);
}
