// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginBlocEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginBlocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginBlocEvent()';
}


}

/// @nodoc
class $LoginBlocEventCopyWith<$Res>  {
$LoginBlocEventCopyWith(LoginBlocEvent _, $Res Function(LoginBlocEvent) __);
}


/// Adds pattern-matching-related methods to [LoginBlocEvent].
extension LoginBlocEventPatterns on LoginBlocEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginEventStarted value)?  loginEventStarted,TResult Function( LoginUserEvent value)?  loginUserEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginEventStarted() when loginEventStarted != null:
return loginEventStarted(_that);case LoginUserEvent() when loginUserEvent != null:
return loginUserEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginEventStarted value)  loginEventStarted,required TResult Function( LoginUserEvent value)  loginUserEvent,}){
final _that = this;
switch (_that) {
case LoginEventStarted():
return loginEventStarted(_that);case LoginUserEvent():
return loginUserEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginEventStarted value)?  loginEventStarted,TResult? Function( LoginUserEvent value)?  loginUserEvent,}){
final _that = this;
switch (_that) {
case LoginEventStarted() when loginEventStarted != null:
return loginEventStarted(_that);case LoginUserEvent() when loginUserEvent != null:
return loginUserEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loginEventStarted,TResult Function( LoginStateModel? loginStateModel)?  loginUserEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginEventStarted() when loginEventStarted != null:
return loginEventStarted();case LoginUserEvent() when loginUserEvent != null:
return loginUserEvent(_that.loginStateModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loginEventStarted,required TResult Function( LoginStateModel? loginStateModel)  loginUserEvent,}) {final _that = this;
switch (_that) {
case LoginEventStarted():
return loginEventStarted();case LoginUserEvent():
return loginUserEvent(_that.loginStateModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loginEventStarted,TResult? Function( LoginStateModel? loginStateModel)?  loginUserEvent,}) {final _that = this;
switch (_that) {
case LoginEventStarted() when loginEventStarted != null:
return loginEventStarted();case LoginUserEvent() when loginUserEvent != null:
return loginUserEvent(_that.loginStateModel);case _:
  return null;

}
}

}

/// @nodoc


class LoginEventStarted implements LoginBlocEvent {
  const LoginEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginBlocEvent.loginEventStarted()';
}


}




/// @nodoc


class LoginUserEvent implements LoginBlocEvent {
  const LoginUserEvent({required this.loginStateModel});
  

 final  LoginStateModel? loginStateModel;

/// Create a copy of LoginBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginUserEventCopyWith<LoginUserEvent> get copyWith => _$LoginUserEventCopyWithImpl<LoginUserEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginUserEvent&&(identical(other.loginStateModel, loginStateModel) || other.loginStateModel == loginStateModel));
}


@override
int get hashCode => Object.hash(runtimeType,loginStateModel);

@override
String toString() {
  return 'LoginBlocEvent.loginUserEvent(loginStateModel: $loginStateModel)';
}


}

/// @nodoc
abstract mixin class $LoginUserEventCopyWith<$Res> implements $LoginBlocEventCopyWith<$Res> {
  factory $LoginUserEventCopyWith(LoginUserEvent value, $Res Function(LoginUserEvent) _then) = _$LoginUserEventCopyWithImpl;
@useResult
$Res call({
 LoginStateModel? loginStateModel
});


$LoginStateModelCopyWith<$Res>? get loginStateModel;

}
/// @nodoc
class _$LoginUserEventCopyWithImpl<$Res>
    implements $LoginUserEventCopyWith<$Res> {
  _$LoginUserEventCopyWithImpl(this._self, this._then);

  final LoginUserEvent _self;
  final $Res Function(LoginUserEvent) _then;

/// Create a copy of LoginBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loginStateModel = freezed,}) {
  return _then(LoginUserEvent(
loginStateModel: freezed == loginStateModel ? _self.loginStateModel : loginStateModel // ignore: cast_nullable_to_non_nullable
as LoginStateModel?,
  ));
}

