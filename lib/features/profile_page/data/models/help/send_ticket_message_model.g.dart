// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_ticket_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendTicketMessageModel _$SendTicketMessageModelFromJson(
  Map<String, dynamic> json,
) => _SendTicketMessageModel(
  token: json['token'] as String? ?? '',
  message_type: json['message_type'] as String? ?? '',
  ticketId: (json['ticketId'] as num?)?.toInt() ?? 0,
  content: json['content'] as String? ?? '',
  files: json['files'] == null
      ? const []
      : const FileListJsonConverter().fromJson(json['files'] as List<String?>?),
);

Map<String, dynamic> _$SendTicketMessageModelToJson(
  _SendTicketMessageModel instance,
) => <String, dynamic>{
  'token': instance.token,
  'message_type': instance.message_type,
  'ticketId': instance.ticketId,
  'content': instance.content,
  'files': const FileListJsonConverter().toJson(instance.files),
};
