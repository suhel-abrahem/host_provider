// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignupInfoEntity {

 SignupEntity? get signupEntity; OtpEntity? get otpEntity; String? get email; String? get phoneNumber; SignupErrorEntity? get signup_error_entity;
/// Create a copy of SignupInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupInfoEntityCopyWith<SignupInfoEntity> get copyWith => _$SignupInfoEntityCopyWithImpl<SignupInfoEntity>(this as SignupInfoEntity, _$identity);

  /// Serializes this SignupInfoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupInfoEntity&&(identical(other.signupEntity, signupEntity) || other.signupEntity == signupEntity)&&(identical(other.otpEntity, otpEntity) || other.otpEntity == otpEntity)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.signup_error_entity, signup_error_entity) || other.signup_error_entity == signup_error_entity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,signupEntity,otpEntity,email,phoneNumber,signup_error_entity);

@override
String toString() {
  return 'SignupInfoEntity(signupEntity: $signupEntity, otpEntity: $otpEntity, email: $email, phoneNumber: $phoneNumber, signup_error_entity: $signup_error_entity)';
}


}

/// @nodoc
abstract mixin class $SignupInfoEntityCopyWith<$Res>  {
  factory $SignupInfoEntityCopyWith(SignupInfoEntity value, $Res Function(SignupInfoEntity) _then) = _$SignupInfoEntityCopyWithImpl;
@useResult
$Res call({
 SignupEntity? signupEntity, OtpEntity? otpEntity, String? email, String? phoneNumber, SignupErrorEntity? signup_error_entity
});


$SignupEntityCopyWith<$Res>? get signupEntity;$OtpEntityCopyWith<$Res>? get otpEntity;$SignupErrorEntityCopyWith<$Res>? get signup_error_entity;

}
/// @nodoc
class _$SignupInfoEntityCopyWithImpl<$Res>
    implements $SignupInfoEntityCopyWith<$Res> {
  _$SignupInfoEntityCopyWithImpl(this._self, this._then);

  final SignupInfoEntity _self;
  final $Res Function(SignupInfoEntity) _then;

/// Create a copy of SignupInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? signupEntity = freezed,Object? otpEntity = freezed,Object? email = freezed,Object? phoneNumber = freezed,Object? signup_error_entity = freezed,}) {
  return _then(_self.copyWith(
signupEntity: freezed == signupEntity ? _self.signupEntity : signupEntity // ignore: cast_nullable_to_non_nullable
as SignupEntity?,otpEntity: freezed == otpEntity ? _self.otpEntity : otpEntity // ignore: cast_nullable_to_non_nullable
as OtpEntity?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,signup_error_entity: freezed == signup_error_entity ? _self.signup_error_entity : signup_error_entity // ignore: cast_nullable_to_non_nullable
as SignupErrorEntity?,
  ));
}
/// Create a copy of SignupInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignupEntityCopyWith<$Res>? get signupEntity {
    if (_self.signupEntity == null) {
    return null;
  }

  return $SignupEntityCopyWith<$Res>(_self.signupEntity!, (value) {
    return _then(_self.copyWith(signupEntity: value));
  });
}/// Create a copy of SignupInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtpEntityCopyWith<$Res>? get otpEntity {
    if (_self.otpEntity == null) {
    return null;
  }

  return $OtpEntityCopyWith<$Res>(_self.otpEntity!, (value) {
    return _then(_self.copyWith(otpEntity: value));
  });
}/// Create a copy of SignupInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignupErrorEntityCopyWith<$Res>? get signup_error_entity {
    if (_self.signup_error_entity == null) {
    return null;
  }

  return $SignupErrorEntityCopyWith<$Res>(_self.signup_error_entity!, (value) {
    return _then(_self.copyWith(signup_error_entity: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignupInfoEntity].
extension SignupInfoEntityPatterns on SignupInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignupInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignupInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _SignupInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignupInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SignupInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SignupEntity? signupEntity,  OtpEntity? otpEntity,  String? email,  String? phoneNumber,  SignupErrorEntity? signup_error_entity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupInfoEntity() when $default != null:
return $default(_that.signupEntity,_that.otpEntity,_that.email,_that.phoneNumber,_that.signup_error_entity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SignupEntity? signupEntity,  OtpEntity? otpEntity,  String? email,  String? phoneNumber,  SignupErrorEntity? signup_error_entity)  $default,) {final _that = this;
switch (_that) {
case _SignupInfoEntity():
return $default(_that.signupEntity,_that.otpEntity,_that.email,_that.phoneNumber,_that.signup_error_entity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SignupEntity? signupEntity,  OtpEntity? otpEntity,  String? email,  String? phoneNumber,  SignupErrorEntity? signup_error_entity)?  $default,) {final _that = this;
switch (_that) {
case _SignupInfoEntity() when $default != null:
return $default(_that.signupEntity,_that.otpEntity,_that.email,_that.phoneNumber,_that.signup_error_entity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignupInfoEntity implements SignupInfoEntity {
  const _SignupInfoEntity({this.signupEntity = const SignupEntity(), this.otpEntity = const OtpEntity(), this.email = "", this.phoneNumber = "", this.signup_error_entity = const SignupErrorEntity()});
  factory _SignupInfoEntity.fromJson(Map<String, dynamic> json) => _$SignupInfoEntityFromJson(json);

@override@JsonKey() final  SignupEntity? signupEntity;
@override@JsonKey() final  OtpEntity? otpEntity;
@override@JsonKey() final  String? email;
@override@JsonKey() final  String? phoneNumber;
@override@JsonKey() final  SignupErrorEntity? signup_error_entity;

/// Create a copy of SignupInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupInfoEntityCopyWith<_SignupInfoEntity> get copyWith => __$SignupInfoEntityCopyWithImpl<_SignupInfoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignupInfoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupInfoEntity&&(identical(other.signupEntity, signupEntity) || other.signupEntity == signupEntity)&&(identical(other.otpEntity, otpEntity) || other.otpEntity == otpEntity)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.signup_error_entity, signup_error_entity) || other.signup_error_entity == signup_error_entity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,signupEntity,otpEntity,email,phoneNumber,signup_error_entity);

@override
String toString() {
  return 'SignupInfoEntity(signupEntity: $signupEntity, otpEntity: $otpEntity, email: $email, phoneNumber: $phoneNumber, signup_error_entity: $signup_error_entity)';
}


}

/// @nodoc
abstract mixin class _$SignupInfoEntityCopyWith<$Res> implements $SignupInfoEntityCopyWith<$Res> {
  factory _$SignupInfoEntityCopyWith(_SignupInfoEntity value, $Res Function(_SignupInfoEntity) _then) = __$SignupInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 SignupEntity? signupEntity, OtpEntity? otpEntity, String? email, String? phoneNumber, SignupErrorEntity? signup_error_entity
});


@override $SignupEntityCopyWith<$Res>? get signupEntity;@override $OtpEntityCopyWith<$Res>? get otpEntity;@override $SignupErrorEntityCopyWith<$Res>? get signup_error_entity;

}
/// @nodoc
class __$SignupInfoEntityCopyWithImpl<$Res>
    implements _$SignupInfoEntityCopyWith<$Res> {
  __$SignupInfoEntityCopyWithImpl(this._self, this._then);

  final _SignupInfoEntity _self;
  final $Res Function(_SignupInfoEntity) _then;

/// Create a copy of SignupInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? signupEntity = freezed,Object? otpEntity = freezed,Object? email = freezed,Object? phoneNumber = freezed,Object? signup_error_entity = freezed,}) {
  return _then(_SignupInfoEntity(
signupEntity: freezed == signupEntity ? _self.signupEntity : signupEntity // ignore: cast_nullable_to_non_nullable
as SignupEntity?,otpEntity: freezed == otpEntity ? _self.otpEntity : otpEntity // ignore: cast_nullable_to_non_nullable
as OtpEntity?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,signup_error_entity: freezed == signup_error_entity ? _self.signup_error_entity : signup_error_entity // ignore: cast_nullable_to_non_nullable
as SignupErrorEntity?,
  ));
}

/// Create a copy of SignupInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignupEntityCopyWith<$Res>? get signupEntity {
    if (_self.signupEntity == null) {
    return null;
  }

  return $SignupEntityCopyWith<$Res>(_self.signupEntity!, (value) {
    return _then(_self.copyWith(signupEntity: value));
  });
}/// Create a copy of SignupInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtpEntityCopyWith<$Res>? get otpEntity {
    if (_self.otpEntity == null) {
    return null;
  }

  return $OtpEntityCopyWith<$Res>(_self.otpEntity!, (value) {
    return _then(_self.copyWith(otpEntity: value));
  });
}/// Create a copy of SignupInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignupErrorEntityCopyWith<$Res>? get signup_error_entity {
    if (_self.signup_error_entity == null) {
    return null;
  }

  return $SignupErrorEntityCopyWith<$Res>(_self.signup_error_entity!, (value) {
    return _then(_self.copyWith(signup_error_entity: value));
  });
}
}

// dart format on
