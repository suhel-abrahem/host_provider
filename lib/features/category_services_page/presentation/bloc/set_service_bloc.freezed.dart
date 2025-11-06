// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SetServiceEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetServiceEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetServiceEvent()';
}


}

/// @nodoc
class $SetServiceEventCopyWith<$Res>  {
$SetServiceEventCopyWith(SetServiceEvent _, $Res Function(SetServiceEvent) __);
}


/// Adds pattern-matching-related methods to [SetServiceEvent].
extension SetServiceEventPatterns on SetServiceEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SetServiceEventStarted value)?  started,TResult Function( SetServiceEventSet value)?  set,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SetServiceEventStarted() when started != null:
return started(_that);case SetServiceEventSet() when set != null:
return set(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SetServiceEventStarted value)  started,required TResult Function( SetServiceEventSet value)  set,}){
final _that = this;
switch (_that) {
case SetServiceEventStarted():
return started(_that);case SetServiceEventSet():
return set(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SetServiceEventStarted value)?  started,TResult? Function( SetServiceEventSet value)?  set,}){
final _that = this;
switch (_that) {
case SetServiceEventStarted() when started != null:
return started(_that);case SetServiceEventSet() when set != null:
return set(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( SetServiceModel? setServiceModel)?  set,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SetServiceEventStarted() when started != null:
return started();case SetServiceEventSet() when set != null:
return set(_that.setServiceModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( SetServiceModel? setServiceModel)  set,}) {final _that = this;
switch (_that) {
case SetServiceEventStarted():
return started();case SetServiceEventSet():
return set(_that.setServiceModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( SetServiceModel? setServiceModel)?  set,}) {final _that = this;
switch (_that) {
case SetServiceEventStarted() when started != null:
return started();case SetServiceEventSet() when set != null:
return set(_that.setServiceModel);case _:
  return null;

}
}

}

/// @nodoc


class SetServiceEventStarted implements SetServiceEvent {
  const SetServiceEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetServiceEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetServiceEvent.started()';
}


}




/// @nodoc


class SetServiceEventSet implements SetServiceEvent {
  const SetServiceEventSet(this.setServiceModel);
  

 final  SetServiceModel? setServiceModel;

/// Create a copy of SetServiceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetServiceEventSetCopyWith<SetServiceEventSet> get copyWith => _$SetServiceEventSetCopyWithImpl<SetServiceEventSet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetServiceEventSet&&(identical(other.setServiceModel, setServiceModel) || other.setServiceModel == setServiceModel));
}


@override
int get hashCode => Object.hash(runtimeType,setServiceModel);

@override
String toString() {
  return 'SetServiceEvent.set(setServiceModel: $setServiceModel)';
}


}

/// @nodoc
abstract mixin class $SetServiceEventSetCopyWith<$Res> implements $SetServiceEventCopyWith<$Res> {
  factory $SetServiceEventSetCopyWith(SetServiceEventSet value, $Res Function(SetServiceEventSet) _then) = _$SetServiceEventSetCopyWithImpl;
@useResult
$Res call({
 SetServiceModel? setServiceModel
});


$SetServiceModelCopyWith<$Res>? get setServiceModel;

}
/// @nodoc
class _$SetServiceEventSetCopyWithImpl<$Res>
    implements $SetServiceEventSetCopyWith<$Res> {
  _$SetServiceEventSetCopyWithImpl(this._self, this._then);

  final SetServiceEventSet _self;
  final $Res Function(SetServiceEventSet) _then;

/// Create a copy of SetServiceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? setServiceModel = freezed,}) {
  return _then(SetServiceEventSet(
freezed == setServiceModel ? _self.setServiceModel : setServiceModel // ignore: cast_nullable_to_non_nullable
as SetServiceModel?,
  ));
}

/// Create a copy of SetServiceEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SetServiceModelCopyWith<$Res>? get setServiceModel {
    if (_self.setServiceModel == null) {
    return null;
  }

  return $SetServiceModelCopyWith<$Res>(_self.setServiceModel!, (value) {
    return _then(_self.copyWith(setServiceModel: value));
  });
}
}

/// @nodoc
mixin _$SetServiceState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetServiceState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetServiceState()';
}


}

/// @nodoc
class $SetServiceStateCopyWith<$Res>  {
$SetServiceStateCopyWith(SetServiceState _, $Res Function(SetServiceState) __);
}


