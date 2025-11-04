import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_category_model.g.dart';
part 'get_category_model.freezed.dart';

@freezed
abstract class GetCategoryModel with _$GetCategoryModel {
  const factory GetCategoryModel({
    @Default("") String? Authorization,
    @Default("") String? acceptLanguage,
  }) = _GetCategoryModel;
  factory GetCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$GetCategoryModelFromJson(json);
}
