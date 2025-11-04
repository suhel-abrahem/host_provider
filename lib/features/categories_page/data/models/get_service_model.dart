import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_service_model.g.dart';
part 'get_service_model.freezed.dart';

@freezed
abstract class GetServiceModel with _$GetServiceModel {
  const factory GetServiceModel({
    @Default("") String? Authorization,
    @Default("") String? acceptLanguage,
    @Default(null) int? category_id,
    @Default(null) int? service_id,
  }) = _GetServiceModel;
  factory GetServiceModel.fromJson(Map<String, dynamic> json) =>
      _$GetServiceModelFromJson(json);
}