/// Adds pattern-matching-related methods to [SetServiceState].
extension SetServiceStatePatterns on SetServiceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SetServiceStateInitial value)?  initial,TResult Function( SetServiceStateNoInternet value)?  noInternet,TResult Function( SetServiceStateLoading value)?  loading,TResult Function( SetServiceStateSetError value)?  setError,TResult Function( SetServiceStateSetServiceStateAlreadyExist value)?  SetServiceStateAlreadyExist,TResult Function( SetServiceStateAdded value)?  added,TResult Function( SetServiceStateUnAuthorized value)?  unAuthorized,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SetServiceStateInitial() when initial != null:
return initial(_that);case SetServiceStateNoInternet() when noInternet != null:
return noInternet(_that);case SetServiceStateLoading() when loading != null:
return loading(_that);case SetServiceStateSetError() when setError != null:
return setError(_that);case SetServiceStateSetServiceStateAlreadyExist() when SetServiceStateAlreadyExist != null:
return SetServiceStateAlreadyExist(_that);case SetServiceStateAdded() when added != null:
return added(_that);case SetServiceStateUnAuthorized() when unAuthorized != null:
return unAuthorized(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SetServiceStateInitial value)  initial,required TResult Function( SetServiceStateNoInternet value)  noInternet,required TResult Function( SetServiceStateLoading value)  loading,required TResult Function( SetServiceStateSetError value)  setError,required TResult Function( SetServiceStateSetServiceStateAlreadyExist value)  SetServiceStateAlreadyExist,required TResult Function( SetServiceStateAdded value)  added,required TResult Function( SetServiceStateUnAuthorized value)  unAuthorized,}){
final _that = this;
switch (_that) {
case SetServiceStateInitial():
return initial(_that);case SetServiceStateNoInternet():
return noInternet(_that);case SetServiceStateLoading():
return loading(_that);case SetServiceStateSetError():
return setError(_that);case SetServiceStateSetServiceStateAlreadyExist():
return SetServiceStateAlreadyExist(_that);case SetServiceStateAdded():
return added(_that);case SetServiceStateUnAuthorized():
return unAuthorized(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SetServiceStateInitial value)?  initial,TResult? Function( SetServiceStateNoInternet value)?  noInternet,TResult? Function( SetServiceStateLoading value)?  loading,TResult? Function( SetServiceStateSetError value)?  setError,TResult? Function( SetServiceStateSetServiceStateAlreadyExist value)?  SetServiceStateAlreadyExist,TResult? Function( SetServiceStateAdded value)?  added,TResult? Function( SetServiceStateUnAuthorized value)?  unAuthorized,}){
final _that = this;
switch (_that) {
case SetServiceStateInitial() when initial != null:
return initial(_that);case SetServiceStateNoInternet() when noInternet != null:
return noInternet(_that);case SetServiceStateLoading() when loading != null:
return loading(_that);case SetServiceStateSetError() when setError != null:
return setError(_that);case SetServiceStateSetServiceStateAlreadyExist() when SetServiceStateAlreadyExist != null:
return SetServiceStateAlreadyExist(_that);case SetServiceStateAdded() when added != null:
return added(_that);case SetServiceStateUnAuthorized() when unAuthorized != null:
return unAuthorized(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  noInternet,TResult Function()?  loading,TResult Function( ServiceEntity? serviceEntity)?  setError,TResult Function( ServiceEntity? serviceEntity)?  SetServiceStateAlreadyExist,TResult Function( ServiceEntity? serviceEntity)?  added,TResult Function()?  unAuthorized,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SetServiceStateInitial() when initial != null:
return initial();case SetServiceStateNoInternet() when noInternet != null:
return noInternet();case SetServiceStateLoading() when loading != null:
return loading();case SetServiceStateSetError() when setError != null:
return setError(_that.serviceEntity);case SetServiceStateSetServiceStateAlreadyExist() when SetServiceStateAlreadyExist != null:
return SetServiceStateAlreadyExist(_that.serviceEntity);case SetServiceStateAdded() when added != null:
return added(_that.serviceEntity);case SetServiceStateUnAuthorized() when unAuthorized != null:
return unAuthorized();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  noInternet,required TResult Function()  loading,required TResult Function( ServiceEntity? serviceEntity)  setError,required TResult Function( ServiceEntity? serviceEntity)  SetServiceStateAlreadyExist,required TResult Function( ServiceEntity? serviceEntity)  added,required TResult Function()  unAuthorized,}) {final _that = this;
switch (_that) {
case SetServiceStateInitial():
return initial();case SetServiceStateNoInternet():
return noInternet();case SetServiceStateLoading():
return loading();case SetServiceStateSetError():
return setError(_that.serviceEntity);case SetServiceStateSetServiceStateAlreadyExist():
return SetServiceStateAlreadyExist(_that.serviceEntity);case SetServiceStateAdded():
return added(_that.serviceEntity);case SetServiceStateUnAuthorized():
return unAuthorized();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  noInternet,TResult? Function()?  loading,TResult? Function( ServiceEntity? serviceEntity)?  setError,TResult? Function( ServiceEntity? serviceEntity)?  SetServiceStateAlreadyExist,TResult? Function( ServiceEntity? serviceEntity)?  added,TResult? Function()?  unAuthorized,}) {final _that = this;
switch (_that) {
case SetServiceStateInitial() when initial != null:
return initial();case SetServiceStateNoInternet() when noInternet != null:
return noInternet();case SetServiceStateLoading() when loading != null:
return loading();case SetServiceStateSetError() when setError != null:
return setError(_that.serviceEntity);case SetServiceStateSetServiceStateAlreadyExist() when SetServiceStateAlreadyExist != null:
return SetServiceStateAlreadyExist(_that.serviceEntity);case SetServiceStateAdded() when added != null:
return added(_that.serviceEntity);case SetServiceStateUnAuthorized() when unAuthorized != null:
return unAuthorized();case _:
  return null;

}
}

}