/// Create a copy of LoginBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginStateModelCopyWith<$Res>? get loginStateModel {
    if (_self.loginStateModel == null) {
    return null;
  }

  return $LoginStateModelCopyWith<$Res>(_self.loginStateModel!, (value) {
    return _then(_self.copyWith(loginStateModel: value));
  });
}
}

/// @nodoc
mixin _$LoginBlocState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginBlocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginBlocState()';
}


}

/// @nodoc
class $LoginBlocStateCopyWith<$Res>  {
$LoginBlocStateCopyWith(LoginBlocState _, $Res Function(LoginBlocState) __);
}


/// Adds pattern-matching-related methods to [LoginBlocState].
extension LoginBlocStatePatterns on LoginBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginStateInitial value)?  loginStateInitial,TResult Function( LoginStateLoading value)?  loginStateLoading,TResult Function( LoginStateUnAuthorized value)?  unAuthorized,TResult Function( LoginStateTooManyRequests value)?  tooManyRequests,TResult Function( LoginStateLoaded value)?  loginStateLoaded,TResult Function( LoginStateError value)?  loginStateError,TResult Function( LoginStateNoInternet value)?  loginStateNoInternet,TResult Function( LoginStateOtpRequested value)?  otpRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginStateInitial() when loginStateInitial != null:
return loginStateInitial(_that);case LoginStateLoading() when loginStateLoading != null:
return loginStateLoading(_that);case LoginStateUnAuthorized() when unAuthorized != null:
return unAuthorized(_that);case LoginStateTooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that);case LoginStateLoaded() when loginStateLoaded != null:
return loginStateLoaded(_that);case LoginStateError() when loginStateError != null:
return loginStateError(_that);case LoginStateNoInternet() when loginStateNoInternet != null:
return loginStateNoInternet(_that);case LoginStateOtpRequested() when otpRequested != null:
return otpRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginStateInitial value)  loginStateInitial,required TResult Function( LoginStateLoading value)  loginStateLoading,required TResult Function( LoginStateUnAuthorized value)  unAuthorized,required TResult Function( LoginStateTooManyRequests value)  tooManyRequests,required TResult Function( LoginStateLoaded value)  loginStateLoaded,required TResult Function( LoginStateError value)  loginStateError,required TResult Function( LoginStateNoInternet value)  loginStateNoInternet,required TResult Function( LoginStateOtpRequested value)  otpRequested,}){
final _that = this;
switch (_that) {
case LoginStateInitial():
return loginStateInitial(_that);case LoginStateLoading():
return loginStateLoading(_that);case LoginStateUnAuthorized():
return unAuthorized(_that);case LoginStateTooManyRequests():
return tooManyRequests(_that);case LoginStateLoaded():
return loginStateLoaded(_that);case LoginStateError():
return loginStateError(_that);case LoginStateNoInternet():
return loginStateNoInternet(_that);case LoginStateOtpRequested():
return otpRequested(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginStateInitial value)?  loginStateInitial,TResult? Function( LoginStateLoading value)?  loginStateLoading,TResult? Function( LoginStateUnAuthorized value)?  unAuthorized,TResult? Function( LoginStateTooManyRequests value)?  tooManyRequests,TResult? Function( LoginStateLoaded value)?  loginStateLoaded,TResult? Function( LoginStateError value)?  loginStateError,TResult? Function( LoginStateNoInternet value)?  loginStateNoInternet,TResult? Function( LoginStateOtpRequested value)?  otpRequested,}){
final _that = this;
switch (_that) {
case LoginStateInitial() when loginStateInitial != null:
return loginStateInitial(_that);case LoginStateLoading() when loginStateLoading != null:
return loginStateLoading(_that);case LoginStateUnAuthorized() when unAuthorized != null:
return unAuthorized(_that);case LoginStateTooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that);case LoginStateLoaded() when loginStateLoaded != null:
return loginStateLoaded(_that);case LoginStateError() when loginStateError != null:
return loginStateError(_that);case LoginStateNoInternet() when loginStateNoInternet != null:
return loginStateNoInternet(_that);case LoginStateOtpRequested() when otpRequested != null:
return otpRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loginStateInitial,TResult Function()?  loginStateLoading,TResult Function()?  unAuthorized,TResult Function( LoginStateEntity? loginStateEntity)?  tooManyRequests,TResult Function( LoginStateEntity? loginStateEntity)?  loginStateLoaded,TResult Function( String? message)?  loginStateError,TResult Function()?  loginStateNoInternet,TResult Function( LoginStateEntity? loginStateEntity)?  otpRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginStateInitial() when loginStateInitial != null:
return loginStateInitial();case LoginStateLoading() when loginStateLoading != null:
return loginStateLoading();case LoginStateUnAuthorized() when unAuthorized != null:
return unAuthorized();case LoginStateTooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that.loginStateEntity);case LoginStateLoaded() when loginStateLoaded != null:
return loginStateLoaded(_that.loginStateEntity);case LoginStateError() when loginStateError != null:
return loginStateError(_that.message);case LoginStateNoInternet() when loginStateNoInternet != null:
return loginStateNoInternet();case LoginStateOtpRequested() when otpRequested != null:
return otpRequested(_that.loginStateEntity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loginStateInitial,required TResult Function()  loginStateLoading,required TResult Function()  unAuthorized,required TResult Function( LoginStateEntity? loginStateEntity)  tooManyRequests,required TResult Function( LoginStateEntity? loginStateEntity)  loginStateLoaded,required TResult Function( String? message)  loginStateError,required TResult Function()  loginStateNoInternet,required TResult Function( LoginStateEntity? loginStateEntity)  otpRequested,}) {final _that = this;
switch (_that) {
case LoginStateInitial():
return loginStateInitial();case LoginStateLoading():
return loginStateLoading();case LoginStateUnAuthorized():
return unAuthorized();case LoginStateTooManyRequests():
return tooManyRequests(_that.loginStateEntity);case LoginStateLoaded():
return loginStateLoaded(_that.loginStateEntity);case LoginStateError():
return loginStateError(_that.message);case LoginStateNoInternet():
return loginStateNoInternet();case LoginStateOtpRequested():
return otpRequested(_that.loginStateEntity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loginStateInitial,TResult? Function()?  loginStateLoading,TResult? Function()?  unAuthorized,TResult? Function( LoginStateEntity? loginStateEntity)?  tooManyRequests,TResult? Function( LoginStateEntity? loginStateEntity)?  loginStateLoaded,TResult? Function( String? message)?  loginStateError,TResult? Function()?  loginStateNoInternet,TResult? Function( LoginStateEntity? loginStateEntity)?  otpRequested,}) {final _that = this;
switch (_that) {
case LoginStateInitial() when loginStateInitial != null:
return loginStateInitial();case LoginStateLoading() when loginStateLoading != null:
return loginStateLoading();case LoginStateUnAuthorized() when unAuthorized != null:
return unAuthorized();case LoginStateTooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that.loginStateEntity);case LoginStateLoaded() when loginStateLoaded != null:
return loginStateLoaded(_that.loginStateEntity);case LoginStateError() when loginStateError != null:
return loginStateError(_that.message);case LoginStateNoInternet() when loginStateNoInternet != null:
return loginStateNoInternet();case LoginStateOtpRequested() when otpRequested != null:
return otpRequested(_that.loginStateEntity);case _:
  return null;

}
}

}

