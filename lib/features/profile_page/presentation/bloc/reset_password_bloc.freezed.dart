// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResetPasswordEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPasswordEvent()';
}


}

/// @nodoc
class $ResetPasswordEventCopyWith<$Res>  {
$ResetPasswordEventCopyWith(ResetPasswordEvent _, $Res Function(ResetPasswordEvent) __);
}


/// Adds pattern-matching-related methods to [ResetPasswordEvent].
extension ResetPasswordEventPatterns on ResetPasswordEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ResetPasswordEventStarted value)?  started,TResult Function( ResetPasswordEventRequestResetPassword value)?  requestResetPassword,TResult Function( ResetPasswordEventVerifyOtp value)?  verifyOtp,TResult Function( ResetPasswordEventResetPassword value)?  resetPassword,TResult Function( ResetPasswordEventResentResetPasswordOtp value)?  resentResetPasswordOtp,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ResetPasswordEventStarted() when started != null:
return started(_that);case ResetPasswordEventRequestResetPassword() when requestResetPassword != null:
return requestResetPassword(_that);case ResetPasswordEventVerifyOtp() when verifyOtp != null:
return verifyOtp(_that);case ResetPasswordEventResetPassword() when resetPassword != null:
return resetPassword(_that);case ResetPasswordEventResentResetPasswordOtp() when resentResetPasswordOtp != null:
return resentResetPasswordOtp(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ResetPasswordEventStarted value)  started,required TResult Function( ResetPasswordEventRequestResetPassword value)  requestResetPassword,required TResult Function( ResetPasswordEventVerifyOtp value)  verifyOtp,required TResult Function( ResetPasswordEventResetPassword value)  resetPassword,required TResult Function( ResetPasswordEventResentResetPasswordOtp value)  resentResetPasswordOtp,}){
final _that = this;
switch (_that) {
case ResetPasswordEventStarted():
return started(_that);case ResetPasswordEventRequestResetPassword():
return requestResetPassword(_that);case ResetPasswordEventVerifyOtp():
return verifyOtp(_that);case ResetPasswordEventResetPassword():
return resetPassword(_that);case ResetPasswordEventResentResetPasswordOtp():
return resentResetPasswordOtp(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ResetPasswordEventStarted value)?  started,TResult? Function( ResetPasswordEventRequestResetPassword value)?  requestResetPassword,TResult? Function( ResetPasswordEventVerifyOtp value)?  verifyOtp,TResult? Function( ResetPasswordEventResetPassword value)?  resetPassword,TResult? Function( ResetPasswordEventResentResetPasswordOtp value)?  resentResetPasswordOtp,}){
final _that = this;
switch (_that) {
case ResetPasswordEventStarted() when started != null:
return started(_that);case ResetPasswordEventRequestResetPassword() when requestResetPassword != null:
return requestResetPassword(_that);case ResetPasswordEventVerifyOtp() when verifyOtp != null:
return verifyOtp(_that);case ResetPasswordEventResetPassword() when resetPassword != null:
return resetPassword(_that);case ResetPasswordEventResentResetPasswordOtp() when resentResetPasswordOtp != null:
return resentResetPasswordOtp(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( RequestResetPasswordModel? requestResetPasswordModel)?  requestResetPassword,TResult Function( VerifyOtpModel? verifyOtpModel)?  verifyOtp,TResult Function( ResetPasswordModel? resetPasswordModel)?  resetPassword,TResult Function( ResendResetPasswordOtpModel? resendResetPasswordOtpModel)?  resentResetPasswordOtp,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ResetPasswordEventStarted() when started != null:
return started();case ResetPasswordEventRequestResetPassword() when requestResetPassword != null:
return requestResetPassword(_that.requestResetPasswordModel);case ResetPasswordEventVerifyOtp() when verifyOtp != null:
return verifyOtp(_that.verifyOtpModel);case ResetPasswordEventResetPassword() when resetPassword != null:
return resetPassword(_that.resetPasswordModel);case ResetPasswordEventResentResetPasswordOtp() when resentResetPasswordOtp != null:
return resentResetPasswordOtp(_that.resendResetPasswordOtpModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( RequestResetPasswordModel? requestResetPasswordModel)  requestResetPassword,required TResult Function( VerifyOtpModel? verifyOtpModel)  verifyOtp,required TResult Function( ResetPasswordModel? resetPasswordModel)  resetPassword,required TResult Function( ResendResetPasswordOtpModel? resendResetPasswordOtpModel)  resentResetPasswordOtp,}) {final _that = this;
switch (_that) {
case ResetPasswordEventStarted():
return started();case ResetPasswordEventRequestResetPassword():
return requestResetPassword(_that.requestResetPasswordModel);case ResetPasswordEventVerifyOtp():
return verifyOtp(_that.verifyOtpModel);case ResetPasswordEventResetPassword():
return resetPassword(_that.resetPasswordModel);case ResetPasswordEventResentResetPasswordOtp():
return resentResetPasswordOtp(_that.resendResetPasswordOtpModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( RequestResetPasswordModel? requestResetPasswordModel)?  requestResetPassword,TResult? Function( VerifyOtpModel? verifyOtpModel)?  verifyOtp,TResult? Function( ResetPasswordModel? resetPasswordModel)?  resetPassword,TResult? Function( ResendResetPasswordOtpModel? resendResetPasswordOtpModel)?  resentResetPasswordOtp,}) {final _that = this;
switch (_that) {
case ResetPasswordEventStarted() when started != null:
return started();case ResetPasswordEventRequestResetPassword() when requestResetPassword != null:
return requestResetPassword(_that.requestResetPasswordModel);case ResetPasswordEventVerifyOtp() when verifyOtp != null:
return verifyOtp(_that.verifyOtpModel);case ResetPasswordEventResetPassword() when resetPassword != null:
return resetPassword(_that.resetPasswordModel);case ResetPasswordEventResentResetPasswordOtp() when resentResetPasswordOtp != null:
return resentResetPasswordOtp(_that.resendResetPasswordOtpModel);case _:
  return null;

}
}

}

/// @nodoc


class ResetPasswordEventStarted implements ResetPasswordEvent {
  const ResetPasswordEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPasswordEvent.started()';
}


}




/// @nodoc


class ResetPasswordEventRequestResetPassword implements ResetPasswordEvent {
  const ResetPasswordEventRequestResetPassword({required this.requestResetPasswordModel});
  

 final  RequestResetPasswordModel? requestResetPasswordModel;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordEventRequestResetPasswordCopyWith<ResetPasswordEventRequestResetPassword> get copyWith => _$ResetPasswordEventRequestResetPasswordCopyWithImpl<ResetPasswordEventRequestResetPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordEventRequestResetPassword&&(identical(other.requestResetPasswordModel, requestResetPasswordModel) || other.requestResetPasswordModel == requestResetPasswordModel));
}


