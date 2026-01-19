// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import '/core/resource/json_converter/file_list_json_converter.dart';
part 'send_ticket_message_model.freezed.dart';
part 'send_ticket_message_model.g.dart';

@freezed
abstract class SendTicketMessageModel with _$SendTicketMessageModel {
  factory SendTicketMessageModel({
    @Default('') String? token,
    @Default('') String? message_type,
    @Default(0) int? ticketId,
    @Default('') String? content,
    @FileListJsonConverter() @Default([]) List<File?>? files,
  }) = _SendTicketMessageModel;

  factory SendTicketMessageModel.fromJson(Map<String, dynamic> json) =>
      _$SendTicketMessageModelFromJson(json);
}
