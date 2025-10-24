// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginStateEntity {

 String? get token; String? get refreshToken; String? get userId; String? get userName; String? get email; String? get phone; String? get profileImage; String? get tokenExpireDate; String? get refreshTokenExpireDate; bool? get isEmailVerified; bool? get isPhoneVerified; LoginStateEnum? get loginStateEnum;
/// Create a copy of LoginStateEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateEntityCopyWith<LoginStateEntity> get copyWith => _$LoginStateEntityCopyWithImpl<LoginStateEntity>(this as LoginStateEntity, _$identity);

  /// Serializes this LoginStateEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginStateEntity&&(identical(other.token, token) || other.token == token)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.tokenExpireDate, tokenExpireDate) || other.tokenExpireDate == tokenExpireDate)&&(identical(other.refreshTokenExpireDate, refreshTokenExpireDate) || other.refreshTokenExpireDate == refreshTokenExpireDate)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.isPhoneVerified, isPhoneVerified) || other.isPhoneVerified == isPhoneVerified)&&(identical(other.loginStateEnum, loginStateEnum) || other.loginStateEnum == loginStateEnum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,refreshToken,userId,userName,email,phone,profileImage,tokenExpireDate,refreshTokenExpireDate,isEmailVerified,isPhoneVerified,loginStateEnum);

@override
String toString() {
  return 'LoginStateEntity(token: $token, refreshToken: $refreshToken, userId: $userId, userName: $userName, email: $email, phone: $phone, profileImage: $profileImage, tokenExpireDate: $tokenExpireDate, refreshTokenExpireDate: $refreshTokenExpireDate, isEmailVerified: $isEmailVerified, isPhoneVerified: $isPhoneVerified, loginStateEnum: $loginStateEnum)';
}


}