/// @nodoc


class LoginStateInitial implements LoginBlocState {
  const LoginStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginBlocState.loginStateInitial()';
}


}




/// @nodoc


class LoginStateLoading implements LoginBlocState {
  const LoginStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginBlocState.loginStateLoading()';
}


}




/// @nodoc


class LoginStateUnAuthorized implements LoginBlocState {
  const LoginStateUnAuthorized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginStateUnAuthorized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginBlocState.unAuthorized()';
}


}




/// @nodoc


class LoginStateTooManyRequests implements LoginBlocState {
  const LoginStateTooManyRequests({required this.loginStateEntity});
  

 final  LoginStateEntity? loginStateEntity;

/// Create a copy of LoginBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateTooManyRequestsCopyWith<LoginStateTooManyRequests> get copyWith => _$LoginStateTooManyRequestsCopyWithImpl<LoginStateTooManyRequests>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginStateTooManyRequests&&(identical(other.loginStateEntity, loginStateEntity) || other.loginStateEntity == loginStateEntity));
}


@override
int get hashCode => Object.hash(runtimeType,loginStateEntity);

@override
String toString() {
  return 'LoginBlocState.tooManyRequests(loginStateEntity: $loginStateEntity)';
}


}

/// @nodoc
abstract mixin class $LoginStateTooManyRequestsCopyWith<$Res> implements $LoginBlocStateCopyWith<$Res> {
  factory $LoginStateTooManyRequestsCopyWith(LoginStateTooManyRequests value, $Res Function(LoginStateTooManyRequests) _then) = _$LoginStateTooManyRequestsCopyWithImpl;
@useResult
$Res call({
 LoginStateEntity? loginStateEntity
});


$LoginStateEntityCopyWith<$Res>? get loginStateEntity;

}
/// @nodoc
class _$LoginStateTooManyRequestsCopyWithImpl<$Res>
    implements $LoginStateTooManyRequestsCopyWith<$Res> {
  _$LoginStateTooManyRequestsCopyWithImpl(this._self, this._then);

  final LoginStateTooManyRequests _self;
  final $Res Function(LoginStateTooManyRequests) _then;

/// Create a copy of LoginBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loginStateEntity = freezed,}) {
  return _then(LoginStateTooManyRequests(
loginStateEntity: freezed == loginStateEntity ? _self.loginStateEntity : loginStateEntity // ignore: cast_nullable_to_non_nullable
as LoginStateEntity?,
  ));
}

