// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_working_time_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetWorkingTimeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetWorkingTimeEvent()';
}


}

/// @nodoc
class $GetWorkingTimeEventCopyWith<$Res>  {
$GetWorkingTimeEventCopyWith(GetWorkingTimeEvent _, $Res Function(GetWorkingTimeEvent) __);
}


/// Adds pattern-matching-related methods to [GetWorkingTimeEvent].
extension GetWorkingTimeEventPatterns on GetWorkingTimeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetWorkingTimeEventStarted value)?  started,TResult Function( GetWorkingTimeEventGetWorkingTime value)?  getWorkingTime,TResult Function( GetWorkingTimeEventSetWorkingTime value)?  setWorkingTime,TResult Function( GetWorkingTimeEventUpdateWorkingTime value)?  updateWorkingTime,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetWorkingTimeEventStarted() when started != null:
return started(_that);case GetWorkingTimeEventGetWorkingTime() when getWorkingTime != null:
return getWorkingTime(_that);case GetWorkingTimeEventSetWorkingTime() when setWorkingTime != null:
return setWorkingTime(_that);case GetWorkingTimeEventUpdateWorkingTime() when updateWorkingTime != null:
return updateWorkingTime(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetWorkingTimeEventStarted value)  started,required TResult Function( GetWorkingTimeEventGetWorkingTime value)  getWorkingTime,required TResult Function( GetWorkingTimeEventSetWorkingTime value)  setWorkingTime,required TResult Function( GetWorkingTimeEventUpdateWorkingTime value)  updateWorkingTime,}){
final _that = this;
switch (_that) {
case GetWorkingTimeEventStarted():
return started(_that);case GetWorkingTimeEventGetWorkingTime():
return getWorkingTime(_that);case GetWorkingTimeEventSetWorkingTime():
return setWorkingTime(_that);case GetWorkingTimeEventUpdateWorkingTime():
return updateWorkingTime(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetWorkingTimeEventStarted value)?  started,TResult? Function( GetWorkingTimeEventGetWorkingTime value)?  getWorkingTime,TResult? Function( GetWorkingTimeEventSetWorkingTime value)?  setWorkingTime,TResult? Function( GetWorkingTimeEventUpdateWorkingTime value)?  updateWorkingTime,}){
final _that = this;
switch (_that) {
case GetWorkingTimeEventStarted() when started != null:
return started(_that);case GetWorkingTimeEventGetWorkingTime() when getWorkingTime != null:
return getWorkingTime(_that);case GetWorkingTimeEventSetWorkingTime() when setWorkingTime != null:
return setWorkingTime(_that);case GetWorkingTimeEventUpdateWorkingTime() when updateWorkingTime != null:
return updateWorkingTime(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( ProfileModel? profileModel)?  getWorkingTime,TResult Function( SetWorkingHoursModel? setWorkingHoursModel)?  setWorkingTime,TResult Function( SetWorkingHoursModel? setWorkingHoursModel)?  updateWorkingTime,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetWorkingTimeEventStarted() when started != null:
return started();case GetWorkingTimeEventGetWorkingTime() when getWorkingTime != null:
return getWorkingTime(_that.profileModel);case GetWorkingTimeEventSetWorkingTime() when setWorkingTime != null:
return setWorkingTime(_that.setWorkingHoursModel);case GetWorkingTimeEventUpdateWorkingTime() when updateWorkingTime != null:
return updateWorkingTime(_that.setWorkingHoursModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( ProfileModel? profileModel)  getWorkingTime,required TResult Function( SetWorkingHoursModel? setWorkingHoursModel)  setWorkingTime,required TResult Function( SetWorkingHoursModel? setWorkingHoursModel)  updateWorkingTime,}) {final _that = this;
switch (_that) {
case GetWorkingTimeEventStarted():
return started();case GetWorkingTimeEventGetWorkingTime():
return getWorkingTime(_that.profileModel);case GetWorkingTimeEventSetWorkingTime():
return setWorkingTime(_that.setWorkingHoursModel);case GetWorkingTimeEventUpdateWorkingTime():
return updateWorkingTime(_that.setWorkingHoursModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( ProfileModel? profileModel)?  getWorkingTime,TResult? Function( SetWorkingHoursModel? setWorkingHoursModel)?  setWorkingTime,TResult? Function( SetWorkingHoursModel? setWorkingHoursModel)?  updateWorkingTime,}) {final _that = this;
switch (_that) {
case GetWorkingTimeEventStarted() when started != null:
return started();case GetWorkingTimeEventGetWorkingTime() when getWorkingTime != null:
return getWorkingTime(_that.profileModel);case GetWorkingTimeEventSetWorkingTime() when setWorkingTime != null:
return setWorkingTime(_that.setWorkingHoursModel);case GetWorkingTimeEventUpdateWorkingTime() when updateWorkingTime != null:
return updateWorkingTime(_that.setWorkingHoursModel);case _:
  return null;

}
}

}

/// @nodoc


class GetWorkingTimeEventStarted implements GetWorkingTimeEvent {
  const GetWorkingTimeEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetWorkingTimeEvent.started()';
}


}




/// @nodoc


class GetWorkingTimeEventGetWorkingTime implements GetWorkingTimeEvent {
  const GetWorkingTimeEventGetWorkingTime({this.profileModel});
  

 final  ProfileModel? profileModel;

/// Create a copy of GetWorkingTimeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWorkingTimeEventGetWorkingTimeCopyWith<GetWorkingTimeEventGetWorkingTime> get copyWith => _$GetWorkingTimeEventGetWorkingTimeCopyWithImpl<GetWorkingTimeEventGetWorkingTime>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeEventGetWorkingTime&&(identical(other.profileModel, profileModel) || other.profileModel == profileModel));
}


@override
int get hashCode => Object.hash(runtimeType,profileModel);

@override
String toString() {
  return 'GetWorkingTimeEvent.getWorkingTime(profileModel: $profileModel)';
}


}

