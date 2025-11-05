import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_service_model.g.dart';
part 'set_service_model.freezed.dart';

@freezed
abstract class SetServiceModel with _$SetServiceModel {
  const factory SetServiceModel({
    @Default(0) int? service_id,
    @Default("") String? name,
    @Default("") String? price,
    @Default("") String? notes,
    @Default("") String? duration_minutes,
    @Default("") String? buffer_minutes,
  }) = _SetServiceModel;
  factory SetServiceModel.fromJson(Map<String, dynamic> json) =>
      _$SetServiceModelFromJson(json);
}
