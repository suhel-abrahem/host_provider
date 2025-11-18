import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_entity.freezed.dart';
part 'profile_entity.g.dart';

@freezed
abstract class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    @Default(0) int? id,
    @Default("") String? name,
    @Default("") String? email,
    @Default("") String? phone,
    @Default("") String? dob,
    @Default("") String? avatar,
    @Default([]) List? addresses,
  }) = _ProfileEntity;
  factory ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileEntityFromJson(json);
}
