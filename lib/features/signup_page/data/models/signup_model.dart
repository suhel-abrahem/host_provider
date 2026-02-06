// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/resource/json_converter/file_json_converter.dart';

part 'signup_model.freezed.dart';
part 'signup_model.g.dart';

@freezed
abstract class SignupModel with _$SignupModel {
  factory SignupModel({
    @Default(0) int? country_id,
    @Default(0.000) num? lng,
    @Default("") String? verify_via,
    @Default("") String? name,
    @Default("") String? phone,
    @Default(0) int? city_id,
    @Default("") String? address,
    @Default("") String? role,
    @Default("") String? dob,
    @FileJsonConverter() File? avatar,
    @Default("") String? password,
    @Default("") String? password_confirmation,
    @Default("") String? email,
    @Default(0.000) num? lat,
  }) = _SignupModel;
  factory SignupModel.fromJson(Map<String, dynamic> json) =>
      _$SignupModelFromJson(json);
}
