import 'package:freezed_annotation/freezed_annotation.dart';
import 'service_model.dart';

part 'set_service_model.g.dart';
part 'set_service_model.freezed.dart';

@freezed
abstract class SetServiceModel with _$SetServiceModel {
  const factory SetServiceModel({
    @Default(ServiceModel()) ServiceModel? serviceModel,
    @Default("") String? acceptedLanguage,
    @Default("") String? authorization,
  }) = _SetServiceModel;
  factory SetServiceModel.fromJson(Map<String, dynamic> json) =>
      _$SetServiceModelFromJson(json);
}