/// Create a copy of LoginBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginStateEntityCopyWith<$Res>? get loginStateEntity {
    if (_self.loginStateEntity == null) {
    return null;
  }

  return $LoginStateEntityCopyWith<$Res>(_self.loginStateEntity!, (value) {
    return _then(_self.copyWith(loginStateEntity: value));
  });
}
}

/// @nodoc


class LoginStateLoaded implements LoginBlocState {
  const LoginStateLoaded({required this.loginStateEntity});
  

 final  LoginStateEntity? loginStateEntity;

/// Create a copy of LoginBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateLoadedCopyWith<LoginStateLoaded> get copyWith => _$LoginStateLoadedCopyWithImpl<LoginStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginStateLoaded&&(identical(other.loginStateEntity, loginStateEntity) || other.loginStateEntity == loginStateEntity));
}


@override
int get hashCode => Object.hash(runtimeType,loginStateEntity);

@override
String toString() {
  return 'LoginBlocState.loginStateLoaded(loginStateEntity: $loginStateEntity)';
}


}

/// @nodoc
abstract mixin class $LoginStateLoadedCopyWith<$Res> implements $LoginBlocStateCopyWith<$Res> {
  factory $LoginStateLoadedCopyWith(LoginStateLoaded value, $Res Function(LoginStateLoaded) _then) = _$LoginStateLoadedCopyWithImpl;
@useResult
$Res call({
 LoginStateEntity? loginStateEntity
});


$LoginStateEntityCopyWith<$Res>? get loginStateEntity;

}
/// @nodoc
class _$LoginStateLoadedCopyWithImpl<$Res>
    implements $LoginStateLoadedCopyWith<$Res> {
  _$LoginStateLoadedCopyWithImpl(this._self, this._then);

  final LoginStateLoaded _self;
  final $Res Function(LoginStateLoaded) _then;

/// Create a copy of LoginBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loginStateEntity = freezed,}) {
  return _then(LoginStateLoaded(
loginStateEntity: freezed == loginStateEntity ? _self.loginStateEntity : loginStateEntity // ignore: cast_nullable_to_non_nullable
as LoginStateEntity?,
  ));
}