/// @nodoc
abstract mixin class $GetWorkingTimeEventGetWorkingTimeCopyWith<$Res> implements $GetWorkingTimeEventCopyWith<$Res> {
  factory $GetWorkingTimeEventGetWorkingTimeCopyWith(GetWorkingTimeEventGetWorkingTime value, $Res Function(GetWorkingTimeEventGetWorkingTime) _then) = _$GetWorkingTimeEventGetWorkingTimeCopyWithImpl;
@useResult
$Res call({
 ProfileModel? profileModel
});


$ProfileModelCopyWith<$Res>? get profileModel;

}
/// @nodoc
class _$GetWorkingTimeEventGetWorkingTimeCopyWithImpl<$Res>
    implements $GetWorkingTimeEventGetWorkingTimeCopyWith<$Res> {
  _$GetWorkingTimeEventGetWorkingTimeCopyWithImpl(this._self, this._then);

  final GetWorkingTimeEventGetWorkingTime _self;
  final $Res Function(GetWorkingTimeEventGetWorkingTime) _then;

/// Create a copy of GetWorkingTimeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profileModel = freezed,}) {
  return _then(GetWorkingTimeEventGetWorkingTime(
profileModel: freezed == profileModel ? _self.profileModel : profileModel // ignore: cast_nullable_to_non_nullable
as ProfileModel?,
  ));
}

/// Create a copy of GetWorkingTimeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<$Res>? get profileModel {
    if (_self.profileModel == null) {
    return null;
  }

  return $ProfileModelCopyWith<$Res>(_self.profileModel!, (value) {
    return _then(_self.copyWith(profileModel: value));
  });
}
}

/// @nodoc


class GetWorkingTimeEventSetWorkingTime implements GetWorkingTimeEvent {
  const GetWorkingTimeEventSetWorkingTime({this.setWorkingHoursModel});
  

 final  SetWorkingHoursModel? setWorkingHoursModel;

/// Create a copy of GetWorkingTimeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWorkingTimeEventSetWorkingTimeCopyWith<GetWorkingTimeEventSetWorkingTime> get copyWith => _$GetWorkingTimeEventSetWorkingTimeCopyWithImpl<GetWorkingTimeEventSetWorkingTime>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeEventSetWorkingTime&&(identical(other.setWorkingHoursModel, setWorkingHoursModel) || other.setWorkingHoursModel == setWorkingHoursModel));
}


@override
int get hashCode => Object.hash(runtimeType,setWorkingHoursModel);

@override
String toString() {
  return 'GetWorkingTimeEvent.setWorkingTime(setWorkingHoursModel: $setWorkingHoursModel)';
}


}

