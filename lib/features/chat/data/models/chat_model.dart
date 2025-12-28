// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/resource/json_converter/file_list_json_converter.dart';
part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
abstract class ChatModel with _$ChatModel {
  const factory ChatModel({
    @Default("") String? acceptLanguage,
    @Default("") String? authToken,
    @Default(0) int? id,
    @Default("") String? content,
    @Default("") String? message_type,
    @FileListJsonConverter() List<File?>? attachments,
    @Default(false) bool? is_typing,
  }) = _ChatModel;
  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
