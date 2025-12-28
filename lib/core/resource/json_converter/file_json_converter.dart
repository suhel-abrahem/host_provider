import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

class FileJsonConverter implements JsonConverter<File?, String?> {
  const FileJsonConverter();
  @override
  File? fromJson(String? json) {
    return json != null ? File(json) : null;
  }

  @override
  String? toJson(File? object) {
    return object?.path;
  }
}
