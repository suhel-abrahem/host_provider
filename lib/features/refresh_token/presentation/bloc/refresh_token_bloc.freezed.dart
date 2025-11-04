// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RefreshTokenEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RefreshTokenEvent()';
}


}

/// @nodoc
class $RefreshTokenEventCopyWith<$Res>  {
$RefreshTokenEventCopyWith(RefreshTokenEvent _, $Res Function(RefreshTokenEvent) __);
}


/// Adds pattern-matching-related methods to [RefreshTokenEvent].
extension RefreshTokenEventPatterns on RefreshTokenEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RefreshTokenEventStarted value)?  started,TResult Function( RefreshTokenEventGet value)?  get,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RefreshTokenEventStarted() when started != null:
return started(_that);case RefreshTokenEventGet() when get != null:
return get(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RefreshTokenEventStarted value)  started,required TResult Function( RefreshTokenEventGet value)  get,}){
final _that = this;
switch (_that) {
case RefreshTokenEventStarted():
return started(_that);case RefreshTokenEventGet():
return get(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RefreshTokenEventStarted value)?  started,TResult? Function( RefreshTokenEventGet value)?  get,}){
final _that = this;
switch (_that) {
case RefreshTokenEventStarted() when started != null:
return started(_that);case RefreshTokenEventGet() when get != null:
return get(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( RefreshTokenModel? refreshTokenModel)?  get,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RefreshTokenEventStarted() when started != null:
return started();case RefreshTokenEventGet() when get != null:
return get(_that.refreshTokenModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( RefreshTokenModel? refreshTokenModel)  get,}) {final _that = this;
switch (_that) {
case RefreshTokenEventStarted():
return started();case RefreshTokenEventGet():
return get(_that.refreshTokenModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( RefreshTokenModel? refreshTokenModel)?  get,}) {final _that = this;
switch (_that) {
case RefreshTokenEventStarted() when started != null:
return started();case RefreshTokenEventGet() when get != null:
return get(_that.refreshTokenModel);case _:
  return null;

}
}

}

/// @nodoc


class RefreshTokenEventStarted implements RefreshTokenEvent {
  const RefreshTokenEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RefreshTokenEvent.started()';
}


}




/// @nodoc


class RefreshTokenEventGet implements RefreshTokenEvent {
  const RefreshTokenEventGet(this.refreshTokenModel);
  

 final  RefreshTokenModel? refreshTokenModel;

/// Create a copy of RefreshTokenEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshTokenEventGetCopyWith<RefreshTokenEventGet> get copyWith => _$RefreshTokenEventGetCopyWithImpl<RefreshTokenEventGet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenEventGet&&(identical(other.refreshTokenModel, refreshTokenModel) || other.refreshTokenModel == refreshTokenModel));
}


@override
int get hashCode => Object.hash(runtimeType,refreshTokenModel);

@override
String toString() {
  return 'RefreshTokenEvent.get(refreshTokenModel: $refreshTokenModel)';
}


}

/// @nodoc
abstract mixin class $RefreshTokenEventGetCopyWith<$Res> implements $RefreshTokenEventCopyWith<$Res> {
  factory $RefreshTokenEventGetCopyWith(RefreshTokenEventGet value, $Res Function(RefreshTokenEventGet) _then) = _$RefreshTokenEventGetCopyWithImpl;
@useResult
$Res call({
 RefreshTokenModel? refreshTokenModel
});


$RefreshTokenModelCopyWith<$Res>? get refreshTokenModel;

}
/// @nodoc
class _$RefreshTokenEventGetCopyWithImpl<$Res>
    implements $RefreshTokenEventGetCopyWith<$Res> {
  _$RefreshTokenEventGetCopyWithImpl(this._self, this._then);

  final RefreshTokenEventGet _self;
  final $Res Function(RefreshTokenEventGet) _then;

/// Create a copy of RefreshTokenEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? refreshTokenModel = freezed,}) {
  return _then(RefreshTokenEventGet(
freezed == refreshTokenModel ? _self.refreshTokenModel : refreshTokenModel // ignore: cast_nullable_to_non_nullable
as RefreshTokenModel?,
  ));
}

/// Create a copy of RefreshTokenEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefreshTokenModelCopyWith<$Res>? get refreshTokenModel {
    if (_self.refreshTokenModel == null) {
    return null;
  }

  return $RefreshTokenModelCopyWith<$Res>(_self.refreshTokenModel!, (value) {
    return _then(_self.copyWith(refreshTokenModel: value));
  });
}
}

/// @nodoc
mixin _$RefreshTokenState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RefreshTokenState()';
}


}

/// @nodoc
class $RefreshTokenStateCopyWith<$Res>  {
$RefreshTokenStateCopyWith(RefreshTokenState _, $Res Function(RefreshTokenState) __);
}


