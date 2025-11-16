// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OtpModel {

 int? get userId; String? get otp; String? get verifyMethod;
/// Create a copy of OtpModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpModelCopyWith<OtpModel> get copyWith => _$OtpModelCopyWithImpl<OtpModel>(this as OtpModel, _$identity);

  /// Serializes this OtpModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.verifyMethod, verifyMethod) || other.verifyMethod == verifyMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,otp,verifyMethod);

@override
String toString() {
  return 'OtpModel(userId: $userId, otp: $otp, verifyMethod: $verifyMethod)';
}


}

/// @nodoc
abstract mixin class $OtpModelCopyWith<$Res>  {
  factory $OtpModelCopyWith(OtpModel value, $Res Function(OtpModel) _then) = _$OtpModelCopyWithImpl;
@useResult
$Res call({
 int? userId, String? otp, String? verifyMethod
});




}
/// @nodoc
class _$OtpModelCopyWithImpl<$Res>
    implements $OtpModelCopyWith<$Res> {
  _$OtpModelCopyWithImpl(this._self, this._then);

  final OtpModel _self;
  final $Res Function(OtpModel) _then;

/// Create a copy of OtpModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? otp = freezed,Object? verifyMethod = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,verifyMethod: freezed == verifyMethod ? _self.verifyMethod : verifyMethod // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OtpModel].
extension OtpModelPatterns on OtpModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpModel value)  $default,){
final _that = this;
switch (_that) {
case _OtpModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpModel value)?  $default,){
final _that = this;
switch (_that) {
case _OtpModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? userId,  String? otp,  String? verifyMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpModel() when $default != null:
return $default(_that.userId,_that.otp,_that.verifyMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? userId,  String? otp,  String? verifyMethod)  $default,) {final _that = this;
switch (_that) {
case _OtpModel():
return $default(_that.userId,_that.otp,_that.verifyMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? userId,  String? otp,  String? verifyMethod)?  $default,) {final _that = this;
switch (_that) {
case _OtpModel() when $default != null:
return $default(_that.userId,_that.otp,_that.verifyMethod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OtpModel implements OtpModel {
  const _OtpModel({this.userId = 0, this.otp = "", this.verifyMethod = ""});
  factory _OtpModel.fromJson(Map<String, dynamic> json) => _$OtpModelFromJson(json);

@override@JsonKey() final  int? userId;
@override@JsonKey() final  String? otp;
@override@JsonKey() final  String? verifyMethod;

/// Create a copy of OtpModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpModelCopyWith<_OtpModel> get copyWith => __$OtpModelCopyWithImpl<_OtpModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtpModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.verifyMethod, verifyMethod) || other.verifyMethod == verifyMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,otp,verifyMethod);

@override
String toString() {
  return 'OtpModel(userId: $userId, otp: $otp, verifyMethod: $verifyMethod)';
}


}

/// @nodoc
abstract mixin class _$OtpModelCopyWith<$Res> implements $OtpModelCopyWith<$Res> {
  factory _$OtpModelCopyWith(_OtpModel value, $Res Function(_OtpModel) _then) = __$OtpModelCopyWithImpl;
@override @useResult
$Res call({
 int? userId, String? otp, String? verifyMethod
});




}
/// @nodoc
class __$OtpModelCopyWithImpl<$Res>
    implements _$OtpModelCopyWith<$Res> {
  __$OtpModelCopyWithImpl(this._self, this._then);

  final _OtpModel _self;
  final $Res Function(_OtpModel) _then;

/// Create a copy of OtpModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? otp = freezed,Object? verifyMethod = freezed,}) {
  return _then(_OtpModel(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,verifyMethod: freezed == verifyMethod ? _self.verifyMethod : verifyMethod // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
