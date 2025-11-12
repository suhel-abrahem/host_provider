import 'package:freezed_annotation/freezed_annotation.dart';
part 'addresses_entity.freezed.dart';
part 'addresses_entity.g.dart';

@freezed
abstract class AddressesEntity with _$AddressesEntity {
  const factory AddressesEntity({
    @Default(0) int? id,
    @Default("") String? address,
    @Default({}) Map<String, dynamic>? city,
    @Default({}) Map<String, dynamic>? country,
    @Default("") String? lat,
    @Default("") String? lng,
  }) = _AddressesEntity;
  factory AddressesEntity.fromJson(Map<String, dynamic> json) =>
      _$AddressesEntityFromJson(json);
}
