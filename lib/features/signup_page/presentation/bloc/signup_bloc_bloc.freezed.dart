// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupBlocEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignupBlocEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupBlocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignupBlocEvent()';
}


}

/// @nodoc
class $SignupBlocEventCopyWith<$Res>  {
$SignupBlocEventCopyWith(SignupBlocEvent _, $Res Function(SignupBlocEvent) __);
}


/// Adds pattern-matching-related methods to [SignupBlocEvent].
extension SignupBlocEventPatterns on SignupBlocEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignupStartEvent value)?  signupStartEvent,TResult Function( SignupSignedInEvent value)?  signupSignedInEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignupStartEvent() when signupStartEvent != null:
return signupStartEvent(_that);case SignupSignedInEvent() when signupSignedInEvent != null:
return signupSignedInEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignupStartEvent value)  signupStartEvent,required TResult Function( SignupSignedInEvent value)  signupSignedInEvent,}){
final _that = this;
switch (_that) {
case SignupStartEvent():
return signupStartEvent(_that);case SignupSignedInEvent():
return signupSignedInEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignupStartEvent value)?  signupStartEvent,TResult? Function( SignupSignedInEvent value)?  signupSignedInEvent,}){
final _that = this;
switch (_that) {
case SignupStartEvent() when signupStartEvent != null:
return signupStartEvent(_that);case SignupSignedInEvent() when signupSignedInEvent != null:
return signupSignedInEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  signupStartEvent,TResult Function( SignupModel? signupModel)?  signupSignedInEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignupStartEvent() when signupStartEvent != null:
return signupStartEvent();case SignupSignedInEvent() when signupSignedInEvent != null:
return signupSignedInEvent(_that.signupModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  signupStartEvent,required TResult Function( SignupModel? signupModel)  signupSignedInEvent,}) {final _that = this;
switch (_that) {
case SignupStartEvent():
return signupStartEvent();case SignupSignedInEvent():
return signupSignedInEvent(_that.signupModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  signupStartEvent,TResult? Function( SignupModel? signupModel)?  signupSignedInEvent,}) {final _that = this;
switch (_that) {
case SignupStartEvent() when signupStartEvent != null:
return signupStartEvent();case SignupSignedInEvent() when signupSignedInEvent != null:
return signupSignedInEvent(_that.signupModel);case _:
  return null;

}
}

}

/// @nodoc


class SignupStartEvent with DiagnosticableTreeMixin implements SignupBlocEvent {
  const SignupStartEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignupBlocEvent.signupStartEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupStartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignupBlocEvent.signupStartEvent()';
}


}




/// @nodoc


class SignupSignedInEvent with DiagnosticableTreeMixin implements SignupBlocEvent {
  const SignupSignedInEvent({required this.signupModel});
  

 final  SignupModel? signupModel;

/// Create a copy of SignupBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupSignedInEventCopyWith<SignupSignedInEvent> get copyWith => _$SignupSignedInEventCopyWithImpl<SignupSignedInEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignupBlocEvent.signupSignedInEvent'))
    ..add(DiagnosticsProperty('signupModel', signupModel));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupSignedInEvent&&(identical(other.signupModel, signupModel) || other.signupModel == signupModel));
}


@override
int get hashCode => Object.hash(runtimeType,signupModel);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignupBlocEvent.signupSignedInEvent(signupModel: $signupModel)';
}


}

/// @nodoc
abstract mixin class $SignupSignedInEventCopyWith<$Res> implements $SignupBlocEventCopyWith<$Res> {
  factory $SignupSignedInEventCopyWith(SignupSignedInEvent value, $Res Function(SignupSignedInEvent) _then) = _$SignupSignedInEventCopyWithImpl;
@useResult
$Res call({
 SignupModel? signupModel
});


$SignupModelCopyWith<$Res>? get signupModel;

}
/// @nodoc
class _$SignupSignedInEventCopyWithImpl<$Res>
    implements $SignupSignedInEventCopyWith<$Res> {
  _$SignupSignedInEventCopyWithImpl(this._self, this._then);

  final SignupSignedInEvent _self;
  final $Res Function(SignupSignedInEvent) _then;

/// Create a copy of SignupBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? signupModel = freezed,}) {
  return _then(SignupSignedInEvent(
signupModel: freezed == signupModel ? _self.signupModel : signupModel // ignore: cast_nullable_to_non_nullable
as SignupModel?,
  ));
}

