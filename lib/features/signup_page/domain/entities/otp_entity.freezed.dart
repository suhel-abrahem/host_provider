// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OtpEntity {

 int? get user_id; int? get id; int? get otp; String? get expires_at; bool? get used; String? get updated_at; String? get created_at;
/// Create a copy of OtpEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpEntityCopyWith<OtpEntity> get copyWith => _$OtpEntityCopyWithImpl<OtpEntity>(this as OtpEntity, _$identity);

  /// Serializes this OtpEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpEntity&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.id, id) || other.id == id)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.expires_at, expires_at) || other.expires_at == expires_at)&&(identical(other.used, used) || other.used == used)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at)&&(identical(other.created_at, created_at) || other.created_at == created_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user_id,id,otp,expires_at,used,updated_at,created_at);

@override
String toString() {
  return 'OtpEntity(user_id: $user_id, id: $id, otp: $otp, expires_at: $expires_at, used: $used, updated_at: $updated_at, created_at: $created_at)';
}


}

/// @nodoc
abstract mixin class $OtpEntityCopyWith<$Res>  {
  factory $OtpEntityCopyWith(OtpEntity value, $Res Function(OtpEntity) _then) = _$OtpEntityCopyWithImpl;
@useResult
$Res call({
 int? user_id, int? id, int? otp, String? expires_at, bool? used, String? updated_at, String? created_at
});




}
/// @nodoc
class _$OtpEntityCopyWithImpl<$Res>
    implements $OtpEntityCopyWith<$Res> {
  _$OtpEntityCopyWithImpl(this._self, this._then);

  final OtpEntity _self;
  final $Res Function(OtpEntity) _then;

/// Create a copy of OtpEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user_id = freezed,Object? id = freezed,Object? otp = freezed,Object? expires_at = freezed,Object? used = freezed,Object? updated_at = freezed,Object? created_at = freezed,}) {
  return _then(_self.copyWith(
user_id: freezed == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as int?,expires_at: freezed == expires_at ? _self.expires_at : expires_at // ignore: cast_nullable_to_non_nullable
as String?,used: freezed == used ? _self.used : used // ignore: cast_nullable_to_non_nullable
as bool?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OtpEntity].
extension OtpEntityPatterns on OtpEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpEntity value)  $default,){
final _that = this;
switch (_that) {
case _OtpEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OtpEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? user_id,  int? id,  int? otp,  String? expires_at,  bool? used,  String? updated_at,  String? created_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpEntity() when $default != null:
return $default(_that.user_id,_that.id,_that.otp,_that.expires_at,_that.used,_that.updated_at,_that.created_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? user_id,  int? id,  int? otp,  String? expires_at,  bool? used,  String? updated_at,  String? created_at)  $default,) {final _that = this;
switch (_that) {
case _OtpEntity():
return $default(_that.user_id,_that.id,_that.otp,_that.expires_at,_that.used,_that.updated_at,_that.created_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? user_id,  int? id,  int? otp,  String? expires_at,  bool? used,  String? updated_at,  String? created_at)?  $default,) {final _that = this;
switch (_that) {
case _OtpEntity() when $default != null:
return $default(_that.user_id,_that.id,_that.otp,_that.expires_at,_that.used,_that.updated_at,_that.created_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OtpEntity implements OtpEntity {
  const _OtpEntity({this.user_id = 0, this.id = 0, this.otp = 0, this.expires_at = "", this.used = false, this.updated_at = "", this.created_at = ""});
  factory _OtpEntity.fromJson(Map<String, dynamic> json) => _$OtpEntityFromJson(json);

@override@JsonKey() final  int? user_id;
@override@JsonKey() final  int? id;
@override@JsonKey() final  int? otp;
@override@JsonKey() final  String? expires_at;
@override@JsonKey() final  bool? used;
@override@JsonKey() final  String? updated_at;
@override@JsonKey() final  String? created_at;

/// Create a copy of OtpEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpEntityCopyWith<_OtpEntity> get copyWith => __$OtpEntityCopyWithImpl<_OtpEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtpEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpEntity&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.id, id) || other.id == id)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.expires_at, expires_at) || other.expires_at == expires_at)&&(identical(other.used, used) || other.used == used)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at)&&(identical(other.created_at, created_at) || other.created_at == created_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user_id,id,otp,expires_at,used,updated_at,created_at);

@override
String toString() {
  return 'OtpEntity(user_id: $user_id, id: $id, otp: $otp, expires_at: $expires_at, used: $used, updated_at: $updated_at, created_at: $created_at)';
}


}

/// @nodoc
abstract mixin class _$OtpEntityCopyWith<$Res> implements $OtpEntityCopyWith<$Res> {
  factory _$OtpEntityCopyWith(_OtpEntity value, $Res Function(_OtpEntity) _then) = __$OtpEntityCopyWithImpl;
@override @useResult
$Res call({
 int? user_id, int? id, int? otp, String? expires_at, bool? used, String? updated_at, String? created_at
});




}
/// @nodoc
class __$OtpEntityCopyWithImpl<$Res>
    implements _$OtpEntityCopyWith<$Res> {
  __$OtpEntityCopyWithImpl(this._self, this._then);

  final _OtpEntity _self;
  final $Res Function(_OtpEntity) _then;

/// Create a copy of OtpEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user_id = freezed,Object? id = freezed,Object? otp = freezed,Object? expires_at = freezed,Object? used = freezed,Object? updated_at = freezed,Object? created_at = freezed,}) {
  return _then(_OtpEntity(
user_id: freezed == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as int?,expires_at: freezed == expires_at ? _self.expires_at : expires_at // ignore: cast_nullable_to_non_nullable
as String?,used: freezed == used ? _self.used : used // ignore: cast_nullable_to_non_nullable
as bool?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
