// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chats_entity.freezed.dart';
part 'chats_entity.g.dart';

@freezed
abstract class ChatsEntity with _$ChatsEntity {
  const factory ChatsEntity({
    @Default(0) int? id,
    @Default(0) int? booking_id,
    @Default("") String? booking_number,
    @Default("") String? booking_status,
    @Default("") String? service_name,
    @Default({}) Map<String, dynamic>? other_participant,
    @Default({}) Map<String, dynamic>? last_message,
    @Default("") String? last_message_at,
    @Default(0) int? unread_count,
  }) = _ChatsEntity;

  factory ChatsEntity.fromJson(Map<String, dynamic> json) =>
      _$ChatsEntityFromJson(json);
}
