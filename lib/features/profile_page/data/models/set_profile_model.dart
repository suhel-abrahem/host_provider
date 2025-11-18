import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hosta_provider/features/profile_page/data/models/file_json_converter.dart'
    show FilePathConverter;
import 'package:hosta_provider/features/profile_page/data/models/profile_model.dart';
part 'set_profile_model.freezed.dart';
part 'set_profile_model.g.dart';

@freezed
abstract class SetProfileModel with _$SetProfileModel {
  const factory SetProfileModel({
    @Default("") String? name,
    @Default("") String? email,
    @Default("") String? phone,
    @Default("") String? dob,
    @FilePathConverter() File? avatar,
    @Default("") String? address,
    @Default(null) int? city_id,
  }) = _SetProfileModel;
  factory SetProfileModel.fromJson(Map<String, dynamic> json) =>
      _$SetProfileModelFromJson(json);
}
