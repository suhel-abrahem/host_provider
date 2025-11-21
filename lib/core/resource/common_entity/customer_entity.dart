import 'package:freezed_annotation/freezed_annotation.dart';
import 'addresses_entity.dart';
part 'customer_entity.freezed.dart';
part 'customer_entity.g.dart';

@freezed
abstract class CustomerEntity with _$CustomerEntity {
  const factory CustomerEntity({
    @Default(0) int? id,
    @Default("") String? name,
    @Default("") String? email,
    @Default("") String? phone,
    @Default([]) List<AddressesEntity>? addresses,
    @Default("") String? avatar,
  }) = _CustomerEntity;
  factory CustomerEntity.fromJson(Map<String, dynamic> json) =>
      _$CustomerEntityFromJson(json);
}