/// @nodoc
abstract mixin class $GetWorkingTimeEventSetWorkingTimeCopyWith<$Res> implements $GetWorkingTimeEventCopyWith<$Res> {
  factory $GetWorkingTimeEventSetWorkingTimeCopyWith(GetWorkingTimeEventSetWorkingTime value, $Res Function(GetWorkingTimeEventSetWorkingTime) _then) = _$GetWorkingTimeEventSetWorkingTimeCopyWithImpl;
@useResult
$Res call({
 SetWorkingHoursModel? setWorkingHoursModel
});


$SetWorkingHoursModelCopyWith<$Res>? get setWorkingHoursModel;

}
/// @nodoc
class _$GetWorkingTimeEventSetWorkingTimeCopyWithImpl<$Res>
    implements $GetWorkingTimeEventSetWorkingTimeCopyWith<$Res> {
  _$GetWorkingTimeEventSetWorkingTimeCopyWithImpl(this._self, this._then);

  final GetWorkingTimeEventSetWorkingTime _self;
  final $Res Function(GetWorkingTimeEventSetWorkingTime) _then;

/// Create a copy of GetWorkingTimeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? setWorkingHoursModel = freezed,}) {
  return _then(GetWorkingTimeEventSetWorkingTime(
setWorkingHoursModel: freezed == setWorkingHoursModel ? _self.setWorkingHoursModel : setWorkingHoursModel // ignore: cast_nullable_to_non_nullable
as SetWorkingHoursModel?,
  ));
}

/// Create a copy of GetWorkingTimeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SetWorkingHoursModelCopyWith<$Res>? get setWorkingHoursModel {
    if (_self.setWorkingHoursModel == null) {
    return null;
  }

  return $SetWorkingHoursModelCopyWith<$Res>(_self.setWorkingHoursModel!, (value) {
    return _then(_self.copyWith(setWorkingHoursModel: value));
  });
}
}

/// @nodoc


class GetWorkingTimeEventUpdateWorkingTime implements GetWorkingTimeEvent {
  const GetWorkingTimeEventUpdateWorkingTime({this.setWorkingHoursModel});
  

 final  SetWorkingHoursModel? setWorkingHoursModel;

/// Create a copy of GetWorkingTimeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWorkingTimeEventUpdateWorkingTimeCopyWith<GetWorkingTimeEventUpdateWorkingTime> get copyWith => _$GetWorkingTimeEventUpdateWorkingTimeCopyWithImpl<GetWorkingTimeEventUpdateWorkingTime>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeEventUpdateWorkingTime&&(identical(other.setWorkingHoursModel, setWorkingHoursModel) || other.setWorkingHoursModel == setWorkingHoursModel));
}


@override
int get hashCode => Object.hash(runtimeType,setWorkingHoursModel);

@override
String toString() {
  return 'GetWorkingTimeEvent.updateWorkingTime(setWorkingHoursModel: $setWorkingHoursModel)';
}


}

/// @nodoc
abstract mixin class $GetWorkingTimeEventUpdateWorkingTimeCopyWith<$Res> implements $GetWorkingTimeEventCopyWith<$Res> {
  factory $GetWorkingTimeEventUpdateWorkingTimeCopyWith(GetWorkingTimeEventUpdateWorkingTime value, $Res Function(GetWorkingTimeEventUpdateWorkingTime) _then) = _$GetWorkingTimeEventUpdateWorkingTimeCopyWithImpl;
@useResult
$Res call({
 SetWorkingHoursModel? setWorkingHoursModel
});


$SetWorkingHoursModelCopyWith<$Res>? get setWorkingHoursModel;

}
/// @nodoc
class _$GetWorkingTimeEventUpdateWorkingTimeCopyWithImpl<$Res>
    implements $GetWorkingTimeEventUpdateWorkingTimeCopyWith<$Res> {
  _$GetWorkingTimeEventUpdateWorkingTimeCopyWithImpl(this._self, this._then);

  final GetWorkingTimeEventUpdateWorkingTime _self;
  final $Res Function(GetWorkingTimeEventUpdateWorkingTime) _then;

/// Create a copy of GetWorkingTimeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? setWorkingHoursModel = freezed,}) {
  return _then(GetWorkingTimeEventUpdateWorkingTime(
setWorkingHoursModel: freezed == setWorkingHoursModel ? _self.setWorkingHoursModel : setWorkingHoursModel // ignore: cast_nullable_to_non_nullable
as SetWorkingHoursModel?,
  ));
}

/// Create a copy of GetWorkingTimeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SetWorkingHoursModelCopyWith<$Res>? get setWorkingHoursModel {
    if (_self.setWorkingHoursModel == null) {
    return null;
  }

  return $SetWorkingHoursModelCopyWith<$Res>(_self.setWorkingHoursModel!, (value) {
    return _then(_self.copyWith(setWorkingHoursModel: value));
  });
}
}

