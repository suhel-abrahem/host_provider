import 'package:freezed_annotation/freezed_annotation.dart';
part 'ticket_entity.freezed.dart';
part 'ticket_entity.g.dart';

@freezed
abstract class TicketEntity with _$TicketEntity {
  const factory TicketEntity({
    @Default({}) Map<String, dynamic>? ticket,
    @Default([{}]) List<Map<String, dynamic>?> messages,
    @Default({}) Map<String, dynamic>? pagination,
  }) = _TicketEntity;

  factory TicketEntity.fromJson(Map<String, dynamic> json) =>
      _$TicketEntityFromJson(json);
}
