// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyServiceEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyServiceEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyServiceEvent()';
}


}

/// @nodoc
class $MyServiceEventCopyWith<$Res>  {
$MyServiceEventCopyWith(MyServiceEvent _, $Res Function(MyServiceEvent) __);
}


/// Adds pattern-matching-related methods to [MyServiceEvent].
extension MyServiceEventPatterns on MyServiceEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MyServiceEventStarted value)?  started,TResult Function( MyServiceEventGet value)?  get,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MyServiceEventStarted() when started != null:
return started(_that);case MyServiceEventGet() when get != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MyServiceEventStarted value)  started,required TResult Function( MyServiceEventGet value)  get,}){
final _that = this;
switch (_that) {
case MyServiceEventStarted():
return started(_that);case MyServiceEventGet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MyServiceEventStarted value)?  started,TResult? Function( MyServiceEventGet value)?  get,}){
final _that = this;
switch (_that) {
case MyServiceEventStarted() when started != null:
return started(_that);case MyServiceEventGet() when get != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( GetServiceModel? getServiceModel)?  get,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MyServiceEventStarted() when started != null:
return started();case MyServiceEventGet() when get != null:
return get(_that.getServiceModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( GetServiceModel? getServiceModel)  get,}) {final _that = this;
switch (_that) {
case MyServiceEventStarted():
return started();case MyServiceEventGet():
return get(_that.getServiceModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( GetServiceModel? getServiceModel)?  get,}) {final _that = this;
switch (_that) {
case MyServiceEventStarted() when started != null:
return started();case MyServiceEventGet() when get != null:
return get(_that.getServiceModel);case _:
  return null;

}
}

}

/// @nodoc


class MyServiceEventStarted implements MyServiceEvent {
  const MyServiceEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyServiceEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyServiceEvent.started()';
}


}




/// @nodoc


class MyServiceEventGet implements MyServiceEvent {
  const MyServiceEventGet({this.getServiceModel});
  

 final  GetServiceModel? getServiceModel;

/// Create a copy of MyServiceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyServiceEventGetCopyWith<MyServiceEventGet> get copyWith => _$MyServiceEventGetCopyWithImpl<MyServiceEventGet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyServiceEventGet&&(identical(other.getServiceModel, getServiceModel) || other.getServiceModel == getServiceModel));
}


@override
int get hashCode => Object.hash(runtimeType,getServiceModel);

@override
String toString() {
  return 'MyServiceEvent.get(getServiceModel: $getServiceModel)';
}


}

/// @nodoc
abstract mixin class $MyServiceEventGetCopyWith<$Res> implements $MyServiceEventCopyWith<$Res> {
  factory $MyServiceEventGetCopyWith(MyServiceEventGet value, $Res Function(MyServiceEventGet) _then) = _$MyServiceEventGetCopyWithImpl;
@useResult
$Res call({
 GetServiceModel? getServiceModel
});


$GetServiceModelCopyWith<$Res>? get getServiceModel;

}
/// @nodoc
class _$MyServiceEventGetCopyWithImpl<$Res>
    implements $MyServiceEventGetCopyWith<$Res> {
  _$MyServiceEventGetCopyWithImpl(this._self, this._then);

  final MyServiceEventGet _self;
  final $Res Function(MyServiceEventGet) _then;

/// Create a copy of MyServiceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? getServiceModel = freezed,}) {
  return _then(MyServiceEventGet(
getServiceModel: freezed == getServiceModel ? _self.getServiceModel : getServiceModel // ignore: cast_nullable_to_non_nullable
as GetServiceModel?,
  ));
}

/// Create a copy of MyServiceEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetServiceModelCopyWith<$Res>? get getServiceModel {
    if (_self.getServiceModel == null) {
    return null;
  }

  return $GetServiceModelCopyWith<$Res>(_self.getServiceModel!, (value) {
    return _then(_self.copyWith(getServiceModel: value));
  });
}
}

/// @nodoc
mixin _$MyServiceState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyServiceState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyServiceState()';
}


}

