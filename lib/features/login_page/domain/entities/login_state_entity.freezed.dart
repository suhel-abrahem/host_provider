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

 String? get access_token; String? get refresh_token; String? get token_type; int? get expires_in; Map<String, dynamic> get user; String? get created_at; LoginStateEnum? get loginStateEnum; bool? get isFcmTokenSet; String? get fcmToken;
/// Create a copy of LoginStateEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateEntityCopyWith<LoginStateEntity> get copyWith => _$LoginStateEntityCopyWithImpl<LoginStateEntity>(this as LoginStateEntity, _$identity);

  /// Serializes this LoginStateEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginStateEntity&&(identical(other.access_token, access_token) || other.access_token == access_token)&&(identical(other.refresh_token, refresh_token) || other.refresh_token == refresh_token)&&(identical(other.token_type, token_type) || other.token_type == token_type)&&(identical(other.expires_in, expires_in) || other.expires_in == expires_in)&&const DeepCollectionEquality().equals(other.user, user)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.loginStateEnum, loginStateEnum) || other.loginStateEnum == loginStateEnum)&&(identical(other.isFcmTokenSet, isFcmTokenSet) || other.isFcmTokenSet == isFcmTokenSet)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,access_token,refresh_token,token_type,expires_in,const DeepCollectionEquality().hash(user),created_at,loginStateEnum,isFcmTokenSet,fcmToken);

@override
String toString() {
  return 'LoginStateEntity(access_token: $access_token, refresh_token: $refresh_token, token_type: $token_type, expires_in: $expires_in, user: $user, created_at: $created_at, loginStateEnum: $loginStateEnum, isFcmTokenSet: $isFcmTokenSet, fcmToken: $fcmToken)';
}


}

