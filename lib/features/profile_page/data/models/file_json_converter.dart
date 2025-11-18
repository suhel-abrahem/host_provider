import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

class FilePathConverter implements JsonConverter<File?, String?> {
  const FilePathConverter();

  @override
  File? fromJson(String? json) => json == null ? null : File(json);

  @override
  String? toJson(File? object) => object?.path;
}
