// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OtpPageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpPageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpPageEvent()';
}


}

/// @nodoc
class $OtpPageEventCopyWith<$Res>  {
$OtpPageEventCopyWith(OtpPageEvent _, $Res Function(OtpPageEvent) __);
}


/// Adds pattern-matching-related methods to [OtpPageEvent].
extension OtpPageEventPatterns on OtpPageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OtpPageEventStarted value)?  started,TResult Function( OtpPageEventVerify value)?  verify,TResult Function( OtpPageEventResend value)?  resend,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OtpPageEventStarted() when started != null:
return started(_that);case OtpPageEventVerify() when verify != null:
return verify(_that);case OtpPageEventResend() when resend != null:
return resend(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OtpPageEventStarted value)  started,required TResult Function( OtpPageEventVerify value)  verify,required TResult Function( OtpPageEventResend value)  resend,}){
final _that = this;
switch (_that) {
case OtpPageEventStarted():
return started(_that);case OtpPageEventVerify():
return verify(_that);case OtpPageEventResend():
return resend(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OtpPageEventStarted value)?  started,TResult? Function( OtpPageEventVerify value)?  verify,TResult? Function( OtpPageEventResend value)?  resend,}){
final _that = this;
switch (_that) {
case OtpPageEventStarted() when started != null:
return started(_that);case OtpPageEventVerify() when verify != null:
return verify(_that);case OtpPageEventResend() when resend != null:
return resend(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( OtpModel? otpModel)?  verify,TResult Function( OtpModel? otpModel)?  resend,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OtpPageEventStarted() when started != null:
return started();case OtpPageEventVerify() when verify != null:
return verify(_that.otpModel);case OtpPageEventResend() when resend != null:
return resend(_that.otpModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( OtpModel? otpModel)  verify,required TResult Function( OtpModel? otpModel)  resend,}) {final _that = this;
switch (_that) {
case OtpPageEventStarted():
return started();case OtpPageEventVerify():
return verify(_that.otpModel);case OtpPageEventResend():
return resend(_that.otpModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( OtpModel? otpModel)?  verify,TResult? Function( OtpModel? otpModel)?  resend,}) {final _that = this;
switch (_that) {
case OtpPageEventStarted() when started != null:
return started();case OtpPageEventVerify() when verify != null:
return verify(_that.otpModel);case OtpPageEventResend() when resend != null:
return resend(_that.otpModel);case _:
  return null;

}
}

}

/// @nodoc


class OtpPageEventStarted implements OtpPageEvent {
  const OtpPageEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpPageEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpPageEvent.started()';
}


}




/// @nodoc


class OtpPageEventVerify implements OtpPageEvent {
  const OtpPageEventVerify(this.otpModel);
  

 final  OtpModel? otpModel;

/// Create a copy of OtpPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpPageEventVerifyCopyWith<OtpPageEventVerify> get copyWith => _$OtpPageEventVerifyCopyWithImpl<OtpPageEventVerify>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpPageEventVerify&&(identical(other.otpModel, otpModel) || other.otpModel == otpModel));
}


@override
int get hashCode => Object.hash(runtimeType,otpModel);

@override
String toString() {
  return 'OtpPageEvent.verify(otpModel: $otpModel)';
}


}

/// @nodoc
abstract mixin class $OtpPageEventVerifyCopyWith<$Res> implements $OtpPageEventCopyWith<$Res> {
  factory $OtpPageEventVerifyCopyWith(OtpPageEventVerify value, $Res Function(OtpPageEventVerify) _then) = _$OtpPageEventVerifyCopyWithImpl;
@useResult
$Res call({
 OtpModel? otpModel
});


$OtpModelCopyWith<$Res>? get otpModel;

}
/// @nodoc
class _$OtpPageEventVerifyCopyWithImpl<$Res>
    implements $OtpPageEventVerifyCopyWith<$Res> {
  _$OtpPageEventVerifyCopyWithImpl(this._self, this._then);

  final OtpPageEventVerify _self;
  final $Res Function(OtpPageEventVerify) _then;

/// Create a copy of OtpPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? otpModel = freezed,}) {
  return _then(OtpPageEventVerify(
freezed == otpModel ? _self.otpModel : otpModel // ignore: cast_nullable_to_non_nullable
as OtpModel?,
  ));
}

/// Create a copy of OtpPageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtpModelCopyWith<$Res>? get otpModel {
    if (_self.otpModel == null) {
    return null;
  }

  return $OtpModelCopyWith<$Res>(_self.otpModel!, (value) {
    return _then(_self.copyWith(otpModel: value));
  });
}
}

/// @nodoc


class OtpPageEventResend implements OtpPageEvent {
  const OtpPageEventResend(this.otpModel);
  