/// @nodoc
mixin _$GetWorkingTimeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetWorkingTimeState()';
}


}

/// @nodoc
class $GetWorkingTimeStateCopyWith<$Res>  {
$GetWorkingTimeStateCopyWith(GetWorkingTimeState _, $Res Function(GetWorkingTimeState) __);
}


/// Adds pattern-matching-related methods to [GetWorkingTimeState].
extension GetWorkingTimeStatePatterns on GetWorkingTimeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetWorkingTimeStateInitial value)?  initial,TResult Function( GetWorkingTimeStateLoading value)?  loading,TResult Function( GetWorkingTimeStateLoaded value)?  loaded,TResult Function( GetWorkingTimeStateError value)?  error,TResult Function( GetWorkingTimeStateUnauthorized value)?  unauthorized,TResult Function( GetWorkingTimeStateNoInternet value)?  noInternet,TResult Function( GetWorkingTimeStateUpdated value)?  updated,TResult Function( GetWorkingTimeStateNoData value)?  noData,TResult Function( GetWorkingTimeStateSetSuccessfully value)?  setSuccessfully,TResult Function( GetWorkingTimeStateSetError value)?  setError,TResult Function( GetWorkingTimeStateItemsNotFound value)?  itemNotFound,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetWorkingTimeStateInitial() when initial != null:
return initial(_that);case GetWorkingTimeStateLoading() when loading != null:
return loading(_that);case GetWorkingTimeStateLoaded() when loaded != null:
return loaded(_that);case GetWorkingTimeStateError() when error != null:
return error(_that);case GetWorkingTimeStateUnauthorized() when unauthorized != null:
return unauthorized(_that);case GetWorkingTimeStateNoInternet() when noInternet != null:
return noInternet(_that);case GetWorkingTimeStateUpdated() when updated != null:
return updated(_that);case GetWorkingTimeStateNoData() when noData != null:
return noData(_that);case GetWorkingTimeStateSetSuccessfully() when setSuccessfully != null:
return setSuccessfully(_that);case GetWorkingTimeStateSetError() when setError != null:
return setError(_that);case GetWorkingTimeStateItemsNotFound() when itemNotFound != null:
return itemNotFound(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetWorkingTimeStateInitial value)  initial,required TResult Function( GetWorkingTimeStateLoading value)  loading,required TResult Function( GetWorkingTimeStateLoaded value)  loaded,required TResult Function( GetWorkingTimeStateError value)  error,required TResult Function( GetWorkingTimeStateUnauthorized value)  unauthorized,required TResult Function( GetWorkingTimeStateNoInternet value)  noInternet,required TResult Function( GetWorkingTimeStateUpdated value)  updated,required TResult Function( GetWorkingTimeStateNoData value)  noData,required TResult Function( GetWorkingTimeStateSetSuccessfully value)  setSuccessfully,required TResult Function( GetWorkingTimeStateSetError value)  setError,required TResult Function( GetWorkingTimeStateItemsNotFound value)  itemNotFound,}){
final _that = this;
switch (_that) {
case GetWorkingTimeStateInitial():
return initial(_that);case GetWorkingTimeStateLoading():
return loading(_that);case GetWorkingTimeStateLoaded():
return loaded(_that);case GetWorkingTimeStateError():
return error(_that);case GetWorkingTimeStateUnauthorized():
return unauthorized(_that);case GetWorkingTimeStateNoInternet():
return noInternet(_that);case GetWorkingTimeStateUpdated():
return updated(_that);case GetWorkingTimeStateNoData():
return noData(_that);case GetWorkingTimeStateSetSuccessfully():
return setSuccessfully(_that);case GetWorkingTimeStateSetError():
return setError(_that);case GetWorkingTimeStateItemsNotFound():
return itemNotFound(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetWorkingTimeStateInitial value)?  initial,TResult? Function( GetWorkingTimeStateLoading value)?  loading,TResult? Function( GetWorkingTimeStateLoaded value)?  loaded,TResult? Function( GetWorkingTimeStateError value)?  error,TResult? Function( GetWorkingTimeStateUnauthorized value)?  unauthorized,TResult? Function( GetWorkingTimeStateNoInternet value)?  noInternet,TResult? Function( GetWorkingTimeStateUpdated value)?  updated,TResult? Function( GetWorkingTimeStateNoData value)?  noData,TResult? Function( GetWorkingTimeStateSetSuccessfully value)?  setSuccessfully,TResult? Function( GetWorkingTimeStateSetError value)?  setError,TResult? Function( GetWorkingTimeStateItemsNotFound value)?  itemNotFound,}){
final _that = this;
switch (_that) {
case GetWorkingTimeStateInitial() when initial != null:
return initial(_that);case GetWorkingTimeStateLoading() when loading != null:
return loading(_that);case GetWorkingTimeStateLoaded() when loaded != null:
return loaded(_that);case GetWorkingTimeStateError() when error != null:
return error(_that);case GetWorkingTimeStateUnauthorized() when unauthorized != null:
return unauthorized(_that);case GetWorkingTimeStateNoInternet() when noInternet != null:
return noInternet(_that);case GetWorkingTimeStateUpdated() when updated != null:
return updated(_that);case GetWorkingTimeStateNoData() when noData != null:
return noData(_that);case GetWorkingTimeStateSetSuccessfully() when setSuccessfully != null:
return setSuccessfully(_that);case GetWorkingTimeStateSetError() when setError != null:
return setError(_that);case GetWorkingTimeStateItemsNotFound() when itemNotFound != null:
return itemNotFound(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<WorkingHoursEntity?>? workingHours)?  loaded,TResult Function()?  error,TResult Function()?  unauthorized,TResult Function()?  noInternet,TResult Function()?  updated,TResult Function()?  noData,TResult Function()?  setSuccessfully,TResult Function()?  setError,TResult Function()?  itemNotFound,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetWorkingTimeStateInitial() when initial != null:
return initial();case GetWorkingTimeStateLoading() when loading != null:
return loading();case GetWorkingTimeStateLoaded() when loaded != null:
return loaded(_that.workingHours);case GetWorkingTimeStateError() when error != null:
return error();case GetWorkingTimeStateUnauthorized() when unauthorized != null:
return unauthorized();case GetWorkingTimeStateNoInternet() when noInternet != null:
return noInternet();case GetWorkingTimeStateUpdated() when updated != null:
return updated();case GetWorkingTimeStateNoData() when noData != null:
return noData();case GetWorkingTimeStateSetSuccessfully() when setSuccessfully != null:
return setSuccessfully();case GetWorkingTimeStateSetError() when setError != null:
return setError();case GetWorkingTimeStateItemsNotFound() when itemNotFound != null:
return itemNotFound();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<WorkingHoursEntity?>? workingHours)  loaded,required TResult Function()  error,required TResult Function()  unauthorized,required TResult Function()  noInternet,required TResult Function()  updated,required TResult Function()  noData,required TResult Function()  setSuccessfully,required TResult Function()  setError,required TResult Function()  itemNotFound,}) {final _that = this;
switch (_that) {
case GetWorkingTimeStateInitial():
return initial();case GetWorkingTimeStateLoading():
return loading();case GetWorkingTimeStateLoaded():
return loaded(_that.workingHours);case GetWorkingTimeStateError():
return error();case GetWorkingTimeStateUnauthorized():
return unauthorized();case GetWorkingTimeStateNoInternet():
return noInternet();case GetWorkingTimeStateUpdated():
return updated();case GetWorkingTimeStateNoData():
return noData();case GetWorkingTimeStateSetSuccessfully():
return setSuccessfully();case GetWorkingTimeStateSetError():
return setError();case GetWorkingTimeStateItemsNotFound():
return itemNotFound();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<WorkingHoursEntity?>? workingHours)?  loaded,TResult? Function()?  error,TResult? Function()?  unauthorized,TResult? Function()?  noInternet,TResult? Function()?  updated,TResult? Function()?  noData,TResult? Function()?  setSuccessfully,TResult? Function()?  setError,TResult? Function()?  itemNotFound,}) {final _that = this;
switch (_that) {
case GetWorkingTimeStateInitial() when initial != null:
return initial();case GetWorkingTimeStateLoading() when loading != null:
return loading();case GetWorkingTimeStateLoaded() when loaded != null:
return loaded(_that.workingHours);case GetWorkingTimeStateError() when error != null:
return error();case GetWorkingTimeStateUnauthorized() when unauthorized != null:
return unauthorized();case GetWorkingTimeStateNoInternet() when noInternet != null:
return noInternet();case GetWorkingTimeStateUpdated() when updated != null:
return updated();case GetWorkingTimeStateNoData() when noData != null:
return noData();case GetWorkingTimeStateSetSuccessfully() when setSuccessfully != null:
return setSuccessfully();case GetWorkingTimeStateSetError() when setError != null:
return setError();case GetWorkingTimeStateItemsNotFound() when itemNotFound != null:
return itemNotFound();case _:
  return null;

}
}

}

