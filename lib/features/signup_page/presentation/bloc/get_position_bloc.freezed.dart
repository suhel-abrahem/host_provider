// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_position_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetPositionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPositionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPositionEvent()';
}


}

/// @nodoc
class $GetPositionEventCopyWith<$Res>  {
$GetPositionEventCopyWith(GetPositionEvent _, $Res Function(GetPositionEvent) __);
}


/// Adds pattern-matching-related methods to [GetPositionEvent].
extension GetPositionEventPatterns on GetPositionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetPositionEventStarted value)?  started,TResult Function( GetPositionEventGet value)?  get,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetPositionEventStarted() when started != null:
return started(_that);case GetPositionEventGet() when get != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetPositionEventStarted value)  started,required TResult Function( GetPositionEventGet value)  get,}){
final _that = this;
switch (_that) {
case GetPositionEventStarted():
return started(_that);case GetPositionEventGet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetPositionEventStarted value)?  started,TResult? Function( GetPositionEventGet value)?  get,}){
final _that = this;
switch (_that) {
case GetPositionEventStarted() when started != null:
return started(_that);case GetPositionEventGet() when get != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  get,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetPositionEventStarted() when started != null:
return started();case GetPositionEventGet() when get != null:
return get();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  get,}) {final _that = this;
switch (_that) {
case GetPositionEventStarted():
return started();case GetPositionEventGet():
return get();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  get,}) {final _that = this;
switch (_that) {
case GetPositionEventStarted() when started != null:
return started();case GetPositionEventGet() when get != null:
return get();case _:
  return null;

}
}

}

/// @nodoc


class GetPositionEventStarted implements GetPositionEvent {
  const GetPositionEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPositionEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPositionEvent.started()';
}


}




/// @nodoc


class GetPositionEventGet implements GetPositionEvent {
  const GetPositionEventGet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPositionEventGet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPositionEvent.get()';
}


}




/// @nodoc
mixin _$GetPositionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPositionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPositionState()';
}


}

/// @nodoc
class $GetPositionStateCopyWith<$Res>  {
$GetPositionStateCopyWith(GetPositionState _, $Res Function(GetPositionState) __);
}


/// Adds pattern-matching-related methods to [GetPositionState].
extension GetPositionStatePatterns on GetPositionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetPositionStateInitial value)?  initial,TResult Function( GetPositionStateLoading value)?  loading,TResult Function( GetPositionStateLocationPermissionDenied value)?  locationPermissionDenied,TResult Function( GetPositionStateLocationPermissionDeniedForever value)?  locationPermissionDeniedForever,TResult Function( GetPositionStateLocationDisabled value)?  locationDisabled,TResult Function( GetPositionStateGot value)?  got,TResult Function( GetPositionStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetPositionStateInitial() when initial != null:
return initial(_that);case GetPositionStateLoading() when loading != null:
return loading(_that);case GetPositionStateLocationPermissionDenied() when locationPermissionDenied != null:
return locationPermissionDenied(_that);case GetPositionStateLocationPermissionDeniedForever() when locationPermissionDeniedForever != null:
return locationPermissionDeniedForever(_that);case GetPositionStateLocationDisabled() when locationDisabled != null:
return locationDisabled(_that);case GetPositionStateGot() when got != null:
return got(_that);case GetPositionStateError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetPositionStateInitial value)  initial,required TResult Function( GetPositionStateLoading value)  loading,required TResult Function( GetPositionStateLocationPermissionDenied value)  locationPermissionDenied,required TResult Function( GetPositionStateLocationPermissionDeniedForever value)  locationPermissionDeniedForever,required TResult Function( GetPositionStateLocationDisabled value)  locationDisabled,required TResult Function( GetPositionStateGot value)  got,required TResult Function( GetPositionStateError value)  error,}){
final _that = this;
switch (_that) {
case GetPositionStateInitial():
return initial(_that);case GetPositionStateLoading():
return loading(_that);case GetPositionStateLocationPermissionDenied():
return locationPermissionDenied(_that);case GetPositionStateLocationPermissionDeniedForever():
return locationPermissionDeniedForever(_that);case GetPositionStateLocationDisabled():
return locationDisabled(_that);case GetPositionStateGot():
return got(_that);case GetPositionStateError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetPositionStateInitial value)?  initial,TResult? Function( GetPositionStateLoading value)?  loading,TResult? Function( GetPositionStateLocationPermissionDenied value)?  locationPermissionDenied,TResult? Function( GetPositionStateLocationPermissionDeniedForever value)?  locationPermissionDeniedForever,TResult? Function( GetPositionStateLocationDisabled value)?  locationDisabled,TResult? Function( GetPositionStateGot value)?  got,TResult? Function( GetPositionStateError value)?  error,}){
final _that = this;
switch (_that) {
case GetPositionStateInitial() when initial != null:
return initial(_that);case GetPositionStateLoading() when loading != null:
return loading(_that);case GetPositionStateLocationPermissionDenied() when locationPermissionDenied != null:
return locationPermissionDenied(_that);case GetPositionStateLocationPermissionDeniedForever() when locationPermissionDeniedForever != null:
return locationPermissionDeniedForever(_that);case GetPositionStateLocationDisabled() when locationDisabled != null:
return locationDisabled(_that);case GetPositionStateGot() when got != null:
return got(_that);case GetPositionStateError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  locationPermissionDenied,TResult Function()?  locationPermissionDeniedForever,TResult Function()?  locationDisabled,TResult Function( PositionEntity? positionEntity)?  got,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetPositionStateInitial() when initial != null:
return initial();case GetPositionStateLoading() when loading != null:
return loading();case GetPositionStateLocationPermissionDenied() when locationPermissionDenied != null:
return locationPermissionDenied();case GetPositionStateLocationPermissionDeniedForever() when locationPermissionDeniedForever != null:
return locationPermissionDeniedForever();case GetPositionStateLocationDisabled() when locationDisabled != null:
return locationDisabled();case GetPositionStateGot() when got != null:
return got(_that.positionEntity);case GetPositionStateError() when error != null:
return error();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  locationPermissionDenied,required TResult Function()  locationPermissionDeniedForever,required TResult Function()  locationDisabled,required TResult Function( PositionEntity? positionEntity)  got,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case GetPositionStateInitial():
return initial();case GetPositionStateLoading():
return loading();case GetPositionStateLocationPermissionDenied():
return locationPermissionDenied();case GetPositionStateLocationPermissionDeniedForever():
return locationPermissionDeniedForever();case GetPositionStateLocationDisabled():
return locationDisabled();case GetPositionStateGot():
return got(_that.positionEntity);case GetPositionStateError():
return error();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  locationPermissionDenied,TResult? Function()?  locationPermissionDeniedForever,TResult? Function()?  locationDisabled,TResult? Function( PositionEntity? positionEntity)?  got,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case GetPositionStateInitial() when initial != null:
return initial();case GetPositionStateLoading() when loading != null:
return loading();case GetPositionStateLocationPermissionDenied() when locationPermissionDenied != null:
return locationPermissionDenied();case GetPositionStateLocationPermissionDeniedForever() when locationPermissionDeniedForever != null:
return locationPermissionDeniedForever();case GetPositionStateLocationDisabled() when locationDisabled != null:
return locationDisabled();case GetPositionStateGot() when got != null:
return got(_that.positionEntity);case GetPositionStateError() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class GetPositionStateInitial implements GetPositionState {
  const GetPositionStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPositionStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPositionState.initial()';
}


}




/// @nodoc


class GetPositionStateLoading implements GetPositionState {
  const GetPositionStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPositionStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPositionState.loading()';
}


}




