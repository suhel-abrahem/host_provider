// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_reset_password_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestResetPasswordEntity {

 String? get message; String? get sent_via; int? get user_id; bool? get otp_sent;
/// Create a copy of RequestResetPasswordEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestResetPasswordEntityCopyWith<RequestResetPasswordEntity> get copyWith => _$RequestResetPasswordEntityCopyWithImpl<RequestResetPasswordEntity>(this as RequestResetPasswordEntity, _$identity);

  /// Serializes this RequestResetPasswordEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestResetPasswordEntity&&(identical(other.message, message) || other.message == message)&&(identical(other.sent_via, sent_via) || other.sent_via == sent_via)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.otp_sent, otp_sent) || other.otp_sent == otp_sent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,sent_via,user_id,otp_sent);

@override
String toString() {
  return 'RequestResetPasswordEntity(message: $message, sent_via: $sent_via, user_id: $user_id, otp_sent: $otp_sent)';
}


}

/// @nodoc
abstract mixin class $RequestResetPasswordEntityCopyWith<$Res>  {
  factory $RequestResetPasswordEntityCopyWith(RequestResetPasswordEntity value, $Res Function(RequestResetPasswordEntity) _then) = _$RequestResetPasswordEntityCopyWithImpl;
@useResult
$Res call({
 String? message, String? sent_via, int? user_id, bool? otp_sent
});




}
/// @nodoc
class _$RequestResetPasswordEntityCopyWithImpl<$Res>
    implements $RequestResetPasswordEntityCopyWith<$Res> {
  _$RequestResetPasswordEntityCopyWithImpl(this._self, this._then);

  final RequestResetPasswordEntity _self;
  final $Res Function(RequestResetPasswordEntity) _then;

/// Create a copy of RequestResetPasswordEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? sent_via = freezed,Object? user_id = freezed,Object? otp_sent = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,sent_via: freezed == sent_via ? _self.sent_via : sent_via // ignore: cast_nullable_to_non_nullable
as String?,user_id: freezed == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as int?,otp_sent: freezed == otp_sent ? _self.otp_sent : otp_sent // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestResetPasswordEntity].
extension RequestResetPasswordEntityPatterns on RequestResetPasswordEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestResetPasswordEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestResetPasswordEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestResetPasswordEntity value)  $default,){
final _that = this;
switch (_that) {
case _RequestResetPasswordEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestResetPasswordEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RequestResetPasswordEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? message,  String? sent_via,  int? user_id,  bool? otp_sent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestResetPasswordEntity() when $default != null:
return $default(_that.message,_that.sent_via,_that.user_id,_that.otp_sent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? message,  String? sent_via,  int? user_id,  bool? otp_sent)  $default,) {final _that = this;
switch (_that) {
case _RequestResetPasswordEntity():
return $default(_that.message,_that.sent_via,_that.user_id,_that.otp_sent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? message,  String? sent_via,  int? user_id,  bool? otp_sent)?  $default,) {final _that = this;
switch (_that) {
case _RequestResetPasswordEntity() when $default != null:
return $default(_that.message,_that.sent_via,_that.user_id,_that.otp_sent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestResetPasswordEntity implements RequestResetPasswordEntity {
  const _RequestResetPasswordEntity({this.message = "", this.sent_via = "", this.user_id = 0, this.otp_sent = false});
  factory _RequestResetPasswordEntity.fromJson(Map<String, dynamic> json) => _$RequestResetPasswordEntityFromJson(json);

@override@JsonKey() final  String? message;
@override@JsonKey() final  String? sent_via;
@override@JsonKey() final  int? user_id;
@override@JsonKey() final  bool? otp_sent;

/// Create a copy of RequestResetPasswordEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestResetPasswordEntityCopyWith<_RequestResetPasswordEntity> get copyWith => __$RequestResetPasswordEntityCopyWithImpl<_RequestResetPasswordEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestResetPasswordEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestResetPasswordEntity&&(identical(other.message, message) || other.message == message)&&(identical(other.sent_via, sent_via) || other.sent_via == sent_via)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.otp_sent, otp_sent) || other.otp_sent == otp_sent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,sent_via,user_id,otp_sent);

@override
String toString() {
  return 'RequestResetPasswordEntity(message: $message, sent_via: $sent_via, user_id: $user_id, otp_sent: $otp_sent)';
}


}

/// @nodoc
abstract mixin class _$RequestResetPasswordEntityCopyWith<$Res> implements $RequestResetPasswordEntityCopyWith<$Res> {
  factory _$RequestResetPasswordEntityCopyWith(_RequestResetPasswordEntity value, $Res Function(_RequestResetPasswordEntity) _then) = __$RequestResetPasswordEntityCopyWithImpl;
@override @useResult
$Res call({
 String? message, String? sent_via, int? user_id, bool? otp_sent
});




}
/// @nodoc
class __$RequestResetPasswordEntityCopyWithImpl<$Res>
    implements _$RequestResetPasswordEntityCopyWith<$Res> {
  __$RequestResetPasswordEntityCopyWithImpl(this._self, this._then);

  final _RequestResetPasswordEntity _self;
  final $Res Function(_RequestResetPasswordEntity) _then;

/// Create a copy of RequestResetPasswordEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? sent_via = freezed,Object? user_id = freezed,Object? otp_sent = freezed,}) {
  return _then(_RequestResetPasswordEntity(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,sent_via: freezed == sent_via ? _self.sent_via : sent_via // ignore: cast_nullable_to_non_nullable
as String?,user_id: freezed == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as int?,otp_sent: freezed == otp_sent ? _self.otp_sent : otp_sent // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
