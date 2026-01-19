// ignore_for_file: non_constant_identifier_names

import "package:freezed_annotation/freezed_annotation.dart";
part 'tickets_entity.freezed.dart';
part 'tickets_entity.g.dart';

@freezed
abstract class TicketsEntity with _$TicketsEntity {
  const factory TicketsEntity({
    @Default(0) int? id,
    @Default("") String? ticket_number,
    @Default("") String? subject,
    @Default("") String? category,
    @Default("") String? priority,
    @Default({}) Map<String, dynamic>? user,
    @Default({}) Map<String, dynamic>? assigned_admin,
    @Default({}) Map<String, dynamic>? last_message,
    @Default(0) int? unread_count,
    @Default("") String? last_message_at,
    @Default("") String? created_at,
    @Default("") String? closed_at,
  }) = _TicketsEntity;

  factory TicketsEntity.fromJson(Map<String, dynamic> json) =>
      _$TicketsEntityFromJson(json);
}
