// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'other_participant_entity.freezed.dart';
part 'other_participant_entity.g.dart';

@freezed
abstract class OtherParticipantEntity with _$OtherParticipantEntity {
  const factory OtherParticipantEntity({
    @Default(0) int? id,
    @Default("") String? name,
    @Default("") String? profile_image,
  }) = _OtherParticipantEntity;

  factory OtherParticipantEntity.fromJson(Map<String, dynamic> json) =>
      _$OtherParticipantEntityFromJson(json);
}