@override
int get hashCode => Object.hash(runtimeType,requestResetPasswordModel);

@override
String toString() {
  return 'ResetPasswordEvent.requestResetPassword(requestResetPasswordModel: $requestResetPasswordModel)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordEventRequestResetPasswordCopyWith<$Res> implements $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordEventRequestResetPasswordCopyWith(ResetPasswordEventRequestResetPassword value, $Res Function(ResetPasswordEventRequestResetPassword) _then) = _$ResetPasswordEventRequestResetPasswordCopyWithImpl;
@useResult
$Res call({
 RequestResetPasswordModel? requestResetPasswordModel
});


$RequestResetPasswordModelCopyWith<$Res>? get requestResetPasswordModel;

}
/// @nodoc
class _$ResetPasswordEventRequestResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordEventRequestResetPasswordCopyWith<$Res> {
  _$ResetPasswordEventRequestResetPasswordCopyWithImpl(this._self, this._then);

  final ResetPasswordEventRequestResetPassword _self;
  final $Res Function(ResetPasswordEventRequestResetPassword) _then;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? requestResetPasswordModel = freezed,}) {
  return _then(ResetPasswordEventRequestResetPassword(
requestResetPasswordModel: freezed == requestResetPasswordModel ? _self.requestResetPasswordModel : requestResetPasswordModel // ignore: cast_nullable_to_non_nullable
as RequestResetPasswordModel?,
  ));
}

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestResetPasswordModelCopyWith<$Res>? get requestResetPasswordModel {
    if (_self.requestResetPasswordModel == null) {
    return null;
  }

  return $RequestResetPasswordModelCopyWith<$Res>(_self.requestResetPasswordModel!, (value) {
    return _then(_self.copyWith(requestResetPasswordModel: value));
  });
}
}