/// Create a copy of LoginBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginStateEntityCopyWith<$Res>? get loginStateEntity {
    if (_self.loginStateEntity == null) {
    return null;
  }

  return $LoginStateEntityCopyWith<$Res>(_self.loginStateEntity!, (value) {
    return _then(_self.copyWith(loginStateEntity: value));
  });
}
}

/// @nodoc


class LoginStateError implements LoginBlocState {
  const LoginStateError({required this.message});
  

 final  String? message;

/// Create a copy of LoginBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateErrorCopyWith<LoginStateError> get copyWith => _$LoginStateErrorCopyWithImpl<LoginStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoginBlocState.loginStateError(message: $message)';
}


}

/// @nodoc
abstract mixin class $LoginStateErrorCopyWith<$Res> implements $LoginBlocStateCopyWith<$Res> {
  factory $LoginStateErrorCopyWith(LoginStateError value, $Res Function(LoginStateError) _then) = _$LoginStateErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$LoginStateErrorCopyWithImpl<$Res>
    implements $LoginStateErrorCopyWith<$Res> {
  _$LoginStateErrorCopyWithImpl(this._self, this._then);

  final LoginStateError _self;
  final $Res Function(LoginStateError) _then;

/// Create a copy of LoginBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(LoginStateError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class LoginStateNoInternet implements LoginBlocState {
  const LoginStateNoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginBlocState.loginStateNoInternet()';
}


}




/// @nodoc


class LoginStateOtpRequested implements LoginBlocState {
  const LoginStateOtpRequested({required this.loginStateEntity});
  

 final  LoginStateEntity? loginStateEntity;

/// Create a copy of LoginBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateOtpRequestedCopyWith<LoginStateOtpRequested> get copyWith => _$LoginStateOtpRequestedCopyWithImpl<LoginStateOtpRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginStateOtpRequested&&(identical(other.loginStateEntity, loginStateEntity) || other.loginStateEntity == loginStateEntity));
}


@override
int get hashCode => Object.hash(runtimeType,loginStateEntity);

@override
String toString() {
  return 'LoginBlocState.otpRequested(loginStateEntity: $loginStateEntity)';
}


}

/// @nodoc
abstract mixin class $LoginStateOtpRequestedCopyWith<$Res> implements $LoginBlocStateCopyWith<$Res> {
  factory $LoginStateOtpRequestedCopyWith(LoginStateOtpRequested value, $Res Function(LoginStateOtpRequested) _then) = _$LoginStateOtpRequestedCopyWithImpl;
@useResult
$Res call({
 LoginStateEntity? loginStateEntity
});


$LoginStateEntityCopyWith<$Res>? get loginStateEntity;

}
/// @nodoc
class _$LoginStateOtpRequestedCopyWithImpl<$Res>
    implements $LoginStateOtpRequestedCopyWith<$Res> {
  _$LoginStateOtpRequestedCopyWithImpl(this._self, this._then);

  final LoginStateOtpRequested _self;
  final $Res Function(LoginStateOtpRequested) _then;

/// Create a copy of LoginBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loginStateEntity = freezed,}) {
  return _then(LoginStateOtpRequested(
loginStateEntity: freezed == loginStateEntity ? _self.loginStateEntity : loginStateEntity // ignore: cast_nullable_to_non_nullable
as LoginStateEntity?,
  ));
}

/// Create a copy of LoginBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginStateEntityCopyWith<$Res>? get loginStateEntity {
    if (_self.loginStateEntity == null) {
    return null;
  }

  return $LoginStateEntityCopyWith<$Res>(_self.loginStateEntity!, (value) {
    return _then(_self.copyWith(loginStateEntity: value));
  });
}
}

// dart format on