/// @nodoc


class SetServiceStateInitial implements SetServiceState {
  const SetServiceStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetServiceStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetServiceState.initial()';
}


}




/// @nodoc


class SetServiceStateNoInternet implements SetServiceState {
  const SetServiceStateNoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetServiceStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetServiceState.noInternet()';
}


}




/// @nodoc


class SetServiceStateLoading implements SetServiceState {
  const SetServiceStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetServiceStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetServiceState.loading()';
}


}




/// @nodoc


class SetServiceStateSetError implements SetServiceState {
  const SetServiceStateSetError({this.serviceEntity});
  

 final  ServiceEntity? serviceEntity;

/// Create a copy of SetServiceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetServiceStateSetErrorCopyWith<SetServiceStateSetError> get copyWith => _$SetServiceStateSetErrorCopyWithImpl<SetServiceStateSetError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetServiceStateSetError&&(identical(other.serviceEntity, serviceEntity) || other.serviceEntity == serviceEntity));
}


@override
int get hashCode => Object.hash(runtimeType,serviceEntity);

@override
String toString() {
  return 'SetServiceState.setError(serviceEntity: $serviceEntity)';
}


}

/// @nodoc
abstract mixin class $SetServiceStateSetErrorCopyWith<$Res> implements $SetServiceStateCopyWith<$Res> {
  factory $SetServiceStateSetErrorCopyWith(SetServiceStateSetError value, $Res Function(SetServiceStateSetError) _then) = _$SetServiceStateSetErrorCopyWithImpl;
@useResult
$Res call({
 ServiceEntity? serviceEntity
});


$ServiceEntityCopyWith<$Res>? get serviceEntity;

}
/// @nodoc
class _$SetServiceStateSetErrorCopyWithImpl<$Res>
    implements $SetServiceStateSetErrorCopyWith<$Res> {
  _$SetServiceStateSetErrorCopyWithImpl(this._self, this._then);

  final SetServiceStateSetError _self;
  final $Res Function(SetServiceStateSetError) _then;

/// Create a copy of SetServiceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? serviceEntity = freezed,}) {
  return _then(SetServiceStateSetError(
serviceEntity: freezed == serviceEntity ? _self.serviceEntity : serviceEntity // ignore: cast_nullable_to_non_nullable
as ServiceEntity?,
  ));
}

/// Create a copy of SetServiceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceEntityCopyWith<$Res>? get serviceEntity {
    if (_self.serviceEntity == null) {
    return null;
  }

  return $ServiceEntityCopyWith<$Res>(_self.serviceEntity!, (value) {
    return _then(_self.copyWith(serviceEntity: value));
  });
}
}

/// @nodoc


class SetServiceStateSetServiceStateAlreadyExist implements SetServiceState {
  const SetServiceStateSetServiceStateAlreadyExist({this.serviceEntity});
  

 final  ServiceEntity? serviceEntity;

/// Create a copy of SetServiceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetServiceStateSetServiceStateAlreadyExistCopyWith<SetServiceStateSetServiceStateAlreadyExist> get copyWith => _$SetServiceStateSetServiceStateAlreadyExistCopyWithImpl<SetServiceStateSetServiceStateAlreadyExist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetServiceStateSetServiceStateAlreadyExist&&(identical(other.serviceEntity, serviceEntity) || other.serviceEntity == serviceEntity));
}