/// @nodoc


class ResetPasswordEventVerifyOtp implements ResetPasswordEvent {
  const ResetPasswordEventVerifyOtp({required this.verifyOtpModel});
  

 final  VerifyOtpModel? verifyOtpModel;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordEventVerifyOtpCopyWith<ResetPasswordEventVerifyOtp> get copyWith => _$ResetPasswordEventVerifyOtpCopyWithImpl<ResetPasswordEventVerifyOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordEventVerifyOtp&&(identical(other.verifyOtpModel, verifyOtpModel) || other.verifyOtpModel == verifyOtpModel));
}


@override
int get hashCode => Object.hash(runtimeType,verifyOtpModel);

@override
String toString() {
  return 'ResetPasswordEvent.verifyOtp(verifyOtpModel: $verifyOtpModel)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordEventVerifyOtpCopyWith<$Res> implements $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordEventVerifyOtpCopyWith(ResetPasswordEventVerifyOtp value, $Res Function(ResetPasswordEventVerifyOtp) _then) = _$ResetPasswordEventVerifyOtpCopyWithImpl;
@useResult
$Res call({
 VerifyOtpModel? verifyOtpModel
});


$VerifyOtpModelCopyWith<$Res>? get verifyOtpModel;

}
/// @nodoc
class _$ResetPasswordEventVerifyOtpCopyWithImpl<$Res>
    implements $ResetPasswordEventVerifyOtpCopyWith<$Res> {
  _$ResetPasswordEventVerifyOtpCopyWithImpl(this._self, this._then);

  final ResetPasswordEventVerifyOtp _self;
  final $Res Function(ResetPasswordEventVerifyOtp) _then;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? verifyOtpModel = freezed,}) {
  return _then(ResetPasswordEventVerifyOtp(
verifyOtpModel: freezed == verifyOtpModel ? _self.verifyOtpModel : verifyOtpModel // ignore: cast_nullable_to_non_nullable
as VerifyOtpModel?,
  ));
}

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyOtpModelCopyWith<$Res>? get verifyOtpModel {
    if (_self.verifyOtpModel == null) {
    return null;
  }

  return $VerifyOtpModelCopyWith<$Res>(_self.verifyOtpModel!, (value) {
    return _then(_self.copyWith(verifyOtpModel: value));
  });
}
}

/// @nodoc


class ResetPasswordEventResetPassword implements ResetPasswordEvent {
  const ResetPasswordEventResetPassword({required this.resetPasswordModel});
  

 final  ResetPasswordModel? resetPasswordModel;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordEventResetPasswordCopyWith<ResetPasswordEventResetPassword> get copyWith => _$ResetPasswordEventResetPasswordCopyWithImpl<ResetPasswordEventResetPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordEventResetPassword&&(identical(other.resetPasswordModel, resetPasswordModel) || other.resetPasswordModel == resetPasswordModel));
}


@override
int get hashCode => Object.hash(runtimeType,resetPasswordModel);

@override
String toString() {
  return 'ResetPasswordEvent.resetPassword(resetPasswordModel: $resetPasswordModel)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordEventResetPasswordCopyWith<$Res> implements $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordEventResetPasswordCopyWith(ResetPasswordEventResetPassword value, $Res Function(ResetPasswordEventResetPassword) _then) = _$ResetPasswordEventResetPasswordCopyWithImpl;
@useResult
$Res call({
 ResetPasswordModel? resetPasswordModel
});


$ResetPasswordModelCopyWith<$Res>? get resetPasswordModel;

}
/// @nodoc
class _$ResetPasswordEventResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordEventResetPasswordCopyWith<$Res> {
  _$ResetPasswordEventResetPasswordCopyWithImpl(this._self, this._then);

