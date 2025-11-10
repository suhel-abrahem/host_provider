// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addresses_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressesEntity {

 int? get id; String? get address; String? get lat; String? get lng;
/// Create a copy of AddressesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressesEntityCopyWith<AddressesEntity> get copyWith => _$AddressesEntityCopyWithImpl<AddressesEntity>(this as AddressesEntity, _$identity);

  /// Serializes this AddressesEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressesEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.address, address) || other.address == address)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,address,lat,lng);

@override
String toString() {
  return 'AddressesEntity(id: $id, address: $address, lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class $AddressesEntityCopyWith<$Res>  {
  factory $AddressesEntityCopyWith(AddressesEntity value, $Res Function(AddressesEntity) _then) = _$AddressesEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? address, String? lat, String? lng
});




}
/// @nodoc
class _$AddressesEntityCopyWithImpl<$Res>
    implements $AddressesEntityCopyWith<$Res> {
  _$AddressesEntityCopyWithImpl(this._self, this._then);

  final AddressesEntity _self;
  final $Res Function(AddressesEntity) _then;

/// Create a copy of AddressesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? address = freezed,Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressesEntity].
extension AddressesEntityPatterns on AddressesEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressesEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressesEntity value)  $default,){
final _that = this;
switch (_that) {
case _AddressesEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AddressesEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? address,  String? lat,  String? lng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressesEntity() when $default != null:
return $default(_that.id,_that.address,_that.lat,_that.lng);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? address,  String? lat,  String? lng)  $default,) {final _that = this;
switch (_that) {
case _AddressesEntity():
return $default(_that.id,_that.address,_that.lat,_that.lng);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? address,  String? lat,  String? lng)?  $default,) {final _that = this;
switch (_that) {
case _AddressesEntity() when $default != null:
return $default(_that.id,_that.address,_that.lat,_that.lng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressesEntity implements AddressesEntity {
  const _AddressesEntity({this.id = 0, this.address = "", this.lat = "", this.lng = ""});
  factory _AddressesEntity.fromJson(Map<String, dynamic> json) => _$AddressesEntityFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  String? address;
@override@JsonKey() final  String? lat;
@override@JsonKey() final  String? lng;

/// Create a copy of AddressesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressesEntityCopyWith<_AddressesEntity> get copyWith => __$AddressesEntityCopyWithImpl<_AddressesEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressesEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressesEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.address, address) || other.address == address)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,address,lat,lng);

@override
String toString() {
  return 'AddressesEntity(id: $id, address: $address, lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$AddressesEntityCopyWith<$Res> implements $AddressesEntityCopyWith<$Res> {
  factory _$AddressesEntityCopyWith(_AddressesEntity value, $Res Function(_AddressesEntity) _then) = __$AddressesEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? address, String? lat, String? lng
});




}
/// @nodoc
class __$AddressesEntityCopyWithImpl<$Res>
    implements _$AddressesEntityCopyWith<$Res> {
  __$AddressesEntityCopyWithImpl(this._self, this._then);

  final _AddressesEntity _self;
  final $Res Function(_AddressesEntity) _then;

/// Create a copy of AddressesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? address = freezed,Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_AddressesEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