/// Create a copy of SignupBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignupModelCopyWith<$Res>? get signupModel {
    if (_self.signupModel == null) {
    return null;
  }

  return $SignupModelCopyWith<$Res>(_self.signupModel!, (value) {
    return _then(_self.copyWith(signupModel: value));
  });
}
}

/// @nodoc
mixin _$SignupBlocState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignupBlocState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupBlocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignupBlocState()';
}


}

/// @nodoc
class $SignupBlocStateCopyWith<$Res>  {
$SignupBlocStateCopyWith(SignupBlocState _, $Res Function(SignupBlocState) __);
}


/// Adds pattern-matching-related methods to [SignupBlocState].
extension SignupBlocStatePatterns on SignupBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignupInitialState value)?  initial,TResult Function( SignUpSignedUpState value)?  signupSignedUp,TResult Function( SignupLoadingState value)?  loading,TResult Function( SignupErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignupInitialState() when initial != null:
return initial(_that);case SignUpSignedUpState() when signupSignedUp != null:
return signupSignedUp(_that);case SignupLoadingState() when loading != null:
return loading(_that);case SignupErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignupInitialState value)  initial,required TResult Function( SignUpSignedUpState value)  signupSignedUp,required TResult Function( SignupLoadingState value)  loading,required TResult Function( SignupErrorState value)  error,}){
final _that = this;
switch (_that) {
case SignupInitialState():
return initial(_that);case SignUpSignedUpState():
return signupSignedUp(_that);case SignupLoadingState():
return loading(_that);case SignupErrorState():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignupInitialState value)?  initial,TResult? Function( SignUpSignedUpState value)?  signupSignedUp,TResult? Function( SignupLoadingState value)?  loading,TResult? Function( SignupErrorState value)?  error,}){
final _that = this;
switch (_that) {
case SignupInitialState() when initial != null:
return initial(_that);case SignUpSignedUpState() when signupSignedUp != null:
return signupSignedUp(_that);case SignupLoadingState() when loading != null:
return loading(_that);case SignupErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( SignupInfoEntity? signupInfoEntity)?  signupSignedUp,TResult Function()?  loading,TResult Function( SignupErrorEntity? signupErrorEntity)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignupInitialState() when initial != null:
return initial();case SignUpSignedUpState() when signupSignedUp != null:
return signupSignedUp(_that.signupInfoEntity);case SignupLoadingState() when loading != null:
return loading();case SignupErrorState() when error != null:
return error(_that.signupErrorEntity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( SignupInfoEntity? signupInfoEntity)  signupSignedUp,required TResult Function()  loading,required TResult Function( SignupErrorEntity? signupErrorEntity)  error,}) {final _that = this;
switch (_that) {
case SignupInitialState():
return initial();case SignUpSignedUpState():
return signupSignedUp(_that.signupInfoEntity);case SignupLoadingState():
return loading();case SignupErrorState():
return error(_that.signupErrorEntity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( SignupInfoEntity? signupInfoEntity)?  signupSignedUp,TResult? Function()?  loading,TResult? Function( SignupErrorEntity? signupErrorEntity)?  error,}) {final _that = this;
switch (_that) {
case SignupInitialState() when initial != null:
return initial();case SignUpSignedUpState() when signupSignedUp != null:
return signupSignedUp(_that.signupInfoEntity);case SignupLoadingState() when loading != null:
return loading();case SignupErrorState() when error != null:
return error(_that.signupErrorEntity);case _:
  return null;

}
}

}

/// @nodoc


class SignupInitialState with DiagnosticableTreeMixin implements SignupBlocState {
  const SignupInitialState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignupBlocState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignupBlocState.initial()';
}


}




/// @nodoc


class SignUpSignedUpState with DiagnosticableTreeMixin implements SignupBlocState {
  const SignUpSignedUpState({required this.signupInfoEntity});
  

 final  SignupInfoEntity? signupInfoEntity;

/// Create a copy of SignupBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpSignedUpStateCopyWith<SignUpSignedUpState> get copyWith => _$SignUpSignedUpStateCopyWithImpl<SignUpSignedUpState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignupBlocState.signupSignedUp'))
    ..add(DiagnosticsProperty('signupInfoEntity', signupInfoEntity));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpSignedUpState&&(identical(other.signupInfoEntity, signupInfoEntity) || other.signupInfoEntity == signupInfoEntity));
}


