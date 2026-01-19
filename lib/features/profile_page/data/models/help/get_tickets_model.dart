// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_tickets_model.freezed.dart';
part 'get_tickets_model.g.dart';

@freezed
abstract class GetTicketsModel with _$GetTicketsModel {
  const factory GetTicketsModel({
    @Default("") String? token,
    @Default("") String? accepted_language,
    @Default("") String? status,
    @Default("") String? id,
  }) = _GetTicketsModel;

  factory GetTicketsModel.fromJson(Map<String, dynamic> json) =>
      _$GetTicketsModelFromJson(json);
}