  final ResetPasswordEventResetPassword _self;
  final $Res Function(ResetPasswordEventResetPassword) _then;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? resetPasswordModel = freezed,}) {
  return _then(ResetPasswordEventResetPassword(
resetPasswordModel: freezed == resetPasswordModel ? _self.resetPasswordModel : resetPasswordModel // ignore: cast_nullable_to_non_nullable
as ResetPasswordModel?,
  ));
}

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResetPasswordModelCopyWith<$Res>? get resetPasswordModel {
    if (_self.resetPasswordModel == null) {
    return null;
  }

  return $ResetPasswordModelCopyWith<$Res>(_self.resetPasswordModel!, (value) {
    return _then(_self.copyWith(resetPasswordModel: value));
  });
}
}

/// @nodoc


class ResetPasswordEventResentResetPasswordOtp implements ResetPasswordEvent {
  const ResetPasswordEventResentResetPasswordOtp({required this.resendResetPasswordOtpModel});
  

 final  ResendResetPasswordOtpModel? resendResetPasswordOtpModel;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordEventResentResetPasswordOtpCopyWith<ResetPasswordEventResentResetPasswordOtp> get copyWith => _$ResetPasswordEventResentResetPasswordOtpCopyWithImpl<ResetPasswordEventResentResetPasswordOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordEventResentResetPasswordOtp&&(identical(other.resendResetPasswordOtpModel, resendResetPasswordOtpModel) || other.resendResetPasswordOtpModel == resendResetPasswordOtpModel));
}


@override
int get hashCode => Object.hash(runtimeType,resendResetPasswordOtpModel);

@override
String toString() {
  return 'ResetPasswordEvent.resentResetPasswordOtp(resendResetPasswordOtpModel: $resendResetPasswordOtpModel)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordEventResentResetPasswordOtpCopyWith<$Res> implements $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordEventResentResetPasswordOtpCopyWith(ResetPasswordEventResentResetPasswordOtp value, $Res Function(ResetPasswordEventResentResetPasswordOtp) _then) = _$ResetPasswordEventResentResetPasswordOtpCopyWithImpl;
@useResult
$Res call({
 ResendResetPasswordOtpModel? resendResetPasswordOtpModel
});


$ResendResetPasswordOtpModelCopyWith<$Res>? get resendResetPasswordOtpModel;

}
/// @nodoc
class _$ResetPasswordEventResentResetPasswordOtpCopyWithImpl<$Res>
    implements $ResetPasswordEventResentResetPasswordOtpCopyWith<$Res> {
  _$ResetPasswordEventResentResetPasswordOtpCopyWithImpl(this._self, this._then);

  final ResetPasswordEventResentResetPasswordOtp _self;
  final $Res Function(ResetPasswordEventResentResetPasswordOtp) _then;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? resendResetPasswordOtpModel = freezed,}) {
  return _then(ResetPasswordEventResentResetPasswordOtp(
resendResetPasswordOtpModel: freezed == resendResetPasswordOtpModel ? _self.resendResetPasswordOtpModel : resendResetPasswordOtpModel // ignore: cast_nullable_to_non_nullable
as ResendResetPasswordOtpModel?,
  ));
}

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResendResetPasswordOtpModelCopyWith<$Res>? get resendResetPasswordOtpModel {
    if (_self.resendResetPasswordOtpModel == null) {
    return null;
  }

  return $ResendResetPasswordOtpModelCopyWith<$Res>(_self.resendResetPasswordOtpModel!, (value) {
    return _then(_self.copyWith(resendResetPasswordOtpModel: value));
  });
}
}

/// @nodoc
mixin _$ResetPasswordState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPasswordState()';
}


}

/// @nodoc
class $ResetPasswordStateCopyWith<$Res>  {
$ResetPasswordStateCopyWith(ResetPasswordState _, $Res Function(ResetPasswordState) __);
}


