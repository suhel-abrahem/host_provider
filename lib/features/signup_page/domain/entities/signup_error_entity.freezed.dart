// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_error_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignupErrorEntity {

 List? get phone; List? get email; List? get password;
/// Create a copy of SignupErrorEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupErrorEntityCopyWith<SignupErrorEntity> get copyWith => _$SignupErrorEntityCopyWithImpl<SignupErrorEntity>(this as SignupErrorEntity, _$identity);

  /// Serializes this SignupErrorEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupErrorEntity&&const DeepCollectionEquality().equals(other.phone, phone)&&const DeepCollectionEquality().equals(other.email, email)&&const DeepCollectionEquality().equals(other.password, password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(phone),const DeepCollectionEquality().hash(email),const DeepCollectionEquality().hash(password));

@override
String toString() {
  return 'SignupErrorEntity(phone: $phone, email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $SignupErrorEntityCopyWith<$Res>  {
  factory $SignupErrorEntityCopyWith(SignupErrorEntity value, $Res Function(SignupErrorEntity) _then) = _$SignupErrorEntityCopyWithImpl;
@useResult
$Res call({
 List? phone, List? email, List? password
});




}
/// @nodoc
class _$SignupErrorEntityCopyWithImpl<$Res>
    implements $SignupErrorEntityCopyWith<$Res> {
  _$SignupErrorEntityCopyWithImpl(this._self, this._then);

  final SignupErrorEntity _self;
  final $Res Function(SignupErrorEntity) _then;

/// Create a copy of SignupErrorEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = freezed,Object? email = freezed,Object? password = freezed,}) {
  return _then(_self.copyWith(
phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as List?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as List?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as List?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignupErrorEntity].
extension SignupErrorEntityPatterns on SignupErrorEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignupErrorEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupErrorEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignupErrorEntity value)  $default,){
final _that = this;
switch (_that) {
case _SignupErrorEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignupErrorEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SignupErrorEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List? phone,  List? email,  List? password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupErrorEntity() when $default != null:
return $default(_that.phone,_that.email,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List? phone,  List? email,  List? password)  $default,) {final _that = this;
switch (_that) {
case _SignupErrorEntity():
return $default(_that.phone,_that.email,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List? phone,  List? email,  List? password)?  $default,) {final _that = this;
switch (_that) {
case _SignupErrorEntity() when $default != null:
return $default(_that.phone,_that.email,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignupErrorEntity implements SignupErrorEntity {
  const _SignupErrorEntity({final  List? phone = const [], final  List? email = const [], final  List? password = const []}): _phone = phone,_email = email,_password = password;
  factory _SignupErrorEntity.fromJson(Map<String, dynamic> json) => _$SignupErrorEntityFromJson(json);

 final  List? _phone;
@override@JsonKey() List? get phone {
  final value = _phone;
  if (value == null) return null;
  if (_phone is EqualUnmodifiableListView) return _phone;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List? _email;
@override@JsonKey() List? get email {
  final value = _email;
  if (value == null) return null;
  if (_email is EqualUnmodifiableListView) return _email;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List? _password;
@override@JsonKey() List? get password {
  final value = _password;
  if (value == null) return null;
  if (_password is EqualUnmodifiableListView) return _password;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SignupErrorEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupErrorEntityCopyWith<_SignupErrorEntity> get copyWith => __$SignupErrorEntityCopyWithImpl<_SignupErrorEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignupErrorEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupErrorEntity&&const DeepCollectionEquality().equals(other._phone, _phone)&&const DeepCollectionEquality().equals(other._email, _email)&&const DeepCollectionEquality().equals(other._password, _password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_phone),const DeepCollectionEquality().hash(_email),const DeepCollectionEquality().hash(_password));

@override
String toString() {
  return 'SignupErrorEntity(phone: $phone, email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$SignupErrorEntityCopyWith<$Res> implements $SignupErrorEntityCopyWith<$Res> {
  factory _$SignupErrorEntityCopyWith(_SignupErrorEntity value, $Res Function(_SignupErrorEntity) _then) = __$SignupErrorEntityCopyWithImpl;
@override @useResult
$Res call({
 List? phone, List? email, List? password
});




}
/// @nodoc
class __$SignupErrorEntityCopyWithImpl<$Res>
    implements _$SignupErrorEntityCopyWith<$Res> {
  __$SignupErrorEntityCopyWithImpl(this._self, this._then);

  final _SignupErrorEntity _self;
  final $Res Function(_SignupErrorEntity) _then;

/// Create a copy of SignupErrorEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = freezed,Object? email = freezed,Object? password = freezed,}) {
  return _then(_SignupErrorEntity(
phone: freezed == phone ? _self._phone : phone // ignore: cast_nullable_to_non_nullable
as List?,email: freezed == email ? _self._email : email // ignore: cast_nullable_to_non_nullable
as List?,password: freezed == password ? _self._password : password // ignore: cast_nullable_to_non_nullable
as List?,
  ));
}


}

// dart format on
