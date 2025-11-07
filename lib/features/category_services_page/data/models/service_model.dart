import 'package:freezed_annotation/freezed_annotation.dart';
part 'service_model.g.dart';
part 'service_model.freezed.dart';

@freezed
abstract class ServiceModel with _$ServiceModel {
  const factory ServiceModel({
    @Default(0) int? service_id,
    @Default(0) int? id,
    @Default(false) bool? is_active,

    @Default(0) int? price,
    @Default("") String? notes,
    @Default("") String? duration_minutes,
    @Default("") String? buffer_minutes,
  }) = _ServiceModel;
  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}