/// @nodoc
abstract mixin class $LoginStateEntityCopyWith<$Res>  {
  factory $LoginStateEntityCopyWith(LoginStateEntity value, $Res Function(LoginStateEntity) _then) = _$LoginStateEntityCopyWithImpl;
@useResult
$Res call({
 String? access_token, String? refresh_token, String? token_type, int? expires_in, Map<String, dynamic> user, String? created_at, LoginStateEnum? loginStateEnum, bool? isFcmTokenSet, String? fcmToken
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
@pragma('vm:prefer-inline') @override $Res call({Object? access_token = freezed,Object? refresh_token = freezed,Object? token_type = freezed,Object? expires_in = freezed,Object? user = null,Object? created_at = freezed,Object? loginStateEnum = freezed,Object? isFcmTokenSet = freezed,Object? fcmToken = freezed,}) {
  return _then(_self.copyWith(
access_token: freezed == access_token ? _self.access_token : access_token // ignore: cast_nullable_to_non_nullable
as String?,refresh_token: freezed == refresh_token ? _self.refresh_token : refresh_token // ignore: cast_nullable_to_non_nullable
as String?,token_type: freezed == token_type ? _self.token_type : token_type // ignore: cast_nullable_to_non_nullable
as String?,expires_in: freezed == expires_in ? _self.expires_in : expires_in // ignore: cast_nullable_to_non_nullable
as int?,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,loginStateEnum: freezed == loginStateEnum ? _self.loginStateEnum : loginStateEnum // ignore: cast_nullable_to_non_nullable
as LoginStateEnum?,isFcmTokenSet: freezed == isFcmTokenSet ? _self.isFcmTokenSet : isFcmTokenSet // ignore: cast_nullable_to_non_nullable
as bool?,fcmToken: freezed == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? access_token,  String? refresh_token,  String? token_type,  int? expires_in,  Map<String, dynamic> user,  String? created_at,  LoginStateEnum? loginStateEnum,  bool? isFcmTokenSet,  String? fcmToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginStateEntity() when $default != null:
return $default(_that.access_token,_that.refresh_token,_that.token_type,_that.expires_in,_that.user,_that.created_at,_that.loginStateEnum,_that.isFcmTokenSet,_that.fcmToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? access_token,  String? refresh_token,  String? token_type,  int? expires_in,  Map<String, dynamic> user,  String? created_at,  LoginStateEnum? loginStateEnum,  bool? isFcmTokenSet,  String? fcmToken)  $default,) {final _that = this;
switch (_that) {
case _LoginStateEntity():
return $default(_that.access_token,_that.refresh_token,_that.token_type,_that.expires_in,_that.user,_that.created_at,_that.loginStateEnum,_that.isFcmTokenSet,_that.fcmToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? access_token,  String? refresh_token,  String? token_type,  int? expires_in,  Map<String, dynamic> user,  String? created_at,  LoginStateEnum? loginStateEnum,  bool? isFcmTokenSet,  String? fcmToken)?  $default,) {final _that = this;
switch (_that) {
case _LoginStateEntity() when $default != null:
return $default(_that.access_token,_that.refresh_token,_that.token_type,_that.expires_in,_that.user,_that.created_at,_that.loginStateEnum,_that.isFcmTokenSet,_that.fcmToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginStateEntity implements LoginStateEntity {
  const _LoginStateEntity({this.access_token = "", this.refresh_token = "", this.token_type = "", this.expires_in = 0, final  Map<String, dynamic> user = const {}, this.created_at = "", this.loginStateEnum = LoginStateEnum.unlogined, this.isFcmTokenSet = false, this.fcmToken = ""}): _user = user;
  factory _LoginStateEntity.fromJson(Map<String, dynamic> json) => _$LoginStateEntityFromJson(json);

@override@JsonKey() final  String? access_token;
@override@JsonKey() final  String? refresh_token;
@override@JsonKey() final  String? token_type;
@override@JsonKey() final  int? expires_in;
 final  Map<String, dynamic> _user;
@override@JsonKey() Map<String, dynamic> get user {
  if (_user is EqualUnmodifiableMapView) return _user;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_user);
}

@override@JsonKey() final  String? created_at;
@override@JsonKey() final  LoginStateEnum? loginStateEnum;
@override@JsonKey() final  bool? isFcmTokenSet;
@override@JsonKey() final  String? fcmToken;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginStateEntity&&(identical(other.access_token, access_token) || other.access_token == access_token)&&(identical(other.refresh_token, refresh_token) || other.refresh_token == refresh_token)&&(identical(other.token_type, token_type) || other.token_type == token_type)&&(identical(other.expires_in, expires_in) || other.expires_in == expires_in)&&const DeepCollectionEquality().equals(other._user, _user)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.loginStateEnum, loginStateEnum) || other.loginStateEnum == loginStateEnum)&&(identical(other.isFcmTokenSet, isFcmTokenSet) || other.isFcmTokenSet == isFcmTokenSet)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,access_token,refresh_token,token_type,expires_in,const DeepCollectionEquality().hash(_user),created_at,loginStateEnum,isFcmTokenSet,fcmToken);

@override
String toString() {
  return 'LoginStateEntity(access_token: $access_token, refresh_token: $refresh_token, token_type: $token_type, expires_in: $expires_in, user: $user, created_at: $created_at, loginStateEnum: $loginStateEnum, isFcmTokenSet: $isFcmTokenSet, fcmToken: $fcmToken)';
}


}

/// @nodoc
abstract mixin class _$LoginStateEntityCopyWith<$Res> implements $LoginStateEntityCopyWith<$Res> {
  factory _$LoginStateEntityCopyWith(_LoginStateEntity value, $Res Function(_LoginStateEntity) _then) = __$LoginStateEntityCopyWithImpl;
@override @useResult
$Res call({
 String? access_token, String? refresh_token, String? token_type, int? expires_in, Map<String, dynamic> user, String? created_at, LoginStateEnum? loginStateEnum, bool? isFcmTokenSet, String? fcmToken
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
@override @pragma('vm:prefer-inline') $Res call({Object? access_token = freezed,Object? refresh_token = freezed,Object? token_type = freezed,Object? expires_in = freezed,Object? user = null,Object? created_at = freezed,Object? loginStateEnum = freezed,Object? isFcmTokenSet = freezed,Object? fcmToken = freezed,}) {
  return _then(_LoginStateEntity(
access_token: freezed == access_token ? _self.access_token : access_token // ignore: cast_nullable_to_non_nullable
as String?,refresh_token: freezed == refresh_token ? _self.refresh_token : refresh_token // ignore: cast_nullable_to_non_nullable
as String?,token_type: freezed == token_type ? _self.token_type : token_type // ignore: cast_nullable_to_non_nullable
as String?,expires_in: freezed == expires_in ? _self.expires_in : expires_in // ignore: cast_nullable_to_non_nullable
as int?,user: null == user ? _self._user : user // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,loginStateEnum: freezed == loginStateEnum ? _self.loginStateEnum : loginStateEnum // ignore: cast_nullable_to_non_nullable
as LoginStateEnum?,isFcmTokenSet: freezed == isFcmTokenSet ? _self.isFcmTokenSet : isFcmTokenSet // ignore: cast_nullable_to_non_nullable
as bool?,fcmToken: freezed == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