 final  OtpModel? otpModel;

/// Create a copy of OtpPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpPageEventResendCopyWith<OtpPageEventResend> get copyWith => _$OtpPageEventResendCopyWithImpl<OtpPageEventResend>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpPageEventResend&&(identical(other.otpModel, otpModel) || other.otpModel == otpModel));
}


@override
int get hashCode => Object.hash(runtimeType,otpModel);

@override
String toString() {
  return 'OtpPageEvent.resend(otpModel: $otpModel)';
}


}

/// @nodoc
abstract mixin class $OtpPageEventResendCopyWith<$Res> implements $OtpPageEventCopyWith<$Res> {
  factory $OtpPageEventResendCopyWith(OtpPageEventResend value, $Res Function(OtpPageEventResend) _then) = _$OtpPageEventResendCopyWithImpl;
@useResult
$Res call({
 OtpModel? otpModel
});


$OtpModelCopyWith<$Res>? get otpModel;

}
/// @nodoc
class _$OtpPageEventResendCopyWithImpl<$Res>
    implements $OtpPageEventResendCopyWith<$Res> {
  _$OtpPageEventResendCopyWithImpl(this._self, this._then);

  final OtpPageEventResend _self;
  final $Res Function(OtpPageEventResend) _then;

/// Create a copy of OtpPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? otpModel = freezed,}) {
  return _then(OtpPageEventResend(
freezed == otpModel ? _self.otpModel : otpModel // ignore: cast_nullable_to_non_nullable
as OtpModel?,
  ));
}

/// Create a copy of OtpPageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtpModelCopyWith<$Res>? get otpModel {
    if (_self.otpModel == null) {
    return null;
  }

  return $OtpModelCopyWith<$Res>(_self.otpModel!, (value) {
    return _then(_self.copyWith(otpModel: value));
  });
}
}

/// @nodoc
mixin _$OtpPageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpPageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpPageState()';
}


}

/// @nodoc
class $OtpPageStateCopyWith<$Res>  {
$OtpPageStateCopyWith(OtpPageState _, $Res Function(OtpPageState) __);
}


/// Adds pattern-matching-related methods to [OtpPageState].
extension OtpPageStatePatterns on OtpPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OtpPageStateInitial value)?  initial,TResult Function( OtpPageStateError value)?  error,TResult Function( OtpPageStateLoading value)?  loading,TResult Function( OtpPageStateVerified value)?  verified,TResult Function( OtpPageStateResent value)?  resent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OtpPageStateInitial() when initial != null:
return initial(_that);case OtpPageStateError() when error != null:
return error(_that);case OtpPageStateLoading() when loading != null:
return loading(_that);case OtpPageStateVerified() when verified != null:
return verified(_that);case OtpPageStateResent() when resent != null:
return resent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OtpPageStateInitial value)  initial,required TResult Function( OtpPageStateError value)  error,required TResult Function( OtpPageStateLoading value)  loading,required TResult Function( OtpPageStateVerified value)  verified,required TResult Function( OtpPageStateResent value)  resent,}){
final _that = this;
switch (_that) {
case OtpPageStateInitial():
return initial(_that);case OtpPageStateError():
return error(_that);case OtpPageStateLoading():
return loading(_that);case OtpPageStateVerified():
return verified(_that);case OtpPageStateResent():
return resent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OtpPageStateInitial value)?  initial,TResult? Function( OtpPageStateError value)?  error,TResult? Function( OtpPageStateLoading value)?  loading,TResult? Function( OtpPageStateVerified value)?  verified,TResult? Function( OtpPageStateResent value)?  resent,}){
final _that = this;
switch (_that) {
case OtpPageStateInitial() when initial != null:
return initial(_that);case OtpPageStateError() when error != null:
return error(_that);case OtpPageStateLoading() when loading != null:
return loading(_that);case OtpPageStateVerified() when verified != null:
return verified(_that);case OtpPageStateResent() when resent != null:
return resent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  error,TResult Function()?  loading,TResult Function( LoginStateEntity? loginStateEntity)?  verified,TResult Function( LoginStateEntity? loginStateEntity)?  resent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OtpPageStateInitial() when initial != null:
return initial();case OtpPageStateError() when error != null:
return error();case OtpPageStateLoading() when loading != null:
return loading();case OtpPageStateVerified() when verified != null:
return verified(_that.loginStateEntity);case OtpPageStateResent() when resent != null:
return resent(_that.loginStateEntity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  error,required TResult Function()  loading,required TResult Function( LoginStateEntity? loginStateEntity)  verified,required TResult Function( LoginStateEntity? loginStateEntity)  resent,}) {final _that = this;
switch (_that) {
case OtpPageStateInitial():
return initial();case OtpPageStateError():
return error();case OtpPageStateLoading():
return loading();case OtpPageStateVerified():
return verified(_that.loginStateEntity);case OtpPageStateResent():
return resent(_that.loginStateEntity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  error,TResult? Function()?  loading,TResult? Function( LoginStateEntity? loginStateEntity)?  verified,TResult? Function( LoginStateEntity? loginStateEntity)?  resent,}) {final _that = this;
switch (_that) {
case OtpPageStateInitial() when initial != null:
return initial();case OtpPageStateError() when error != null:
return error();case OtpPageStateLoading() when loading != null:
return loading();case OtpPageStateVerified() when verified != null:
return verified(_that.loginStateEntity);case OtpPageStateResent() when resent != null:
return resent(_that.loginStateEntity);case _:
  return null;

}
}

}

/// @nodoc


class OtpPageStateInitial implements OtpPageState {
  const OtpPageStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpPageStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpPageState.initial()';
}


}