/// @nodoc


class GetPositionStateLocationPermissionDenied implements GetPositionState {
  const GetPositionStateLocationPermissionDenied();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPositionStateLocationPermissionDenied);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPositionState.locationPermissionDenied()';
}


}




/// @nodoc


class GetPositionStateLocationPermissionDeniedForever implements GetPositionState {
  const GetPositionStateLocationPermissionDeniedForever();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPositionStateLocationPermissionDeniedForever);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPositionState.locationPermissionDeniedForever()';
}


}




/// @nodoc


class GetPositionStateLocationDisabled implements GetPositionState {
  const GetPositionStateLocationDisabled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPositionStateLocationDisabled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPositionState.locationDisabled()';
}


}




/// @nodoc


class GetPositionStateGot implements GetPositionState {
  const GetPositionStateGot({this.positionEntity});
  

 final  PositionEntity? positionEntity;

/// Create a copy of GetPositionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetPositionStateGotCopyWith<GetPositionStateGot> get copyWith => _$GetPositionStateGotCopyWithImpl<GetPositionStateGot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPositionStateGot&&(identical(other.positionEntity, positionEntity) || other.positionEntity == positionEntity));
}


@override
int get hashCode => Object.hash(runtimeType,positionEntity);

@override
String toString() {
  return 'GetPositionState.got(positionEntity: $positionEntity)';
}


}

/// @nodoc
abstract mixin class $GetPositionStateGotCopyWith<$Res> implements $GetPositionStateCopyWith<$Res> {
  factory $GetPositionStateGotCopyWith(GetPositionStateGot value, $Res Function(GetPositionStateGot) _then) = _$GetPositionStateGotCopyWithImpl;
@useResult
$Res call({
 PositionEntity? positionEntity
});


$PositionEntityCopyWith<$Res>? get positionEntity;

}
/// @nodoc
class _$GetPositionStateGotCopyWithImpl<$Res>
    implements $GetPositionStateGotCopyWith<$Res> {
  _$GetPositionStateGotCopyWithImpl(this._self, this._then);

  final GetPositionStateGot _self;
  final $Res Function(GetPositionStateGot) _then;

/// Create a copy of GetPositionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? positionEntity = freezed,}) {
  return _then(GetPositionStateGot(
positionEntity: freezed == positionEntity ? _self.positionEntity : positionEntity // ignore: cast_nullable_to_non_nullable
as PositionEntity?,
  ));
}

/// Create a copy of GetPositionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionEntityCopyWith<$Res>? get positionEntity {
    if (_self.positionEntity == null) {
    return null;
  }

  return $PositionEntityCopyWith<$Res>(_self.positionEntity!, (value) {
    return _then(_self.copyWith(positionEntity: value));
  });
}
}

/// @nodoc


class GetPositionStateError implements GetPositionState {
  const GetPositionStateError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPositionStateError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPositionState.error()';
}


}




// dart format on
