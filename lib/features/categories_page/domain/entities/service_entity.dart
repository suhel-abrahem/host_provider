import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    @Default("") String? price,
    @Default("") String? notes,
    @Default(false) bool? is_active,
    @Default("") String? image,
    @Default(0) int? category_id,
    @Default("") String? created_at,
    @Default("") String? updated_at,
    @Default({}) Map<String, dynamic>? category,
    @Default({}) Map<String, dynamic>? service,
  }) = _ServiceEntity;
  factory ServiceEntity.fromJson(Map<String, dynamic> json) =>
      _$ServiceEntityFromJson(json);
}