/// Adds pattern-matching-related methods to [RefreshTokenState].
extension RefreshTokenStatePatterns on RefreshTokenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RefreshTokenStateInitial value)?  initial,TResult Function( RefreshTokenStateLoading value)?  loading,TResult Function( RefreshTokenStateGot value)?  got,TResult Function( RefreshTokenStateError value)?  error,TResult Function( RefreshTokenStateUnauthenticated value)?  unauthenticated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RefreshTokenStateInitial() when initial != null:
return initial(_that);case RefreshTokenStateLoading() when loading != null:
return loading(_that);case RefreshTokenStateGot() when got != null:
return got(_that);case RefreshTokenStateError() when error != null:
return error(_that);case RefreshTokenStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RefreshTokenStateInitial value)  initial,required TResult Function( RefreshTokenStateLoading value)  loading,required TResult Function( RefreshTokenStateGot value)  got,required TResult Function( RefreshTokenStateError value)  error,required TResult Function( RefreshTokenStateUnauthenticated value)  unauthenticated,}){
final _that = this;
switch (_that) {
case RefreshTokenStateInitial():
return initial(_that);case RefreshTokenStateLoading():
return loading(_that);case RefreshTokenStateGot():
return got(_that);case RefreshTokenStateError():
return error(_that);case RefreshTokenStateUnauthenticated():
return unauthenticated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RefreshTokenStateInitial value)?  initial,TResult? Function( RefreshTokenStateLoading value)?  loading,TResult? Function( RefreshTokenStateGot value)?  got,TResult? Function( RefreshTokenStateError value)?  error,TResult? Function( RefreshTokenStateUnauthenticated value)?  unauthenticated,}){
final _that = this;
switch (_that) {
case RefreshTokenStateInitial() when initial != null:
return initial(_that);case RefreshTokenStateLoading() when loading != null:
return loading(_that);case RefreshTokenStateGot() when got != null:
return got(_that);case RefreshTokenStateError() when error != null:
return error(_that);case RefreshTokenStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( TokenEntity? tokenEntity)?  got,TResult Function()?  error,TResult Function()?  unauthenticated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RefreshTokenStateInitial() when initial != null:
return initial();case RefreshTokenStateLoading() when loading != null:
return loading();case RefreshTokenStateGot() when got != null:
return got(_that.tokenEntity);case RefreshTokenStateError() when error != null:
return error();case RefreshTokenStateUnauthenticated() when unauthenticated != null:
return unauthenticated();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( TokenEntity? tokenEntity)  got,required TResult Function()  error,required TResult Function()  unauthenticated,}) {final _that = this;
switch (_that) {
case RefreshTokenStateInitial():
return initial();case RefreshTokenStateLoading():
return loading();case RefreshTokenStateGot():
return got(_that.tokenEntity);case RefreshTokenStateError():
return error();case RefreshTokenStateUnauthenticated():
return unauthenticated();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( TokenEntity? tokenEntity)?  got,TResult? Function()?  error,TResult? Function()?  unauthenticated,}) {final _that = this;
switch (_that) {
case RefreshTokenStateInitial() when initial != null:
return initial();case RefreshTokenStateLoading() when loading != null:
return loading();case RefreshTokenStateGot() when got != null:
return got(_that.tokenEntity);case RefreshTokenStateError() when error != null:
return error();case RefreshTokenStateUnauthenticated() when unauthenticated != null:
return unauthenticated();case _:
  return null;

}
}

}

/// @nodoc


class RefreshTokenStateInitial implements RefreshTokenState {
  const RefreshTokenStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RefreshTokenState.initial()';
}


}




/// @nodoc


class RefreshTokenStateLoading implements RefreshTokenState {
  const RefreshTokenStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RefreshTokenState.loading()';
}


}




/// @nodoc


class RefreshTokenStateGot implements RefreshTokenState {
  const RefreshTokenStateGot(this.tokenEntity);
  

 final  TokenEntity? tokenEntity;

/// Create a copy of RefreshTokenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshTokenStateGotCopyWith<RefreshTokenStateGot> get copyWith => _$RefreshTokenStateGotCopyWithImpl<RefreshTokenStateGot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenStateGot&&(identical(other.tokenEntity, tokenEntity) || other.tokenEntity == tokenEntity));
}


@override
int get hashCode => Object.hash(runtimeType,tokenEntity);

@override
String toString() {
  return 'RefreshTokenState.got(tokenEntity: $tokenEntity)';
}


}

/// @nodoc
abstract mixin class $RefreshTokenStateGotCopyWith<$Res> implements $RefreshTokenStateCopyWith<$Res> {
  factory $RefreshTokenStateGotCopyWith(RefreshTokenStateGot value, $Res Function(RefreshTokenStateGot) _then) = _$RefreshTokenStateGotCopyWithImpl;
@useResult
$Res call({
 TokenEntity? tokenEntity
});


$TokenEntityCopyWith<$Res>? get tokenEntity;

}
/// @nodoc
class _$RefreshTokenStateGotCopyWithImpl<$Res>
    implements $RefreshTokenStateGotCopyWith<$Res> {
  _$RefreshTokenStateGotCopyWithImpl(this._self, this._then);

  final RefreshTokenStateGot _self;
  final $Res Function(RefreshTokenStateGot) _then;

/// Create a copy of RefreshTokenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tokenEntity = freezed,}) {
  return _then(RefreshTokenStateGot(
freezed == tokenEntity ? _self.tokenEntity : tokenEntity // ignore: cast_nullable_to_non_nullable
as TokenEntity?,
  ));
}

/// Create a copy of RefreshTokenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenEntityCopyWith<$Res>? get tokenEntity {
    if (_self.tokenEntity == null) {
    return null;
  }

  return $TokenEntityCopyWith<$Res>(_self.tokenEntity!, (value) {
    return _then(_self.copyWith(tokenEntity: value));
  });
}
}

/// @nodoc


class RefreshTokenStateError implements RefreshTokenState {
  const RefreshTokenStateError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenStateError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RefreshTokenState.error()';
}


}




/// @nodoc


class RefreshTokenStateUnauthenticated implements RefreshTokenState {
  const RefreshTokenStateUnauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenStateUnauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RefreshTokenState.unauthenticated()';
}


}




// dart format on