/// Adds pattern-matching-related methods to [ResetPasswordState].
extension ResetPasswordStatePatterns on ResetPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ResetPasswordStateInitial value)?  initial,TResult Function( ResetPasswordStateLoading value)?  loading,TResult Function( ResetPasswordStateRequestResetPasswordSuccess value)?  requestResetPasswordSuccess,TResult Function( ResetPasswordStateVerifyOtpSuccess value)?  verifyOtpSuccess,TResult Function( ResetPasswordStateResetPasswordSuccess value)?  resetPasswordSuccess,TResult Function( ResetPasswordStateError value)?  error,TResult Function( ResetPasswordStateNoInternet value)?  noInternet,TResult Function( ResetPasswordStateUnauthenticated value)?  unauthenticated,TResult Function( ResetPasswordStateResentResetPasswordOtpSuccess value)?  resentResetPasswordOtpSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ResetPasswordStateInitial() when initial != null:
return initial(_that);case ResetPasswordStateLoading() when loading != null:
return loading(_that);case ResetPasswordStateRequestResetPasswordSuccess() when requestResetPasswordSuccess != null:
return requestResetPasswordSuccess(_that);case ResetPasswordStateVerifyOtpSuccess() when verifyOtpSuccess != null:
return verifyOtpSuccess(_that);case ResetPasswordStateResetPasswordSuccess() when resetPasswordSuccess != null:
return resetPasswordSuccess(_that);case ResetPasswordStateError() when error != null:
return error(_that);case ResetPasswordStateNoInternet() when noInternet != null:
return noInternet(_that);case ResetPasswordStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case ResetPasswordStateResentResetPasswordOtpSuccess() when resentResetPasswordOtpSuccess != null:
return resentResetPasswordOtpSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ResetPasswordStateInitial value)  initial,required TResult Function( ResetPasswordStateLoading value)  loading,required TResult Function( ResetPasswordStateRequestResetPasswordSuccess value)  requestResetPasswordSuccess,required TResult Function( ResetPasswordStateVerifyOtpSuccess value)  verifyOtpSuccess,required TResult Function( ResetPasswordStateResetPasswordSuccess value)  resetPasswordSuccess,required TResult Function( ResetPasswordStateError value)  error,required TResult Function( ResetPasswordStateNoInternet value)  noInternet,required TResult Function( ResetPasswordStateUnauthenticated value)  unauthenticated,required TResult Function( ResetPasswordStateResentResetPasswordOtpSuccess value)  resentResetPasswordOtpSuccess,}){
final _that = this;
switch (_that) {
case ResetPasswordStateInitial():
return initial(_that);case ResetPasswordStateLoading():
return loading(_that);case ResetPasswordStateRequestResetPasswordSuccess():
return requestResetPasswordSuccess(_that);case ResetPasswordStateVerifyOtpSuccess():
return verifyOtpSuccess(_that);case ResetPasswordStateResetPasswordSuccess():
return resetPasswordSuccess(_that);case ResetPasswordStateError():
return error(_that);case ResetPasswordStateNoInternet():
return noInternet(_that);case ResetPasswordStateUnauthenticated():
return unauthenticated(_that);case ResetPasswordStateResentResetPasswordOtpSuccess():
return resentResetPasswordOtpSuccess(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ResetPasswordStateInitial value)?  initial,TResult? Function( ResetPasswordStateLoading value)?  loading,TResult? Function( ResetPasswordStateRequestResetPasswordSuccess value)?  requestResetPasswordSuccess,TResult? Function( ResetPasswordStateVerifyOtpSuccess value)?  verifyOtpSuccess,TResult? Function( ResetPasswordStateResetPasswordSuccess value)?  resetPasswordSuccess,TResult? Function( ResetPasswordStateError value)?  error,TResult? Function( ResetPasswordStateNoInternet value)?  noInternet,TResult? Function( ResetPasswordStateUnauthenticated value)?  unauthenticated,TResult? Function( ResetPasswordStateResentResetPasswordOtpSuccess value)?  resentResetPasswordOtpSuccess,}){
final _that = this;
switch (_that) {
case ResetPasswordStateInitial() when initial != null:
return initial(_that);case ResetPasswordStateLoading() when loading != null:
return loading(_that);case ResetPasswordStateRequestResetPasswordSuccess() when requestResetPasswordSuccess != null:
return requestResetPasswordSuccess(_that);case ResetPasswordStateVerifyOtpSuccess() when verifyOtpSuccess != null:
return verifyOtpSuccess(_that);case ResetPasswordStateResetPasswordSuccess() when resetPasswordSuccess != null:
return resetPasswordSuccess(_that);case ResetPasswordStateError() when error != null:
return error(_that);case ResetPasswordStateNoInternet() when noInternet != null:
return noInternet(_that);case ResetPasswordStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case ResetPasswordStateResentResetPasswordOtpSuccess() when resentResetPasswordOtpSuccess != null:
return resentResetPasswordOtpSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( RequestResetPasswordEntity? requestResetPasswordEntity)?  requestResetPasswordSuccess,TResult Function( VerifyOtpEntity? verifyOtpEntity)?  verifyOtpSuccess,TResult Function()?  resetPasswordSuccess,TResult Function( String error)?  error,TResult Function()?  noInternet,TResult Function( String error)?  unauthenticated,TResult Function()?  resentResetPasswordOtpSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ResetPasswordStateInitial() when initial != null:
return initial();case ResetPasswordStateLoading() when loading != null:
return loading();case ResetPasswordStateRequestResetPasswordSuccess() when requestResetPasswordSuccess != null:
return requestResetPasswordSuccess(_that.requestResetPasswordEntity);case ResetPasswordStateVerifyOtpSuccess() when verifyOtpSuccess != null:
return verifyOtpSuccess(_that.verifyOtpEntity);case ResetPasswordStateResetPasswordSuccess() when resetPasswordSuccess != null:
return resetPasswordSuccess();case ResetPasswordStateError() when error != null:
return error(_that.error);case ResetPasswordStateNoInternet() when noInternet != null:
return noInternet();case ResetPasswordStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that.error);case ResetPasswordStateResentResetPasswordOtpSuccess() when resentResetPasswordOtpSuccess != null:
return resentResetPasswordOtpSuccess();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( RequestResetPasswordEntity? requestResetPasswordEntity)  requestResetPasswordSuccess,required TResult Function( VerifyOtpEntity? verifyOtpEntity)  verifyOtpSuccess,required TResult Function()  resetPasswordSuccess,required TResult Function( String error)  error,required TResult Function()  noInternet,required TResult Function( String error)  unauthenticated,required TResult Function()  resentResetPasswordOtpSuccess,}) {final _that = this;
switch (_that) {
case ResetPasswordStateInitial():
return initial();case ResetPasswordStateLoading():
return loading();case ResetPasswordStateRequestResetPasswordSuccess():
return requestResetPasswordSuccess(_that.requestResetPasswordEntity);case ResetPasswordStateVerifyOtpSuccess():
return verifyOtpSuccess(_that.verifyOtpEntity);case ResetPasswordStateResetPasswordSuccess():
return resetPasswordSuccess();case ResetPasswordStateError():
return error(_that.error);case ResetPasswordStateNoInternet():
return noInternet();case ResetPasswordStateUnauthenticated():
return unauthenticated(_that.error);case ResetPasswordStateResentResetPasswordOtpSuccess():
return resentResetPasswordOtpSuccess();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( RequestResetPasswordEntity? requestResetPasswordEntity)?  requestResetPasswordSuccess,TResult? Function( VerifyOtpEntity? verifyOtpEntity)?  verifyOtpSuccess,TResult? Function()?  resetPasswordSuccess,TResult? Function( String error)?  error,TResult? Function()?  noInternet,TResult? Function( String error)?  unauthenticated,TResult? Function()?  resentResetPasswordOtpSuccess,}) {final _that = this;
switch (_that) {
case ResetPasswordStateInitial() when initial != null:
return initial();case ResetPasswordStateLoading() when loading != null:
return loading();case ResetPasswordStateRequestResetPasswordSuccess() when requestResetPasswordSuccess != null:
return requestResetPasswordSuccess(_that.requestResetPasswordEntity);case ResetPasswordStateVerifyOtpSuccess() when verifyOtpSuccess != null:
return verifyOtpSuccess(_that.verifyOtpEntity);case ResetPasswordStateResetPasswordSuccess() when resetPasswordSuccess != null:
return resetPasswordSuccess();case ResetPasswordStateError() when error != null:
return error(_that.error);case ResetPasswordStateNoInternet() when noInternet != null:
return noInternet();case ResetPasswordStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that.error);case ResetPasswordStateResentResetPasswordOtpSuccess() when resentResetPasswordOtpSuccess != null:
return resentResetPasswordOtpSuccess();case _:
  return null;

}
}

}

