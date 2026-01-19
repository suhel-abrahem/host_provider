// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_reset_password_otp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResendResetPasswordOtpModel {

 String? get token; String? get acceptLanguage; int? get user_id; String? get reset_via;
/// Create a copy of ResendResetPasswordOtpModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResendResetPasswordOtpModelCopyWith<ResendResetPasswordOtpModel> get copyWith => _$ResendResetPasswordOtpModelCopyWithImpl<ResendResetPasswordOtpModel>(this as ResendResetPasswordOtpModel, _$identity);

  /// Serializes this ResendResetPasswordOtpModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendResetPasswordOtpModel&&(identical(other.token, token) || other.token == token)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.reset_via, reset_via) || other.reset_via == reset_via));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,acceptLanguage,user_id,reset_via);

@override
String toString() {
  return 'ResendResetPasswordOtpModel(token: $token, acceptLanguage: $acceptLanguage, user_id: $user_id, reset_via: $reset_via)';
}


}

/// @nodoc
abstract mixin class $ResendResetPasswordOtpModelCopyWith<$Res>  {
  factory $ResendResetPasswordOtpModelCopyWith(ResendResetPasswordOtpModel value, $Res Function(ResendResetPasswordOtpModel) _then) = _$ResendResetPasswordOtpModelCopyWithImpl;
@useResult
$Res call({
 String? token, String? acceptLanguage, int? user_id, String? reset_via
});




}
/// @nodoc
class _$ResendResetPasswordOtpModelCopyWithImpl<$Res>
    implements $ResendResetPasswordOtpModelCopyWith<$Res> {
  _$ResendResetPasswordOtpModelCopyWithImpl(this._self, this._then);

  final ResendResetPasswordOtpModel _self;
  final $Res Function(ResendResetPasswordOtpModel) _then;

/// Create a copy of ResendResetPasswordOtpModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = freezed,Object? acceptLanguage = freezed,Object? user_id = freezed,Object? reset_via = freezed,}) {
  return _then(_self.copyWith(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,user_id: freezed == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as int?,reset_via: freezed == reset_via ? _self.reset_via : reset_via // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ResendResetPasswordOtpModel].
extension ResendResetPasswordOtpModelPatterns on ResendResetPasswordOtpModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResendResetPasswordOtpModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResendResetPasswordOtpModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResendResetPasswordOtpModel value)  $default,){
final _that = this;
switch (_that) {
case _ResendResetPasswordOtpModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResendResetPasswordOtpModel value)?  $default,){
final _that = this;
switch (_that) {
case _ResendResetPasswordOtpModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? token,  String? acceptLanguage,  int? user_id,  String? reset_via)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResendResetPasswordOtpModel() when $default != null:
return $default(_that.token,_that.acceptLanguage,_that.user_id,_that.reset_via);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? token,  String? acceptLanguage,  int? user_id,  String? reset_via)  $default,) {final _that = this;
switch (_that) {
case _ResendResetPasswordOtpModel():
return $default(_that.token,_that.acceptLanguage,_that.user_id,_that.reset_via);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? token,  String? acceptLanguage,  int? user_id,  String? reset_via)?  $default,) {final _that = this;
switch (_that) {
case _ResendResetPasswordOtpModel() when $default != null:
return $default(_that.token,_that.acceptLanguage,_that.user_id,_that.reset_via);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResendResetPasswordOtpModel implements ResendResetPasswordOtpModel {
  const _ResendResetPasswordOtpModel({this.token = "", this.acceptLanguage = "", this.user_id = 0, this.reset_via = ""});
  factory _ResendResetPasswordOtpModel.fromJson(Map<String, dynamic> json) => _$ResendResetPasswordOtpModelFromJson(json);

@override@JsonKey() final  String? token;
@override@JsonKey() final  String? acceptLanguage;
@override@JsonKey() final  int? user_id;
@override@JsonKey() final  String? reset_via;

/// Create a copy of ResendResetPasswordOtpModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResendResetPasswordOtpModelCopyWith<_ResendResetPasswordOtpModel> get copyWith => __$ResendResetPasswordOtpModelCopyWithImpl<_ResendResetPasswordOtpModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResendResetPasswordOtpModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendResetPasswordOtpModel&&(identical(other.token, token) || other.token == token)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.reset_via, reset_via) || other.reset_via == reset_via));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,acceptLanguage,user_id,reset_via);

@override
String toString() {
  return 'ResendResetPasswordOtpModel(token: $token, acceptLanguage: $acceptLanguage, user_id: $user_id, reset_via: $reset_via)';
}


}

/// @nodoc
abstract mixin class _$ResendResetPasswordOtpModelCopyWith<$Res> implements $ResendResetPasswordOtpModelCopyWith<$Res> {
  factory _$ResendResetPasswordOtpModelCopyWith(_ResendResetPasswordOtpModel value, $Res Function(_ResendResetPasswordOtpModel) _then) = __$ResendResetPasswordOtpModelCopyWithImpl;
@override @useResult
$Res call({
 String? token, String? acceptLanguage, int? user_id, String? reset_via
});




}
/// @nodoc
class __$ResendResetPasswordOtpModelCopyWithImpl<$Res>
    implements _$ResendResetPasswordOtpModelCopyWith<$Res> {
  __$ResendResetPasswordOtpModelCopyWithImpl(this._self, this._then);

  final _ResendResetPasswordOtpModel _self;
  final $Res Function(_ResendResetPasswordOtpModel) _then;

/// Create a copy of ResendResetPasswordOtpModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = freezed,Object? acceptLanguage = freezed,Object? user_id = freezed,Object? reset_via = freezed,}) {
  return _then(_ResendResetPasswordOtpModel(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,user_id: freezed == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as int?,reset_via: freezed == reset_via ? _self.reset_via : reset_via // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
