import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_entity.g.dart';
part 'position_entity.freezed.dart';

@freezed
abstract class PositionEntity with _$PositionEntity {
  const factory PositionEntity({
    @Default("") String? long,
    @Default("") String? lat,
  }) = _PositionEntity;
  factory PositionEntity.fromJson(Map<String, dynamic> json) =>
      _$PositionEntityFromJson(json);
}