/// @nodoc


class GetWorkingTimeStateInitial implements GetWorkingTimeState {
  const GetWorkingTimeStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetWorkingTimeState.initial()';
}


}




/// @nodoc


class GetWorkingTimeStateLoading implements GetWorkingTimeState {
  const GetWorkingTimeStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetWorkingTimeState.loading()';
}


}




/// @nodoc


class GetWorkingTimeStateLoaded implements GetWorkingTimeState {
  const GetWorkingTimeStateLoaded({required final  List<WorkingHoursEntity?>? workingHours}): _workingHours = workingHours;
  

 final  List<WorkingHoursEntity?>? _workingHours;
 List<WorkingHoursEntity?>? get workingHours {
  final value = _workingHours;
  if (value == null) return null;
  if (_workingHours is EqualUnmodifiableListView) return _workingHours;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GetWorkingTimeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWorkingTimeStateLoadedCopyWith<GetWorkingTimeStateLoaded> get copyWith => _$GetWorkingTimeStateLoadedCopyWithImpl<GetWorkingTimeStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeStateLoaded&&const DeepCollectionEquality().equals(other._workingHours, _workingHours));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_workingHours));

@override
String toString() {
  return 'GetWorkingTimeState.loaded(workingHours: $workingHours)';
}


}

