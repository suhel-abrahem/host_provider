// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PositionEntity {

 String? get long; String? get lat;
/// Create a copy of PositionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PositionEntityCopyWith<PositionEntity> get copyWith => _$PositionEntityCopyWithImpl<PositionEntity>(this as PositionEntity, _$identity);

  /// Serializes this PositionEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PositionEntity&&(identical(other.long, long) || other.long == long)&&(identical(other.lat, lat) || other.lat == lat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,long,lat);

@override
String toString() {
  return 'PositionEntity(long: $long, lat: $lat)';
}


}

/// @nodoc
abstract mixin class $PositionEntityCopyWith<$Res>  {
  factory $PositionEntityCopyWith(PositionEntity value, $Res Function(PositionEntity) _then) = _$PositionEntityCopyWithImpl;
@useResult
$Res call({
 String? long, String? lat
});




}
/// @nodoc
class _$PositionEntityCopyWithImpl<$Res>
    implements $PositionEntityCopyWith<$Res> {
  _$PositionEntityCopyWithImpl(this._self, this._then);

  final PositionEntity _self;
  final $Res Function(PositionEntity) _then;

/// Create a copy of PositionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? long = freezed,Object? lat = freezed,}) {
  return _then(_self.copyWith(
long: freezed == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PositionEntity].
extension PositionEntityPatterns on PositionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PositionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PositionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PositionEntity value)  $default,){
final _that = this;
switch (_that) {
case _PositionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PositionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PositionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? long,  String? lat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PositionEntity() when $default != null:
return $default(_that.long,_that.lat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? long,  String? lat)  $default,) {final _that = this;
switch (_that) {
case _PositionEntity():
return $default(_that.long,_that.lat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? long,  String? lat)?  $default,) {final _that = this;
switch (_that) {
case _PositionEntity() when $default != null:
return $default(_that.long,_that.lat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PositionEntity implements PositionEntity {
  const _PositionEntity({this.long = "", this.lat = ""});
  factory _PositionEntity.fromJson(Map<String, dynamic> json) => _$PositionEntityFromJson(json);

@override@JsonKey() final  String? long;
@override@JsonKey() final  String? lat;

/// Create a copy of PositionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PositionEntityCopyWith<_PositionEntity> get copyWith => __$PositionEntityCopyWithImpl<_PositionEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PositionEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PositionEntity&&(identical(other.long, long) || other.long == long)&&(identical(other.lat, lat) || other.lat == lat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,long,lat);

@override
String toString() {
  return 'PositionEntity(long: $long, lat: $lat)';
}


}

/// @nodoc
abstract mixin class _$PositionEntityCopyWith<$Res> implements $PositionEntityCopyWith<$Res> {
  factory _$PositionEntityCopyWith(_PositionEntity value, $Res Function(_PositionEntity) _then) = __$PositionEntityCopyWithImpl;
@override @useResult
$Res call({
 String? long, String? lat
});




}
/// @nodoc
class __$PositionEntityCopyWithImpl<$Res>
    implements _$PositionEntityCopyWith<$Res> {
  __$PositionEntityCopyWithImpl(this._self, this._then);

  final _PositionEntity _self;
  final $Res Function(_PositionEntity) _then;

/// Create a copy of PositionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? long = freezed,Object? lat = freezed,}) {
  return _then(_PositionEntity(
long: freezed == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
