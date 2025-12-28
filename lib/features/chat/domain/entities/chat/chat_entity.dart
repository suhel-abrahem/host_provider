import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_entity.freezed.dart';
part 'chat_entity.g.dart';

@freezed
abstract class ChatEntity with _$ChatEntity {
  const factory ChatEntity({
    @Default({}) Map<String, dynamic>? conversation,
    @Default([]) List<Map<String, dynamic>>? messages,

    @Default({}) Map<String, dynamic>? pagination,
  }) = _ChatEntity;

  factory ChatEntity.fromJson(Map<String, dynamic> json) =>
      _$ChatEntityFromJson(json);
}