/// @nodoc
abstract mixin class $LoginStateEntityCopyWith<$Res>  {
  factory $LoginStateEntityCopyWith(LoginStateEntity value, $Res Function(LoginStateEntity) _then) = _$LoginStateEntityCopyWithImpl;
@useResult
$Res call({
 String? token, String? refreshToken, String? userId, String? userName, String? email, String? phone, String? profileImage, String? tokenExpireDate, String? refreshTokenExpireDate, bool? isEmailVerified, bool? isPhoneVerified, LoginStateEnum? loginStateEnum
});




}
/// @nodoc
class _$LoginStateEntityCopyWithImpl<$Res>
    implements $LoginStateEntityCopyWith<$Res> {
  _$LoginStateEntityCopyWithImpl(this._self, this._then);

  final LoginStateEntity _self;
  final $Res Function(LoginStateEntity) _then;

/// Create a copy of LoginStateEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = freezed,Object? refreshToken = freezed,Object? userId = freezed,Object? userName = freezed,Object? email = freezed,Object? phone = freezed,Object? profileImage = freezed,Object? tokenExpireDate = freezed,Object? refreshTokenExpireDate = freezed,Object? isEmailVerified = freezed,Object? isPhoneVerified = freezed,Object? loginStateEnum = freezed,}) {
  return _then(_self.copyWith(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,tokenExpireDate: freezed == tokenExpireDate ? _self.tokenExpireDate : tokenExpireDate // ignore: cast_nullable_to_non_nullable
as String?,refreshTokenExpireDate: freezed == refreshTokenExpireDate ? _self.refreshTokenExpireDate : refreshTokenExpireDate // ignore: cast_nullable_to_non_nullable
as String?,isEmailVerified: freezed == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool?,isPhoneVerified: freezed == isPhoneVerified ? _self.isPhoneVerified : isPhoneVerified // ignore: cast_nullable_to_non_nullable
as bool?,loginStateEnum: freezed == loginStateEnum ? _self.loginStateEnum : loginStateEnum // ignore: cast_nullable_to_non_nullable
as LoginStateEnum?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginStateEntity].
extension LoginStateEntityPatterns on LoginStateEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginStateEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginStateEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginStateEntity value)  $default,){
final _that = this;
switch (_that) {
case _LoginStateEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginStateEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LoginStateEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? token,  String? refreshToken,  String? userId,  String? userName,  String? email,  String? phone,  String? profileImage,  String? tokenExpireDate,  String? refreshTokenExpireDate,  bool? isEmailVerified,  bool? isPhoneVerified,  LoginStateEnum? loginStateEnum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginStateEntity() when $default != null:
return $default(_that.token,_that.refreshToken,_that.userId,_that.userName,_that.email,_that.phone,_that.profileImage,_that.tokenExpireDate,_that.refreshTokenExpireDate,_that.isEmailVerified,_that.isPhoneVerified,_that.loginStateEnum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? token,  String? refreshToken,  String? userId,  String? userName,  String? email,  String? phone,  String? profileImage,  String? tokenExpireDate,  String? refreshTokenExpireDate,  bool? isEmailVerified,  bool? isPhoneVerified,  LoginStateEnum? loginStateEnum)  $default,) {final _that = this;
switch (_that) {
case _LoginStateEntity():
return $default(_that.token,_that.refreshToken,_that.userId,_that.userName,_that.email,_that.phone,_that.profileImage,_that.tokenExpireDate,_that.refreshTokenExpireDate,_that.isEmailVerified,_that.isPhoneVerified,_that.loginStateEnum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? token,  String? refreshToken,  String? userId,  String? userName,  String? email,  String? phone,  String? profileImage,  String? tokenExpireDate,  String? refreshTokenExpireDate,  bool? isEmailVerified,  bool? isPhoneVerified,  LoginStateEnum? loginStateEnum)?  $default,) {final _that = this;
switch (_that) {
case _LoginStateEntity() when $default != null:
return $default(_that.token,_that.refreshToken,_that.userId,_that.userName,_that.email,_that.phone,_that.profileImage,_that.tokenExpireDate,_that.refreshTokenExpireDate,_that.isEmailVerified,_that.isPhoneVerified,_that.loginStateEnum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginStateEntity implements LoginStateEntity {
  const _LoginStateEntity({this.token = "", this.refreshToken = "", this.userId = "", this.userName = "", this.email = "", this.phone = "", this.profileImage = "", this.tokenExpireDate = "", this.refreshTokenExpireDate = "", this.isEmailVerified = false, this.isPhoneVerified = false, this.loginStateEnum = LoginStateEnum.unlogined});
  factory _LoginStateEntity.fromJson(Map<String, dynamic> json) => _$LoginStateEntityFromJson(json);

@override@JsonKey() final  String? token;
@override@JsonKey() final  String? refreshToken;
@override@JsonKey() final  String? userId;
@override@JsonKey() final  String? userName;
@override@JsonKey() final  String? email;
@override@JsonKey() final  String? phone;
@override@JsonKey() final  String? profileImage;
@override@JsonKey() final  String? tokenExpireDate;
@override@JsonKey() final  String? refreshTokenExpireDate;
@override@JsonKey() final  bool? isEmailVerified;
@override@JsonKey() final  bool? isPhoneVerified;
@override@JsonKey() final  LoginStateEnum? loginStateEnum;

/// Create a copy of LoginStateEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateEntityCopyWith<_LoginStateEntity> get copyWith => __$LoginStateEntityCopyWithImpl<_LoginStateEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginStateEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginStateEntity&&(identical(other.token, token) || other.token == token)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.tokenExpireDate, tokenExpireDate) || other.tokenExpireDate == tokenExpireDate)&&(identical(other.refreshTokenExpireDate, refreshTokenExpireDate) || other.refreshTokenExpireDate == refreshTokenExpireDate)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.isPhoneVerified, isPhoneVerified) || other.isPhoneVerified == isPhoneVerified)&&(identical(other.loginStateEnum, loginStateEnum) || other.loginStateEnum == loginStateEnum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,refreshToken,userId,userName,email,phone,profileImage,tokenExpireDate,refreshTokenExpireDate,isEmailVerified,isPhoneVerified,loginStateEnum);

@override
String toString() {
  return 'LoginStateEntity(token: $token, refreshToken: $refreshToken, userId: $userId, userName: $userName, email: $email, phone: $phone, profileImage: $profileImage, tokenExpireDate: $tokenExpireDate, refreshTokenExpireDate: $refreshTokenExpireDate, isEmailVerified: $isEmailVerified, isPhoneVerified: $isPhoneVerified, loginStateEnum: $loginStateEnum)';
}


}

/// @nodoc
abstract mixin class _$LoginStateEntityCopyWith<$Res> implements $LoginStateEntityCopyWith<$Res> {
  factory _$LoginStateEntityCopyWith(_LoginStateEntity value, $Res Function(_LoginStateEntity) _then) = __$LoginStateEntityCopyWithImpl;
@override @useResult
$Res call({
 String? token, String? refreshToken, String? userId, String? userName, String? email, String? phone, String? profileImage, String? tokenExpireDate, String? refreshTokenExpireDate, bool? isEmailVerified, bool? isPhoneVerified, LoginStateEnum? loginStateEnum
});




}
/// @nodoc
class __$LoginStateEntityCopyWithImpl<$Res>
    implements _$LoginStateEntityCopyWith<$Res> {
  __$LoginStateEntityCopyWithImpl(this._self, this._then);

  final _LoginStateEntity _self;
  final $Res Function(_LoginStateEntity) _then;

/// Create a copy of LoginStateEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = freezed,Object? refreshToken = freezed,Object? userId = freezed,Object? userName = freezed,Object? email = freezed,Object? phone = freezed,Object? profileImage = freezed,Object? tokenExpireDate = freezed,Object? refreshTokenExpireDate = freezed,Object? isEmailVerified = freezed,Object? isPhoneVerified = freezed,Object? loginStateEnum = freezed,}) {
  return _then(_LoginStateEntity(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,tokenExpireDate: freezed == tokenExpireDate ? _self.tokenExpireDate : tokenExpireDate // ignore: cast_nullable_to_non_nullable
as String?,refreshTokenExpireDate: freezed == refreshTokenExpireDate ? _self.refreshTokenExpireDate : refreshTokenExpireDate // ignore: cast_nullable_to_non_nullable
as String?,isEmailVerified: freezed == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool?,isPhoneVerified: freezed == isPhoneVerified ? _self.isPhoneVerified : isPhoneVerified // ignore: cast_nullable_to_non_nullable
as bool?,loginStateEnum: freezed == loginStateEnum ? _self.loginStateEnum : loginStateEnum // ignore: cast_nullable_to_non_nullable
as LoginStateEnum?,
  ));
}


}

// dart format on
