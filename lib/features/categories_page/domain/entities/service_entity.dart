import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'service_entity.freezed.dart';
part 'service_entity.g.dart';

@freezed
abstract class ServiceEntity with _$ServiceEntity {
  const factory ServiceEntity({
    @Default(0) int? id,
    @Default("") String? ar_name,
    @Default("") String? en_name,
    @Default("") String? kr_name,
    @Default(false) bool? is_active,
    @Default("") String? image,
    @Default(0) int? category_id,
    @Default("") String? created_at,
    @Default("") String? updated_at,
  }) = _ServiceEntity;
  factory ServiceEntity.fromJson(Map<String, dynamic> json) =>
      _$ServiceEntityFromJson(json);
}
