// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_working_hours_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetWorkingHoursModel _$SetWorkingHoursModelFromJson(
  Map<String, dynamic> json,
) => _SetWorkingHoursModel(
  workingTime:
      (json['workingTime'] as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : WorkingTimeModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  authToken: json['authToken'] as String? ?? "",
  acceptLanguage: json['acceptLanguage'] as String? ?? "",
);

Map<String, dynamic> _$SetWorkingHoursModelToJson(
  _SetWorkingHoursModel instance,
) => <String, dynamic>{
  'workingTime': instance.workingTime,
  'authToken': instance.authToken,
  'acceptLanguage': instance.acceptLanguage,
};
