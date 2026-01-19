// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_ticket_model.freezed.dart';
part 'create_ticket_model.g.dart';

@freezed
abstract class CreateTicketModel with _$CreateTicketModel {
  const factory CreateTicketModel({
    @Default("") String? subject,
    @Default("") String? category,
    @Default("") String? priority,
    @Default("") String? initial_message,
    @Default("") String? accepted_language,
    @Default("") String? token,
  }) = _CreateTicketModel;

  factory CreateTicketModel.fromJson(Map<String, dynamic> json) =>
      _$CreateTicketModelFromJson(json);
}