/// @nodoc
class $MyServiceStateCopyWith<$Res>  {
$MyServiceStateCopyWith(MyServiceState _, $Res Function(MyServiceState) __);
}


/// Adds pattern-matching-related methods to [MyServiceState].
extension MyServiceStatePatterns on MyServiceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MyServiceStateInitial value)?  initial,TResult Function( MyServiceStateNoInternet value)?  noInternet,TResult Function( MyServiceStateLoading value)?  loading,TResult Function( MyServiceStateGetError value)?  getError,TResult Function( MyServiceStateGot value)?  got,TResult Function( MyServiceStateUnAuthorized value)?  unAuthorized,TResult Function( MyServiceStateNoData value)?  noData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MyServiceStateInitial() when initial != null:
return initial(_that);case MyServiceStateNoInternet() when noInternet != null:
return noInternet(_that);case MyServiceStateLoading() when loading != null:
return loading(_that);case MyServiceStateGetError() when getError != null:
return getError(_that);case MyServiceStateGot() when got != null:
return got(_that);case MyServiceStateUnAuthorized() when unAuthorized != null:
return unAuthorized(_that);case MyServiceStateNoData() when noData != null:
return noData(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MyServiceStateInitial value)  initial,required TResult Function( MyServiceStateNoInternet value)  noInternet,required TResult Function( MyServiceStateLoading value)  loading,required TResult Function( MyServiceStateGetError value)  getError,required TResult Function( MyServiceStateGot value)  got,required TResult Function( MyServiceStateUnAuthorized value)  unAuthorized,required TResult Function( MyServiceStateNoData value)  noData,}){
final _that = this;
switch (_that) {
case MyServiceStateInitial():
return initial(_that);case MyServiceStateNoInternet():
return noInternet(_that);case MyServiceStateLoading():
return loading(_that);case MyServiceStateGetError():
return getError(_that);case MyServiceStateGot():
return got(_that);case MyServiceStateUnAuthorized():
return unAuthorized(_that);case MyServiceStateNoData():
return noData(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MyServiceStateInitial value)?  initial,TResult? Function( MyServiceStateNoInternet value)?  noInternet,TResult? Function( MyServiceStateLoading value)?  loading,TResult? Function( MyServiceStateGetError value)?  getError,TResult? Function( MyServiceStateGot value)?  got,TResult? Function( MyServiceStateUnAuthorized value)?  unAuthorized,TResult? Function( MyServiceStateNoData value)?  noData,}){
final _that = this;
switch (_that) {
case MyServiceStateInitial() when initial != null:
return initial(_that);case MyServiceStateNoInternet() when noInternet != null:
return noInternet(_that);case MyServiceStateLoading() when loading != null:
return loading(_that);case MyServiceStateGetError() when getError != null:
return getError(_that);case MyServiceStateGot() when got != null:
return got(_that);case MyServiceStateUnAuthorized() when unAuthorized != null:
return unAuthorized(_that);case MyServiceStateNoData() when noData != null:
return noData(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  noInternet,TResult Function()?  loading,TResult Function()?  getError,TResult Function( List<ServiceEntity?>? serviceEntity)?  got,TResult Function()?  unAuthorized,TResult Function()?  noData,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MyServiceStateInitial() when initial != null:
return initial();case MyServiceStateNoInternet() when noInternet != null:
return noInternet();case MyServiceStateLoading() when loading != null:
return loading();case MyServiceStateGetError() when getError != null:
return getError();case MyServiceStateGot() when got != null:
return got(_that.serviceEntity);case MyServiceStateUnAuthorized() when unAuthorized != null:
return unAuthorized();case MyServiceStateNoData() when noData != null:
return noData();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  noInternet,required TResult Function()  loading,required TResult Function()  getError,required TResult Function( List<ServiceEntity?>? serviceEntity)  got,required TResult Function()  unAuthorized,required TResult Function()  noData,}) {final _that = this;
switch (_that) {
case MyServiceStateInitial():
return initial();case MyServiceStateNoInternet():
return noInternet();case MyServiceStateLoading():
return loading();case MyServiceStateGetError():
return getError();case MyServiceStateGot():
return got(_that.serviceEntity);case MyServiceStateUnAuthorized():
return unAuthorized();case MyServiceStateNoData():
return noData();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  noInternet,TResult? Function()?  loading,TResult? Function()?  getError,TResult? Function( List<ServiceEntity?>? serviceEntity)?  got,TResult? Function()?  unAuthorized,TResult? Function()?  noData,}) {final _that = this;
switch (_that) {
case MyServiceStateInitial() when initial != null:
return initial();case MyServiceStateNoInternet() when noInternet != null:
return noInternet();case MyServiceStateLoading() when loading != null:
return loading();case MyServiceStateGetError() when getError != null:
return getError();case MyServiceStateGot() when got != null:
return got(_that.serviceEntity);case MyServiceStateUnAuthorized() when unAuthorized != null:
return unAuthorized();case MyServiceStateNoData() when noData != null:
return noData();case _:
  return null;

}
}

}

