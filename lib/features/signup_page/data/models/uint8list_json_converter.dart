import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

class FileJsonConverter implements JsonConverter<File?, String?> {
  const FileJsonConverter();
  @override
  File? fromJson(String? json) {
    return json != null ? File.fromUri(Uri.parse(json)) : null;
  }

  @override
  String? toJson(File? object) {
    return object?.uri.toString();
  }
}
