// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenEntity {

 String? get access_token; String? get refresh_token; String? get token_type; int? get expires_in; String? get created_in;
/// Create a copy of TokenEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenEntityCopyWith<TokenEntity> get copyWith => _$TokenEntityCopyWithImpl<TokenEntity>(this as TokenEntity, _$identity);

  /// Serializes this TokenEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenEntity&&(identical(other.access_token, access_token) || other.access_token == access_token)&&(identical(other.refresh_token, refresh_token) || other.refresh_token == refresh_token)&&(identical(other.token_type, token_type) || other.token_type == token_type)&&(identical(other.expires_in, expires_in) || other.expires_in == expires_in)&&(identical(other.created_in, created_in) || other.created_in == created_in));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,access_token,refresh_token,token_type,expires_in,created_in);

@override
String toString() {
  return 'TokenEntity(access_token: $access_token, refresh_token: $refresh_token, token_type: $token_type, expires_in: $expires_in, created_in: $created_in)';
}


}

/// @nodoc
abstract mixin class $TokenEntityCopyWith<$Res>  {
  factory $TokenEntityCopyWith(TokenEntity value, $Res Function(TokenEntity) _then) = _$TokenEntityCopyWithImpl;
@useResult
$Res call({
 String? access_token, String? refresh_token, String? token_type, int? expires_in, String? created_in
});




}
/// @nodoc
class _$TokenEntityCopyWithImpl<$Res>
    implements $TokenEntityCopyWith<$Res> {
  _$TokenEntityCopyWithImpl(this._self, this._then);

  final TokenEntity _self;
  final $Res Function(TokenEntity) _then;

/// Create a copy of TokenEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? access_token = freezed,Object? refresh_token = freezed,Object? token_type = freezed,Object? expires_in = freezed,Object? created_in = freezed,}) {
  return _then(_self.copyWith(
access_token: freezed == access_token ? _self.access_token : access_token // ignore: cast_nullable_to_non_nullable
as String?,refresh_token: freezed == refresh_token ? _self.refresh_token : refresh_token // ignore: cast_nullable_to_non_nullable
as String?,token_type: freezed == token_type ? _self.token_type : token_type // ignore: cast_nullable_to_non_nullable
as String?,expires_in: freezed == expires_in ? _self.expires_in : expires_in // ignore: cast_nullable_to_non_nullable
as int?,created_in: freezed == created_in ? _self.created_in : created_in // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TokenEntity].
extension TokenEntityPatterns on TokenEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokenEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokenEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokenEntity value)  $default,){
final _that = this;
switch (_that) {
case _TokenEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokenEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TokenEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? access_token,  String? refresh_token,  String? token_type,  int? expires_in,  String? created_in)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokenEntity() when $default != null:
return $default(_that.access_token,_that.refresh_token,_that.token_type,_that.expires_in,_that.created_in);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? access_token,  String? refresh_token,  String? token_type,  int? expires_in,  String? created_in)  $default,) {final _that = this;
switch (_that) {
case _TokenEntity():
return $default(_that.access_token,_that.refresh_token,_that.token_type,_that.expires_in,_that.created_in);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? access_token,  String? refresh_token,  String? token_type,  int? expires_in,  String? created_in)?  $default,) {final _that = this;
switch (_that) {
case _TokenEntity() when $default != null:
return $default(_that.access_token,_that.refresh_token,_that.token_type,_that.expires_in,_that.created_in);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TokenEntity implements TokenEntity {
  const _TokenEntity({this.access_token = "", this.refresh_token = "", this.token_type = "", this.expires_in = 0, this.created_in = ""});
  factory _TokenEntity.fromJson(Map<String, dynamic> json) => _$TokenEntityFromJson(json);

@override@JsonKey() final  String? access_token;
@override@JsonKey() final  String? refresh_token;
@override@JsonKey() final  String? token_type;
@override@JsonKey() final  int? expires_in;
@override@JsonKey() final  String? created_in;

/// Create a copy of TokenEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenEntityCopyWith<_TokenEntity> get copyWith => __$TokenEntityCopyWithImpl<_TokenEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenEntity&&(identical(other.access_token, access_token) || other.access_token == access_token)&&(identical(other.refresh_token, refresh_token) || other.refresh_token == refresh_token)&&(identical(other.token_type, token_type) || other.token_type == token_type)&&(identical(other.expires_in, expires_in) || other.expires_in == expires_in)&&(identical(other.created_in, created_in) || other.created_in == created_in));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,access_token,refresh_token,token_type,expires_in,created_in);

@override
String toString() {
  return 'TokenEntity(access_token: $access_token, refresh_token: $refresh_token, token_type: $token_type, expires_in: $expires_in, created_in: $created_in)';
}


}

/// @nodoc
abstract mixin class _$TokenEntityCopyWith<$Res> implements $TokenEntityCopyWith<$Res> {
  factory _$TokenEntityCopyWith(_TokenEntity value, $Res Function(_TokenEntity) _then) = __$TokenEntityCopyWithImpl;
@override @useResult
$Res call({
 String? access_token, String? refresh_token, String? token_type, int? expires_in, String? created_in
});




}
/// @nodoc
class __$TokenEntityCopyWithImpl<$Res>
    implements _$TokenEntityCopyWith<$Res> {
  __$TokenEntityCopyWithImpl(this._self, this._then);

  final _TokenEntity _self;
  final $Res Function(_TokenEntity) _then;

/// Create a copy of TokenEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? access_token = freezed,Object? refresh_token = freezed,Object? token_type = freezed,Object? expires_in = freezed,Object? created_in = freezed,}) {
  return _then(_TokenEntity(
access_token: freezed == access_token ? _self.access_token : access_token // ignore: cast_nullable_to_non_nullable
as String?,refresh_token: freezed == refresh_token ? _self.refresh_token : refresh_token // ignore: cast_nullable_to_non_nullable
as String?,token_type: freezed == token_type ? _self.token_type : token_type // ignore: cast_nullable_to_non_nullable
as String?,expires_in: freezed == expires_in ? _self.expires_in : expires_in // ignore: cast_nullable_to_non_nullable
as int?,created_in: freezed == created_in ? _self.created_in : created_in // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
