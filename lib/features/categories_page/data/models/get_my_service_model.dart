import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_my_service_model.g.dart';
part 'get_my_service_model.freezed.dart';

@freezed
abstract class GetMyServiceModel with _$GetMyServiceModel {
  const factory GetMyServiceModel({
    @Default("") String? Authorization,
    @Default("") String? acceptLanguage,
  }) = _GetMyServiceModel;
  factory GetMyServiceModel.fromJson(Map<String, dynamic> json) =>
      _$GetMyServiceModelFromJson(json);
}
