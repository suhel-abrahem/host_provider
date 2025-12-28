// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_participant_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OtherParticipantEntity _$OtherParticipantEntityFromJson(
  Map<String, dynamic> json,
) => _OtherParticipantEntity(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? "",
  profile_image: json['profile_image'] as String? ?? "",
);

Map<String, dynamic> _$OtherParticipantEntityToJson(
  _OtherParticipantEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'profile_image': instance.profile_image,
};
