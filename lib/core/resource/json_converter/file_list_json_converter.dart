import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

class FileListJsonConverter
    implements JsonConverter<List<File?>?, List<String?>?> {
  const FileListJsonConverter();
  @override
  List<File?>? fromJson(List<String?>? json) {
    return json?.map((e) => e != null ? File(e) : null).toList();
  }

  @override
  List<String?>? toJson(List<File?>? object) {
    return object?.map((e) => e?.path).toList();
  }
}