/// @nodoc


class ResetPasswordStateInitial implements ResetPasswordState {
  const ResetPasswordStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPasswordState.initial()';
}


}




/// @nodoc


class ResetPasswordStateLoading implements ResetPasswordState {
  const ResetPasswordStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPasswordState.loading()';
}


}




/// @nodoc


class ResetPasswordStateRequestResetPasswordSuccess implements ResetPasswordState {
  const ResetPasswordStateRequestResetPasswordSuccess({required this.requestResetPasswordEntity});
  

 final  RequestResetPasswordEntity? requestResetPasswordEntity;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordStateRequestResetPasswordSuccessCopyWith<ResetPasswordStateRequestResetPasswordSuccess> get copyWith => _$ResetPasswordStateRequestResetPasswordSuccessCopyWithImpl<ResetPasswordStateRequestResetPasswordSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordStateRequestResetPasswordSuccess&&(identical(other.requestResetPasswordEntity, requestResetPasswordEntity) || other.requestResetPasswordEntity == requestResetPasswordEntity));
}


@override
int get hashCode => Object.hash(runtimeType,requestResetPasswordEntity);

@override
String toString() {
  return 'ResetPasswordState.requestResetPasswordSuccess(requestResetPasswordEntity: $requestResetPasswordEntity)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordStateRequestResetPasswordSuccessCopyWith<$Res> implements $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateRequestResetPasswordSuccessCopyWith(ResetPasswordStateRequestResetPasswordSuccess value, $Res Function(ResetPasswordStateRequestResetPasswordSuccess) _then) = _$ResetPasswordStateRequestResetPasswordSuccessCopyWithImpl;
@useResult
$Res call({
 RequestResetPasswordEntity? requestResetPasswordEntity
});


$RequestResetPasswordEntityCopyWith<$Res>? get requestResetPasswordEntity;

}
/// @nodoc
class _$ResetPasswordStateRequestResetPasswordSuccessCopyWithImpl<$Res>
    implements $ResetPasswordStateRequestResetPasswordSuccessCopyWith<$Res> {
  _$ResetPasswordStateRequestResetPasswordSuccessCopyWithImpl(this._self, this._then);

  final ResetPasswordStateRequestResetPasswordSuccess _self;
  final $Res Function(ResetPasswordStateRequestResetPasswordSuccess) _then;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? requestResetPasswordEntity = freezed,}) {
  return _then(ResetPasswordStateRequestResetPasswordSuccess(
requestResetPasswordEntity: freezed == requestResetPasswordEntity ? _self.requestResetPasswordEntity : requestResetPasswordEntity // ignore: cast_nullable_to_non_nullable
as RequestResetPasswordEntity?,
  ));
}

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestResetPasswordEntityCopyWith<$Res>? get requestResetPasswordEntity {
    if (_self.requestResetPasswordEntity == null) {
    return null;
  }

  return $RequestResetPasswordEntityCopyWith<$Res>(_self.requestResetPasswordEntity!, (value) {
    return _then(_self.copyWith(requestResetPasswordEntity: value));
  });
}
}

