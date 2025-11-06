import 'package:freezed_annotation/freezed_annotation.dart';
part 'service_error_entity.g.dart';
part 'service_error_entity.freezed.dart';

@freezed
abstract class ServiceErrorEntity with _$ServiceErrorEntity {
  const factory ServiceErrorEntity({
    @Default([]) List? service_id,
    @Default([]) List? price,
    @Default([]) List? is_active,
  }) = _ServiceErrorEntity;
  factory ServiceErrorEntity.fromJson(Map<String, dynamic> json) =>
      _$ServiceErrorEntityFromJson(json);
}