@override
int get hashCode => Object.hash(runtimeType,serviceEntity);

@override
String toString() {
  return 'SetServiceState.SetServiceStateAlreadyExist(serviceEntity: $serviceEntity)';
}


}

/// @nodoc
abstract mixin class $SetServiceStateSetServiceStateAlreadyExistCopyWith<$Res> implements $SetServiceStateCopyWith<$Res> {
  factory $SetServiceStateSetServiceStateAlreadyExistCopyWith(SetServiceStateSetServiceStateAlreadyExist value, $Res Function(SetServiceStateSetServiceStateAlreadyExist) _then) = _$SetServiceStateSetServiceStateAlreadyExistCopyWithImpl;
@useResult
$Res call({
 ServiceEntity? serviceEntity
});


$ServiceEntityCopyWith<$Res>? get serviceEntity;

}
/// @nodoc
class _$SetServiceStateSetServiceStateAlreadyExistCopyWithImpl<$Res>
    implements $SetServiceStateSetServiceStateAlreadyExistCopyWith<$Res> {
  _$SetServiceStateSetServiceStateAlreadyExistCopyWithImpl(this._self, this._then);

  final SetServiceStateSetServiceStateAlreadyExist _self;
  final $Res Function(SetServiceStateSetServiceStateAlreadyExist) _then;

/// Create a copy of SetServiceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? serviceEntity = freezed,}) {
  return _then(SetServiceStateSetServiceStateAlreadyExist(
serviceEntity: freezed == serviceEntity ? _self.serviceEntity : serviceEntity // ignore: cast_nullable_to_non_nullable
as ServiceEntity?,
  ));
}

/// Create a copy of SetServiceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceEntityCopyWith<$Res>? get serviceEntity {
    if (_self.serviceEntity == null) {
    return null;
  }

  return $ServiceEntityCopyWith<$Res>(_self.serviceEntity!, (value) {
    return _then(_self.copyWith(serviceEntity: value));
  });
}
}

/// @nodoc


class SetServiceStateAdded implements SetServiceState {
  const SetServiceStateAdded(this.serviceEntity);
  

 final  ServiceEntity? serviceEntity;

/// Create a copy of SetServiceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetServiceStateAddedCopyWith<SetServiceStateAdded> get copyWith => _$SetServiceStateAddedCopyWithImpl<SetServiceStateAdded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetServiceStateAdded&&(identical(other.serviceEntity, serviceEntity) || other.serviceEntity == serviceEntity));
}


@override
int get hashCode => Object.hash(runtimeType,serviceEntity);

@override
String toString() {
  return 'SetServiceState.added(serviceEntity: $serviceEntity)';
}


}

/// @nodoc
abstract mixin class $SetServiceStateAddedCopyWith<$Res> implements $SetServiceStateCopyWith<$Res> {
  factory $SetServiceStateAddedCopyWith(SetServiceStateAdded value, $Res Function(SetServiceStateAdded) _then) = _$SetServiceStateAddedCopyWithImpl;
@useResult
$Res call({
 ServiceEntity? serviceEntity
});


$ServiceEntityCopyWith<$Res>? get serviceEntity;

}
/// @nodoc
class _$SetServiceStateAddedCopyWithImpl<$Res>
    implements $SetServiceStateAddedCopyWith<$Res> {
  _$SetServiceStateAddedCopyWithImpl(this._self, this._then);

  final SetServiceStateAdded _self;
  final $Res Function(SetServiceStateAdded) _then;

/// Create a copy of SetServiceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? serviceEntity = freezed,}) {
  return _then(SetServiceStateAdded(
freezed == serviceEntity ? _self.serviceEntity : serviceEntity // ignore: cast_nullable_to_non_nullable
as ServiceEntity?,
  ));
}

/// Create a copy of SetServiceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceEntityCopyWith<$Res>? get serviceEntity {
    if (_self.serviceEntity == null) {
    return null;
  }

  return $ServiceEntityCopyWith<$Res>(_self.serviceEntity!, (value) {
    return _then(_self.copyWith(serviceEntity: value));
  });
}
}

/// @nodoc


class SetServiceStateUnAuthorized implements SetServiceState {
  const SetServiceStateUnAuthorized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetServiceStateUnAuthorized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetServiceState.unAuthorized()';
}


}




// dart format on
