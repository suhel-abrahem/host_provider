import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_page_model.freezed.dart';
part 'home_page_model.g.dart';

@freezed
abstract class HomePageModel with _$HomePageModel {
  const factory HomePageModel({
    @Default("") String? token,
    @Default("") String? acceptLanguage,
  }) = _HomePageModel;
  factory HomePageModel.fromJson(Map<String, dynamic> json) =>
      _$HomePageModelFromJson(json);
}
