import 'package:freezed_annotation/freezed_annotation.dart';
import 'set_profile_model.dart';
part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @Default("") String? acceptLanguage,
    @Default("") String? authToken,
    @Default("") String? id,
    @Default("") String? password,
    @Default(SetProfileModel()) SetProfileModel? profile,
  }) = _ProfileModel;
  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