/// @nodoc


class ResetPasswordStateVerifyOtpSuccess implements ResetPasswordState {
  const ResetPasswordStateVerifyOtpSuccess({required this.verifyOtpEntity});
  

 final  VerifyOtpEntity? verifyOtpEntity;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordStateVerifyOtpSuccessCopyWith<ResetPasswordStateVerifyOtpSuccess> get copyWith => _$ResetPasswordStateVerifyOtpSuccessCopyWithImpl<ResetPasswordStateVerifyOtpSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordStateVerifyOtpSuccess&&(identical(other.verifyOtpEntity, verifyOtpEntity) || other.verifyOtpEntity == verifyOtpEntity));
}


@override
int get hashCode => Object.hash(runtimeType,verifyOtpEntity);

@override
String toString() {
  return 'ResetPasswordState.verifyOtpSuccess(verifyOtpEntity: $verifyOtpEntity)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordStateVerifyOtpSuccessCopyWith<$Res> implements $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateVerifyOtpSuccessCopyWith(ResetPasswordStateVerifyOtpSuccess value, $Res Function(ResetPasswordStateVerifyOtpSuccess) _then) = _$ResetPasswordStateVerifyOtpSuccessCopyWithImpl;
@useResult
$Res call({
 VerifyOtpEntity? verifyOtpEntity
});


$VerifyOtpEntityCopyWith<$Res>? get verifyOtpEntity;

}
/// @nodoc
class _$ResetPasswordStateVerifyOtpSuccessCopyWithImpl<$Res>
    implements $ResetPasswordStateVerifyOtpSuccessCopyWith<$Res> {
  _$ResetPasswordStateVerifyOtpSuccessCopyWithImpl(this._self, this._then);

  final ResetPasswordStateVerifyOtpSuccess _self;
  final $Res Function(ResetPasswordStateVerifyOtpSuccess) _then;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? verifyOtpEntity = freezed,}) {
  return _then(ResetPasswordStateVerifyOtpSuccess(
verifyOtpEntity: freezed == verifyOtpEntity ? _self.verifyOtpEntity : verifyOtpEntity // ignore: cast_nullable_to_non_nullable
as VerifyOtpEntity?,
  ));
}

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyOtpEntityCopyWith<$Res>? get verifyOtpEntity {
    if (_self.verifyOtpEntity == null) {
    return null;
  }

  return $VerifyOtpEntityCopyWith<$Res>(_self.verifyOtpEntity!, (value) {
    return _then(_self.copyWith(verifyOtpEntity: value));
  });
}
}

