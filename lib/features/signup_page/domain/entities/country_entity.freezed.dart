// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountryEntity {

 int? get id; String? get name; bool? get is_active; int? get cities_count; String? get created_at; String? get updated_at;
/// Create a copy of CountryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryEntityCopyWith<CountryEntity> get copyWith => _$CountryEntityCopyWithImpl<CountryEntity>(this as CountryEntity, _$identity);

  /// Serializes this CountryEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.is_active, is_active) || other.is_active == is_active)&&(identical(other.cities_count, cities_count) || other.cities_count == cities_count)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,is_active,cities_count,created_at,updated_at);

@override
String toString() {
  return 'CountryEntity(id: $id, name: $name, is_active: $is_active, cities_count: $cities_count, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class $CountryEntityCopyWith<$Res>  {
  factory $CountryEntityCopyWith(CountryEntity value, $Res Function(CountryEntity) _then) = _$CountryEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, bool? is_active, int? cities_count, String? created_at, String? updated_at
});




}
/// @nodoc
class _$CountryEntityCopyWithImpl<$Res>
    implements $CountryEntityCopyWith<$Res> {
  _$CountryEntityCopyWithImpl(this._self, this._then);

  final CountryEntity _self;
  final $Res Function(CountryEntity) _then;

/// Create a copy of CountryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? is_active = freezed,Object? cities_count = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,cities_count: freezed == cities_count ? _self.cities_count : cities_count // ignore: cast_nullable_to_non_nullable
as int?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CountryEntity].
extension CountryEntityPatterns on CountryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryEntity value)  $default,){
final _that = this;
switch (_that) {
case _CountryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CountryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  bool? is_active,  int? cities_count,  String? created_at,  String? updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryEntity() when $default != null:
return $default(_that.id,_that.name,_that.is_active,_that.cities_count,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  bool? is_active,  int? cities_count,  String? created_at,  String? updated_at)  $default,) {final _that = this;
switch (_that) {
case _CountryEntity():
return $default(_that.id,_that.name,_that.is_active,_that.cities_count,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  bool? is_active,  int? cities_count,  String? created_at,  String? updated_at)?  $default,) {final _that = this;
switch (_that) {
case _CountryEntity() when $default != null:
return $default(_that.id,_that.name,_that.is_active,_that.cities_count,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryEntity implements CountryEntity {
  const _CountryEntity({this.id = 1, this.name = "", this.is_active = false, this.cities_count = 0, this.created_at = "", this.updated_at = ""});
  factory _CountryEntity.fromJson(Map<String, dynamic> json) => _$CountryEntityFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  String? name;
@override@JsonKey() final  bool? is_active;
@override@JsonKey() final  int? cities_count;
@override@JsonKey() final  String? created_at;
@override@JsonKey() final  String? updated_at;

/// Create a copy of CountryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryEntityCopyWith<_CountryEntity> get copyWith => __$CountryEntityCopyWithImpl<_CountryEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.is_active, is_active) || other.is_active == is_active)&&(identical(other.cities_count, cities_count) || other.cities_count == cities_count)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,is_active,cities_count,created_at,updated_at);

@override
String toString() {
  return 'CountryEntity(id: $id, name: $name, is_active: $is_active, cities_count: $cities_count, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$CountryEntityCopyWith<$Res> implements $CountryEntityCopyWith<$Res> {
  factory _$CountryEntityCopyWith(_CountryEntity value, $Res Function(_CountryEntity) _then) = __$CountryEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, bool? is_active, int? cities_count, String? created_at, String? updated_at
});




}
/// @nodoc
class __$CountryEntityCopyWithImpl<$Res>
    implements _$CountryEntityCopyWith<$Res> {
  __$CountryEntityCopyWithImpl(this._self, this._then);

  final _CountryEntity _self;
  final $Res Function(_CountryEntity) _then;

/// Create a copy of CountryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? is_active = freezed,Object? cities_count = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_CountryEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,cities_count: freezed == cities_count ? _self.cities_count : cities_count // ignore: cast_nullable_to_non_nullable
as int?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
