import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

class Uint8listJsonConverter implements JsonConverter<Uint8List?, List<int>?> {
  const Uint8listJsonConverter();
  @override
  Uint8List? fromJson(List<int>? json) {
    return json != null ? Uint8List.fromList(json) : null;
  }

  @override
  List<int>? toJson(Uint8List? object) {
    return object?.toList();
  }
}