/// @nodoc
abstract mixin class $GetWorkingTimeStateLoadedCopyWith<$Res> implements $GetWorkingTimeStateCopyWith<$Res> {
  factory $GetWorkingTimeStateLoadedCopyWith(GetWorkingTimeStateLoaded value, $Res Function(GetWorkingTimeStateLoaded) _then) = _$GetWorkingTimeStateLoadedCopyWithImpl;
@useResult
$Res call({
 List<WorkingHoursEntity?>? workingHours
});




}
/// @nodoc
class _$GetWorkingTimeStateLoadedCopyWithImpl<$Res>
    implements $GetWorkingTimeStateLoadedCopyWith<$Res> {
  _$GetWorkingTimeStateLoadedCopyWithImpl(this._self, this._then);

  final GetWorkingTimeStateLoaded _self;
  final $Res Function(GetWorkingTimeStateLoaded) _then;

/// Create a copy of GetWorkingTimeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workingHours = freezed,}) {
  return _then(GetWorkingTimeStateLoaded(
workingHours: freezed == workingHours ? _self._workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as List<WorkingHoursEntity?>?,
  ));
}


}

/// @nodoc


class GetWorkingTimeStateError implements GetWorkingTimeState {
  const GetWorkingTimeStateError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeStateError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetWorkingTimeState.error()';
}


}




/// @nodoc


class GetWorkingTimeStateUnauthorized implements GetWorkingTimeState {
  const GetWorkingTimeStateUnauthorized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeStateUnauthorized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetWorkingTimeState.unauthorized()';
}


}




/// @nodoc


class GetWorkingTimeStateNoInternet implements GetWorkingTimeState {
  const GetWorkingTimeStateNoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetWorkingTimeState.noInternet()';
}


}




/// @nodoc


class GetWorkingTimeStateUpdated implements GetWorkingTimeState {
  const GetWorkingTimeStateUpdated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeStateUpdated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetWorkingTimeState.updated()';
}


}




/// @nodoc


class GetWorkingTimeStateNoData implements GetWorkingTimeState {
  const GetWorkingTimeStateNoData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeStateNoData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetWorkingTimeState.noData()';
}


}




/// @nodoc


class GetWorkingTimeStateSetSuccessfully implements GetWorkingTimeState {
  const GetWorkingTimeStateSetSuccessfully();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeStateSetSuccessfully);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetWorkingTimeState.setSuccessfully()';
}


}




/// @nodoc


class GetWorkingTimeStateSetError implements GetWorkingTimeState {
  const GetWorkingTimeStateSetError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeStateSetError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetWorkingTimeState.setError()';
}


}




/// @nodoc


class GetWorkingTimeStateItemsNotFound implements GetWorkingTimeState {
  const GetWorkingTimeStateItemsNotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkingTimeStateItemsNotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetWorkingTimeState.itemNotFound()';
}


}




// dart format on
