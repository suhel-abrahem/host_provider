// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageEntity _$MessageEntityFromJson(Map<String, dynamic> json) =>
    _MessageEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      sender_id: (json['sender_id'] as num?)?.toInt() ?? 0,
      sender_name: json['sender_name'] as String? ?? "",
      message_type: json['message_type'] as String? ?? "",
      content:
          (json['content'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
      me: json['me'] as bool? ?? false,
      is_read: json['is_read'] as bool? ?? false,
      read_at: json['read_at'] as String? ?? "",
      created_at: json['created_at'] as String? ?? "",
      uploadingState:
          $enumDecodeNullable(
            _$UploadingStateEnumEnumMap,
            json['uploadingState'],
          ) ??
          UploadingStateEnum.uploaded,
      files: const FileListJsonConverter().fromJson(
        json['files'] as List<String?>?,
      ),
    );

Map<String, dynamic> _$MessageEntityToJson(_MessageEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender_id': instance.sender_id,
      'sender_name': instance.sender_name,
      'message_type': instance.message_type,
      'content': instance.content,
      'me': instance.me,
      'is_read': instance.is_read,
      'read_at': instance.read_at,
      'created_at': instance.created_at,
      'uploadingState': _$UploadingStateEnumEnumMap[instance.uploadingState],
      'files': const FileListJsonConverter().toJson(instance.files),
    };

const _$UploadingStateEnumEnumMap = {
  UploadingStateEnum.uploading: 'uploading',
  UploadingStateEnum.uploaded: 'uploaded',
  UploadingStateEnum.failed: 'failed',
};
