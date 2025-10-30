// ignore_for_file: non_constant_identifier_names

import 'dart:io';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hosta_provider/features/signup_page/data/models/uint8list_json_converter.dart';
part 'signup_model.freezed.dart';
part 'signup_model.g.dart';

@freezed
abstract class SignupModel with _$SignupModel {
  factory SignupModel({
    @Default("") String? country_id,
    @Default("") String? lng,
    @Default("") String? verify_via,
    @Default("") String? name,
    @Default("") String? phone,
    @Default("") String? city_id,
    @Default("") String? address,
    @Default("") String? role,
    @Default("") String? dop,
    @Uint8listJsonConverter() @Default([]) List<int>? avatar,
    @Default("") String? password,
    @Default("") String? password_confirmation,
    @Default("") String? email,
    @Default("") String? lat,
  }) = _SignupModel;
  factory SignupModel.fromJson(Map<String, dynamic> json) =>
      _$SignupModelFromJson(json);
}
