// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import '/core/enums/uploading_state_enum.dart';

import '../../../../../core/resource/json_converter/file_list_json_converter.dart';
part 'message_entity.freezed.dart';
part 'message_entity.g.dart';

@freezed
abstract class MessageEntity with _$MessageEntity {
  const factory MessageEntity({
    @Default(0) int? id,
    @Default(0) int? sender_id,
    @Default("") String? sender_name,
    @Default("") String? sender_avatar,
    @Default("") String? message_type,
    @Default([]) List? content,
    @Default(false) bool? me,
    @Default(false) bool? is_read,
    @Default("") String? read_at,
    @Default("") String? created_at,
    @Default(UploadingStateEnum.uploaded) UploadingStateEnum? uploadingState,

    @FileListJsonConverter() List<File?>? files,
  }) = _MessageEntity;

  factory MessageEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageEntityFromJson(json);
}
