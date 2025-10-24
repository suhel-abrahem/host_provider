// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginStateModel {

 String? get password; String? get email; String? get phone; String? get token; String? get otp;
/// Create a copy of LoginStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateModelCopyWith<LoginStateModel> get copyWith => _$LoginStateModelCopyWithImpl<LoginStateModel>(this as LoginStateModel, _$identity);

  /// Serializes this LoginStateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginStateModel&&(identical(other.password, password) || other.password == password)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.token, token) || other.token == token)&&(identical(other.otp, otp) || other.otp == otp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,password,email,phone,token,otp);

@override
String toString() {
  return 'LoginStateModel(password: $password, email: $email, phone: $phone, token: $token, otp: $otp)';
}


}

/// @nodoc
abstract mixin class $LoginStateModelCopyWith<$Res>  {
  factory $LoginStateModelCopyWith(LoginStateModel value, $Res Function(LoginStateModel) _then) = _$LoginStateModelCopyWithImpl;
@useResult
$Res call({
 String? password, String? email, String? phone, String? token, String? otp
});




}
/// @nodoc
class _$LoginStateModelCopyWithImpl<$Res>
    implements $LoginStateModelCopyWith<$Res> {
  _$LoginStateModelCopyWithImpl(this._self, this._then);

  final LoginStateModel _self;
  final $Res Function(LoginStateModel) _then;

/// Create a copy of LoginStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? password = freezed,Object? email = freezed,Object? phone = freezed,Object? token = freezed,Object? otp = freezed,}) {
  return _then(_self.copyWith(
password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginStateModel].
extension LoginStateModelPatterns on LoginStateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginStateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginStateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginStateModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginStateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginStateModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginStateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? password,  String? email,  String? phone,  String? token,  String? otp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginStateModel() when $default != null:
return $default(_that.password,_that.email,_that.phone,_that.token,_that.otp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? password,  String? email,  String? phone,  String? token,  String? otp)  $default,) {final _that = this;
switch (_that) {
case _LoginStateModel():
return $default(_that.password,_that.email,_that.phone,_that.token,_that.otp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? password,  String? email,  String? phone,  String? token,  String? otp)?  $default,) {final _that = this;
switch (_that) {
case _LoginStateModel() when $default != null:
return $default(_that.password,_that.email,_that.phone,_that.token,_that.otp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginStateModel implements LoginStateModel {
  const _LoginStateModel({this.password = "", this.email = "", this.phone = "", this.token = "", this.otp = ""});
  factory _LoginStateModel.fromJson(Map<String, dynamic> json) => _$LoginStateModelFromJson(json);

@override@JsonKey() final  String? password;
@override@JsonKey() final  String? email;
@override@JsonKey() final  String? phone;
@override@JsonKey() final  String? token;
@override@JsonKey() final  String? otp;

/// Create a copy of LoginStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateModelCopyWith<_LoginStateModel> get copyWith => __$LoginStateModelCopyWithImpl<_LoginStateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginStateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginStateModel&&(identical(other.password, password) || other.password == password)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.token, token) || other.token == token)&&(identical(other.otp, otp) || other.otp == otp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,password,email,phone,token,otp);

@override
String toString() {
  return 'LoginStateModel(password: $password, email: $email, phone: $phone, token: $token, otp: $otp)';
}


}

/// @nodoc
abstract mixin class _$LoginStateModelCopyWith<$Res> implements $LoginStateModelCopyWith<$Res> {
  factory _$LoginStateModelCopyWith(_LoginStateModel value, $Res Function(_LoginStateModel) _then) = __$LoginStateModelCopyWithImpl;
@override @useResult
$Res call({
 String? password, String? email, String? phone, String? token, String? otp
});




}
/// @nodoc
class __$LoginStateModelCopyWithImpl<$Res>
    implements _$LoginStateModelCopyWith<$Res> {
  __$LoginStateModelCopyWithImpl(this._self, this._then);

  final _LoginStateModel _self;
  final $Res Function(_LoginStateModel) _then;

/// Create a copy of LoginStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? password = freezed,Object? email = freezed,Object? phone = freezed,Object? token = freezed,Object? otp = freezed,}) {
  return _then(_LoginStateModel(
password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
