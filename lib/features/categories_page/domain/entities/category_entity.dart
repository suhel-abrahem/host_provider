import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_entity.freezed.dart';
part 'category_entity.g.dart';

@freezed
abstract class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    @Default(0) int? id,
    @Default(0) int? services_count,
    @Default("") String? name,

    @Default(false) bool? is_active,
    @Default("") String? icon,
    @Default(0) int? category_id,
    @Default("") String? created_at,
    @Default("") String? updated_at,
  }) = _CategoryEntity;
  factory CategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoryEntityFromJson(json);
}