/// @nodoc


class OtpPageStateError implements OtpPageState {
  const OtpPageStateError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpPageStateError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpPageState.error()';
}


}




/// @nodoc


class OtpPageStateLoading implements OtpPageState {
  const OtpPageStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpPageStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpPageState.loading()';
}


}




/// @nodoc


class OtpPageStateVerified implements OtpPageState {
  const OtpPageStateVerified(this.loginStateEntity);
  

 final  LoginStateEntity? loginStateEntity;

/// Create a copy of OtpPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpPageStateVerifiedCopyWith<OtpPageStateVerified> get copyWith => _$OtpPageStateVerifiedCopyWithImpl<OtpPageStateVerified>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpPageStateVerified&&(identical(other.loginStateEntity, loginStateEntity) || other.loginStateEntity == loginStateEntity));
}


@override
int get hashCode => Object.hash(runtimeType,loginStateEntity);

@override
String toString() {
  return 'OtpPageState.verified(loginStateEntity: $loginStateEntity)';
}


}

/// @nodoc
abstract mixin class $OtpPageStateVerifiedCopyWith<$Res> implements $OtpPageStateCopyWith<$Res> {
  factory $OtpPageStateVerifiedCopyWith(OtpPageStateVerified value, $Res Function(OtpPageStateVerified) _then) = _$OtpPageStateVerifiedCopyWithImpl;
@useResult
$Res call({
 LoginStateEntity? loginStateEntity
});


$LoginStateEntityCopyWith<$Res>? get loginStateEntity;

}
/// @nodoc
class _$OtpPageStateVerifiedCopyWithImpl<$Res>
    implements $OtpPageStateVerifiedCopyWith<$Res> {
  _$OtpPageStateVerifiedCopyWithImpl(this._self, this._then);

  final OtpPageStateVerified _self;
  final $Res Function(OtpPageStateVerified) _then;

/// Create a copy of OtpPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loginStateEntity = freezed,}) {
  return _then(OtpPageStateVerified(
freezed == loginStateEntity ? _self.loginStateEntity : loginStateEntity // ignore: cast_nullable_to_non_nullable
as LoginStateEntity?,
  ));
}

/// Create a copy of OtpPageState
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


class OtpPageStateResent implements OtpPageState {
  const OtpPageStateResent(this.loginStateEntity);
  

 final  LoginStateEntity? loginStateEntity;

/// Create a copy of OtpPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpPageStateResentCopyWith<OtpPageStateResent> get copyWith => _$OtpPageStateResentCopyWithImpl<OtpPageStateResent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpPageStateResent&&(identical(other.loginStateEntity, loginStateEntity) || other.loginStateEntity == loginStateEntity));
}


@override
int get hashCode => Object.hash(runtimeType,loginStateEntity);

@override
String toString() {
  return 'OtpPageState.resent(loginStateEntity: $loginStateEntity)';
}


}

/// @nodoc
abstract mixin class $OtpPageStateResentCopyWith<$Res> implements $OtpPageStateCopyWith<$Res> {
  factory $OtpPageStateResentCopyWith(OtpPageStateResent value, $Res Function(OtpPageStateResent) _then) = _$OtpPageStateResentCopyWithImpl;
@useResult
$Res call({
 LoginStateEntity? loginStateEntity
});


$LoginStateEntityCopyWith<$Res>? get loginStateEntity;

}
/// @nodoc
class _$OtpPageStateResentCopyWithImpl<$Res>
    implements $OtpPageStateResentCopyWith<$Res> {
  _$OtpPageStateResentCopyWithImpl(this._self, this._then);

  final OtpPageStateResent _self;
  final $Res Function(OtpPageStateResent) _then;

/// Create a copy of OtpPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loginStateEntity = freezed,}) {
  return _then(OtpPageStateResent(
freezed == loginStateEntity ? _self.loginStateEntity : loginStateEntity // ignore: cast_nullable_to_non_nullable
as LoginStateEntity?,
  ));
}

/// Create a copy of OtpPageState
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