/// @nodoc


class MyServiceStateInitial implements MyServiceState {
  const MyServiceStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyServiceStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyServiceState.initial()';
}


}




/// @nodoc


class MyServiceStateNoInternet implements MyServiceState {
  const MyServiceStateNoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyServiceStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyServiceState.noInternet()';
}


}




/// @nodoc


class MyServiceStateLoading implements MyServiceState {
  const MyServiceStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyServiceStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyServiceState.loading()';
}


}




/// @nodoc


class MyServiceStateGetError implements MyServiceState {
  const MyServiceStateGetError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyServiceStateGetError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyServiceState.getError()';
}


}




/// @nodoc


class MyServiceStateGot implements MyServiceState {
  const MyServiceStateGot(final  List<ServiceEntity?>? serviceEntity): _serviceEntity = serviceEntity;
  

 final  List<ServiceEntity?>? _serviceEntity;
 List<ServiceEntity?>? get serviceEntity {
  final value = _serviceEntity;
  if (value == null) return null;
  if (_serviceEntity is EqualUnmodifiableListView) return _serviceEntity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MyServiceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyServiceStateGotCopyWith<MyServiceStateGot> get copyWith => _$MyServiceStateGotCopyWithImpl<MyServiceStateGot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyServiceStateGot&&const DeepCollectionEquality().equals(other._serviceEntity, _serviceEntity));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_serviceEntity));

@override
String toString() {
  return 'MyServiceState.got(serviceEntity: $serviceEntity)';
}


}

/// @nodoc
abstract mixin class $MyServiceStateGotCopyWith<$Res> implements $MyServiceStateCopyWith<$Res> {
  factory $MyServiceStateGotCopyWith(MyServiceStateGot value, $Res Function(MyServiceStateGot) _then) = _$MyServiceStateGotCopyWithImpl;
@useResult
$Res call({
 List<ServiceEntity?>? serviceEntity
});




}
/// @nodoc
class _$MyServiceStateGotCopyWithImpl<$Res>
    implements $MyServiceStateGotCopyWith<$Res> {
  _$MyServiceStateGotCopyWithImpl(this._self, this._then);

  final MyServiceStateGot _self;
  final $Res Function(MyServiceStateGot) _then;

/// Create a copy of MyServiceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? serviceEntity = freezed,}) {
  return _then(MyServiceStateGot(
freezed == serviceEntity ? _self._serviceEntity : serviceEntity // ignore: cast_nullable_to_non_nullable
as List<ServiceEntity?>?,
  ));
}


}

/// @nodoc


class MyServiceStateUnAuthorized implements MyServiceState {
  const MyServiceStateUnAuthorized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyServiceStateUnAuthorized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyServiceState.unAuthorized()';
}


}




/// @nodoc


class MyServiceStateNoData implements MyServiceState {
  const MyServiceStateNoData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyServiceStateNoData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyServiceState.noData()';
}


}




// dart format on