@override
int get hashCode => Object.hash(runtimeType,signupInfoEntity);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignupBlocState.signupSignedUp(signupInfoEntity: $signupInfoEntity)';
}


}

/// @nodoc
abstract mixin class $SignUpSignedUpStateCopyWith<$Res> implements $SignupBlocStateCopyWith<$Res> {
  factory $SignUpSignedUpStateCopyWith(SignUpSignedUpState value, $Res Function(SignUpSignedUpState) _then) = _$SignUpSignedUpStateCopyWithImpl;
@useResult
$Res call({
 SignupInfoEntity? signupInfoEntity
});


$SignupInfoEntityCopyWith<$Res>? get signupInfoEntity;

}
/// @nodoc
class _$SignUpSignedUpStateCopyWithImpl<$Res>
    implements $SignUpSignedUpStateCopyWith<$Res> {
  _$SignUpSignedUpStateCopyWithImpl(this._self, this._then);

  final SignUpSignedUpState _self;
  final $Res Function(SignUpSignedUpState) _then;

/// Create a copy of SignupBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? signupInfoEntity = freezed,}) {
  return _then(SignUpSignedUpState(
signupInfoEntity: freezed == signupInfoEntity ? _self.signupInfoEntity : signupInfoEntity // ignore: cast_nullable_to_non_nullable
as SignupInfoEntity?,
  ));
}

/// Create a copy of SignupBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignupInfoEntityCopyWith<$Res>? get signupInfoEntity {
    if (_self.signupInfoEntity == null) {
    return null;
  }

  return $SignupInfoEntityCopyWith<$Res>(_self.signupInfoEntity!, (value) {
    return _then(_self.copyWith(signupInfoEntity: value));
  });
}
}

/// @nodoc


class SignupLoadingState with DiagnosticableTreeMixin implements SignupBlocState {
  const SignupLoadingState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignupBlocState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignupBlocState.loading()';
}


}




/// @nodoc


class SignupErrorState with DiagnosticableTreeMixin implements SignupBlocState {
  const SignupErrorState(this.signupErrorEntity);
  

 final  SignupErrorEntity? signupErrorEntity;

/// Create a copy of SignupBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupErrorStateCopyWith<SignupErrorState> get copyWith => _$SignupErrorStateCopyWithImpl<SignupErrorState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignupBlocState.error'))
    ..add(DiagnosticsProperty('signupErrorEntity', signupErrorEntity));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupErrorState&&(identical(other.signupErrorEntity, signupErrorEntity) || other.signupErrorEntity == signupErrorEntity));
}


@override
int get hashCode => Object.hash(runtimeType,signupErrorEntity);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignupBlocState.error(signupErrorEntity: $signupErrorEntity)';
}


}

/// @nodoc
abstract mixin class $SignupErrorStateCopyWith<$Res> implements $SignupBlocStateCopyWith<$Res> {
  factory $SignupErrorStateCopyWith(SignupErrorState value, $Res Function(SignupErrorState) _then) = _$SignupErrorStateCopyWithImpl;
@useResult
$Res call({
 SignupErrorEntity? signupErrorEntity
});


$SignupErrorEntityCopyWith<$Res>? get signupErrorEntity;

}
/// @nodoc
class _$SignupErrorStateCopyWithImpl<$Res>
    implements $SignupErrorStateCopyWith<$Res> {
  _$SignupErrorStateCopyWithImpl(this._self, this._then);

  final SignupErrorState _self;
  final $Res Function(SignupErrorState) _then;

/// Create a copy of SignupBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? signupErrorEntity = freezed,}) {
  return _then(SignupErrorState(
freezed == signupErrorEntity ? _self.signupErrorEntity : signupErrorEntity // ignore: cast_nullable_to_non_nullable
as SignupErrorEntity?,
  ));
}

/// Create a copy of SignupBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignupErrorEntityCopyWith<$Res>? get signupErrorEntity {
    if (_self.signupErrorEntity == null) {
    return null;
  }

  return $SignupErrorEntityCopyWith<$Res>(_self.signupErrorEntity!, (value) {
    return _then(_self.copyWith(signupErrorEntity: value));
  });
}
}

// dart format on
