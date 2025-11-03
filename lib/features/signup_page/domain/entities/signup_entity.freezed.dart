// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignupEntity {

 String? get message; int? get user_id; String? get verify_via;
/// Create a copy of SignupEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupEntityCopyWith<SignupEntity> get copyWith => _$SignupEntityCopyWithImpl<SignupEntity>(this as SignupEntity, _$identity);

  /// Serializes this SignupEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupEntity&&(identical(other.message, message) || other.message == message)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.verify_via, verify_via) || other.verify_via == verify_via));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,user_id,verify_via);

@override
String toString() {
  return 'SignupEntity(message: $message, user_id: $user_id, verify_via: $verify_via)';
}


}

/// @nodoc
abstract mixin class $SignupEntityCopyWith<$Res>  {
  factory $SignupEntityCopyWith(SignupEntity value, $Res Function(SignupEntity) _then) = _$SignupEntityCopyWithImpl;
@useResult
$Res call({
 String? message, int? user_id, String? verify_via
});




}
/// @nodoc
class _$SignupEntityCopyWithImpl<$Res>
    implements $SignupEntityCopyWith<$Res> {
  _$SignupEntityCopyWithImpl(this._self, this._then);

  final SignupEntity _self;
  final $Res Function(SignupEntity) _then;

/// Create a copy of SignupEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? user_id = freezed,Object? verify_via = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,user_id: freezed == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as int?,verify_via: freezed == verify_via ? _self.verify_via : verify_via // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignupEntity].
extension SignupEntityPatterns on SignupEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignupEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignupEntity value)  $default,){
final _that = this;
switch (_that) {
case _SignupEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignupEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SignupEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? message,  int? user_id,  String? verify_via)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupEntity() when $default != null:
return $default(_that.message,_that.user_id,_that.verify_via);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? message,  int? user_id,  String? verify_via)  $default,) {final _that = this;
switch (_that) {
case _SignupEntity():
return $default(_that.message,_that.user_id,_that.verify_via);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? message,  int? user_id,  String? verify_via)?  $default,) {final _that = this;
switch (_that) {
case _SignupEntity() when $default != null:
return $default(_that.message,_that.user_id,_that.verify_via);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignupEntity implements SignupEntity {
  const _SignupEntity({this.message = "", this.user_id = 0, this.verify_via = ""});
  factory _SignupEntity.fromJson(Map<String, dynamic> json) => _$SignupEntityFromJson(json);

@override@JsonKey() final  String? message;
@override@JsonKey() final  int? user_id;
@override@JsonKey() final  String? verify_via;

/// Create a copy of SignupEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupEntityCopyWith<_SignupEntity> get copyWith => __$SignupEntityCopyWithImpl<_SignupEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignupEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupEntity&&(identical(other.message, message) || other.message == message)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.verify_via, verify_via) || other.verify_via == verify_via));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,user_id,verify_via);

@override
String toString() {
  return 'SignupEntity(message: $message, user_id: $user_id, verify_via: $verify_via)';
}


}

/// @nodoc
abstract mixin class _$SignupEntityCopyWith<$Res> implements $SignupEntityCopyWith<$Res> {
  factory _$SignupEntityCopyWith(_SignupEntity value, $Res Function(_SignupEntity) _then) = __$SignupEntityCopyWithImpl;
@override @useResult
$Res call({
 String? message, int? user_id, String? verify_via
});




}
/// @nodoc
class __$SignupEntityCopyWithImpl<$Res>
    implements _$SignupEntityCopyWith<$Res> {
  __$SignupEntityCopyWithImpl(this._self, this._then);

  final _SignupEntity _self;
  final $Res Function(_SignupEntity) _then;

/// Create a copy of SignupEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? user_id = freezed,Object? verify_via = freezed,}) {
  return _then(_SignupEntity(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,user_id: freezed == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as int?,verify_via: freezed == verify_via ? _self.verify_via : verify_via // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