/// @nodoc


class ResetPasswordStateResetPasswordSuccess implements ResetPasswordState {
  const ResetPasswordStateResetPasswordSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordStateResetPasswordSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPasswordState.resetPasswordSuccess()';
}


}




/// @nodoc


class ResetPasswordStateError implements ResetPasswordState {
  const ResetPasswordStateError({required this.error});
  

 final  String error;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordStateErrorCopyWith<ResetPasswordStateError> get copyWith => _$ResetPasswordStateErrorCopyWithImpl<ResetPasswordStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordStateError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ResetPasswordState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordStateErrorCopyWith<$Res> implements $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateErrorCopyWith(ResetPasswordStateError value, $Res Function(ResetPasswordStateError) _then) = _$ResetPasswordStateErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ResetPasswordStateErrorCopyWithImpl<$Res>
    implements $ResetPasswordStateErrorCopyWith<$Res> {
  _$ResetPasswordStateErrorCopyWithImpl(this._self, this._then);

  final ResetPasswordStateError _self;
  final $Res Function(ResetPasswordStateError) _then;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ResetPasswordStateError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ResetPasswordStateNoInternet implements ResetPasswordState {
  const ResetPasswordStateNoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPasswordState.noInternet()';
}


}




/// @nodoc


class ResetPasswordStateUnauthenticated implements ResetPasswordState {
  const ResetPasswordStateUnauthenticated({required this.error});
  

 final  String error;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordStateUnauthenticatedCopyWith<ResetPasswordStateUnauthenticated> get copyWith => _$ResetPasswordStateUnauthenticatedCopyWithImpl<ResetPasswordStateUnauthenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordStateUnauthenticated&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ResetPasswordState.unauthenticated(error: $error)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordStateUnauthenticatedCopyWith<$Res> implements $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateUnauthenticatedCopyWith(ResetPasswordStateUnauthenticated value, $Res Function(ResetPasswordStateUnauthenticated) _then) = _$ResetPasswordStateUnauthenticatedCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ResetPasswordStateUnauthenticatedCopyWithImpl<$Res>
    implements $ResetPasswordStateUnauthenticatedCopyWith<$Res> {
  _$ResetPasswordStateUnauthenticatedCopyWithImpl(this._self, this._then);

  final ResetPasswordStateUnauthenticated _self;
  final $Res Function(ResetPasswordStateUnauthenticated) _then;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ResetPasswordStateUnauthenticated(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ResetPasswordStateResentResetPasswordOtpSuccess implements ResetPasswordState {
  const ResetPasswordStateResentResetPasswordOtpSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordStateResentResetPasswordOtpSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPasswordState.resentResetPasswordOtpSuccess()';
}


}




// dart format on
