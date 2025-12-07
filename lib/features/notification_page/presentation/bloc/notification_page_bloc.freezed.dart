// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationPageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationPageEvent()';
}


}

/// @nodoc
class $NotificationPageEventCopyWith<$Res>  {
$NotificationPageEventCopyWith(NotificationPageEvent _, $Res Function(NotificationPageEvent) __);
}


/// Adds pattern-matching-related methods to [NotificationPageEvent].
extension NotificationPageEventPatterns on NotificationPageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NotificationPageEventStarted value)?  started,TResult Function( NotificationPageEventGetNotifications value)?  getNotifications,TResult Function( NotificationPageEventReadNotification value)?  readNotification,TResult Function( NotificationPageEventReadAllNotification value)?  readAllNotification,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NotificationPageEventStarted() when started != null:
return started(_that);case NotificationPageEventGetNotifications() when getNotifications != null:
return getNotifications(_that);case NotificationPageEventReadNotification() when readNotification != null:
return readNotification(_that);case NotificationPageEventReadAllNotification() when readAllNotification != null:
return readAllNotification(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NotificationPageEventStarted value)  started,required TResult Function( NotificationPageEventGetNotifications value)  getNotifications,required TResult Function( NotificationPageEventReadNotification value)  readNotification,required TResult Function( NotificationPageEventReadAllNotification value)  readAllNotification,}){
final _that = this;
switch (_that) {
case NotificationPageEventStarted():
return started(_that);case NotificationPageEventGetNotifications():
return getNotifications(_that);case NotificationPageEventReadNotification():
return readNotification(_that);case NotificationPageEventReadAllNotification():
return readAllNotification(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NotificationPageEventStarted value)?  started,TResult? Function( NotificationPageEventGetNotifications value)?  getNotifications,TResult? Function( NotificationPageEventReadNotification value)?  readNotification,TResult? Function( NotificationPageEventReadAllNotification value)?  readAllNotification,}){
final _that = this;
switch (_that) {
case NotificationPageEventStarted() when started != null:
return started(_that);case NotificationPageEventGetNotifications() when getNotifications != null:
return getNotifications(_that);case NotificationPageEventReadNotification() when readNotification != null:
return readNotification(_that);case NotificationPageEventReadAllNotification() when readAllNotification != null:
return readAllNotification(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( NotificationModel? model)?  getNotifications,TResult Function( NotificationModel? model)?  readNotification,TResult Function()?  readAllNotification,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NotificationPageEventStarted() when started != null:
return started();case NotificationPageEventGetNotifications() when getNotifications != null:
return getNotifications(_that.model);case NotificationPageEventReadNotification() when readNotification != null:
return readNotification(_that.model);case NotificationPageEventReadAllNotification() when readAllNotification != null:
return readAllNotification();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( NotificationModel? model)  getNotifications,required TResult Function( NotificationModel? model)  readNotification,required TResult Function()  readAllNotification,}) {final _that = this;
switch (_that) {
case NotificationPageEventStarted():
return started();case NotificationPageEventGetNotifications():
return getNotifications(_that.model);case NotificationPageEventReadNotification():
return readNotification(_that.model);case NotificationPageEventReadAllNotification():
return readAllNotification();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( NotificationModel? model)?  getNotifications,TResult? Function( NotificationModel? model)?  readNotification,TResult? Function()?  readAllNotification,}) {final _that = this;
switch (_that) {
case NotificationPageEventStarted() when started != null:
return started();case NotificationPageEventGetNotifications() when getNotifications != null:
return getNotifications(_that.model);case NotificationPageEventReadNotification() when readNotification != null:
return readNotification(_that.model);case NotificationPageEventReadAllNotification() when readAllNotification != null:
return readAllNotification();case _:
  return null;

}
}

}

/// @nodoc


class NotificationPageEventStarted implements NotificationPageEvent {
  const NotificationPageEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationPageEvent.started()';
}


}




/// @nodoc


class NotificationPageEventGetNotifications implements NotificationPageEvent {
  const NotificationPageEventGetNotifications({required this.model});
  

 final  NotificationModel? model;

/// Create a copy of NotificationPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPageEventGetNotificationsCopyWith<NotificationPageEventGetNotifications> get copyWith => _$NotificationPageEventGetNotificationsCopyWithImpl<NotificationPageEventGetNotifications>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageEventGetNotifications&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'NotificationPageEvent.getNotifications(model: $model)';
}


}

/// @nodoc
abstract mixin class $NotificationPageEventGetNotificationsCopyWith<$Res> implements $NotificationPageEventCopyWith<$Res> {
  factory $NotificationPageEventGetNotificationsCopyWith(NotificationPageEventGetNotifications value, $Res Function(NotificationPageEventGetNotifications) _then) = _$NotificationPageEventGetNotificationsCopyWithImpl;
@useResult
$Res call({
 NotificationModel? model
});


$NotificationModelCopyWith<$Res>? get model;

}
/// @nodoc
class _$NotificationPageEventGetNotificationsCopyWithImpl<$Res>
    implements $NotificationPageEventGetNotificationsCopyWith<$Res> {
  _$NotificationPageEventGetNotificationsCopyWithImpl(this._self, this._then);

  final NotificationPageEventGetNotifications _self;
  final $Res Function(NotificationPageEventGetNotifications) _then;

/// Create a copy of NotificationPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = freezed,}) {
  return _then(NotificationPageEventGetNotifications(
model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as NotificationModel?,
  ));
}

/// Create a copy of NotificationPageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationModelCopyWith<$Res>? get model {
    if (_self.model == null) {
    return null;
  }

  return $NotificationModelCopyWith<$Res>(_self.model!, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}

/// @nodoc


class NotificationPageEventReadNotification implements NotificationPageEvent {
  const NotificationPageEventReadNotification({required this.model});
  

 final  NotificationModel? model;

/// Create a copy of NotificationPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPageEventReadNotificationCopyWith<NotificationPageEventReadNotification> get copyWith => _$NotificationPageEventReadNotificationCopyWithImpl<NotificationPageEventReadNotification>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageEventReadNotification&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'NotificationPageEvent.readNotification(model: $model)';
}


}

/// @nodoc
abstract mixin class $NotificationPageEventReadNotificationCopyWith<$Res> implements $NotificationPageEventCopyWith<$Res> {
  factory $NotificationPageEventReadNotificationCopyWith(NotificationPageEventReadNotification value, $Res Function(NotificationPageEventReadNotification) _then) = _$NotificationPageEventReadNotificationCopyWithImpl;
@useResult
$Res call({
 NotificationModel? model
});


$NotificationModelCopyWith<$Res>? get model;

}
/// @nodoc
class _$NotificationPageEventReadNotificationCopyWithImpl<$Res>
    implements $NotificationPageEventReadNotificationCopyWith<$Res> {
  _$NotificationPageEventReadNotificationCopyWithImpl(this._self, this._then);

  final NotificationPageEventReadNotification _self;
  final $Res Function(NotificationPageEventReadNotification) _then;

/// Create a copy of NotificationPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = freezed,}) {
  return _then(NotificationPageEventReadNotification(
model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as NotificationModel?,
  ));
}

/// Create a copy of NotificationPageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationModelCopyWith<$Res>? get model {
    if (_self.model == null) {
    return null;
  }

  return $NotificationModelCopyWith<$Res>(_self.model!, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}

/// @nodoc


class NotificationPageEventReadAllNotification implements NotificationPageEvent {
  const NotificationPageEventReadAllNotification();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageEventReadAllNotification);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationPageEvent.readAllNotification()';
}


}




/// @nodoc
mixin _$NotificationPageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationPageState()';
}


}

/// @nodoc
class $NotificationPageStateCopyWith<$Res>  {
$NotificationPageStateCopyWith(NotificationPageState _, $Res Function(NotificationPageState) __);
}


/// Adds pattern-matching-related methods to [NotificationPageState].
extension NotificationPageStatePatterns on NotificationPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NotificationPageStateInitial value)?  initial,TResult Function( NotificationPageStateLoading value)?  loading,TResult Function( NotificationPageStateLoaded value)?  loaded,TResult Function( NotificationPageStateError value)?  error,TResult Function( NotificationPageStateReadNotificationSuccess value)?  readNotificationSuccess,TResult Function( NotificationPageStateReadAllNotificationSuccess value)?  readAllNotificationSuccess,TResult Function( NotificationPageStateSetReadNotificationError value)?  setReadNotificationError,TResult Function( NotificationPageStateNoData value)?  noData,TResult Function( NotificationPageStateNoInternetConnection value)?  noInternetConnection,TResult Function( NotificationPageStateUnauthenticated value)?  unauthenticated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NotificationPageStateInitial() when initial != null:
return initial(_that);case NotificationPageStateLoading() when loading != null:
return loading(_that);case NotificationPageStateLoaded() when loaded != null:
return loaded(_that);case NotificationPageStateError() when error != null:
return error(_that);case NotificationPageStateReadNotificationSuccess() when readNotificationSuccess != null:
return readNotificationSuccess(_that);case NotificationPageStateReadAllNotificationSuccess() when readAllNotificationSuccess != null:
return readAllNotificationSuccess(_that);case NotificationPageStateSetReadNotificationError() when setReadNotificationError != null:
return setReadNotificationError(_that);case NotificationPageStateNoData() when noData != null:
return noData(_that);case NotificationPageStateNoInternetConnection() when noInternetConnection != null:
return noInternetConnection(_that);case NotificationPageStateUnauthenticated() when unauthenticated != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NotificationPageStateInitial value)  initial,required TResult Function( NotificationPageStateLoading value)  loading,required TResult Function( NotificationPageStateLoaded value)  loaded,required TResult Function( NotificationPageStateError value)  error,required TResult Function( NotificationPageStateReadNotificationSuccess value)  readNotificationSuccess,required TResult Function( NotificationPageStateReadAllNotificationSuccess value)  readAllNotificationSuccess,required TResult Function( NotificationPageStateSetReadNotificationError value)  setReadNotificationError,required TResult Function( NotificationPageStateNoData value)  noData,required TResult Function( NotificationPageStateNoInternetConnection value)  noInternetConnection,required TResult Function( NotificationPageStateUnauthenticated value)  unauthenticated,}){
final _that = this;
switch (_that) {
case NotificationPageStateInitial():
return initial(_that);case NotificationPageStateLoading():
return loading(_that);case NotificationPageStateLoaded():
return loaded(_that);case NotificationPageStateError():
return error(_that);case NotificationPageStateReadNotificationSuccess():
return readNotificationSuccess(_that);case NotificationPageStateReadAllNotificationSuccess():
return readAllNotificationSuccess(_that);case NotificationPageStateSetReadNotificationError():
return setReadNotificationError(_that);case NotificationPageStateNoData():
return noData(_that);case NotificationPageStateNoInternetConnection():
return noInternetConnection(_that);case NotificationPageStateUnauthenticated():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NotificationPageStateInitial value)?  initial,TResult? Function( NotificationPageStateLoading value)?  loading,TResult? Function( NotificationPageStateLoaded value)?  loaded,TResult? Function( NotificationPageStateError value)?  error,TResult? Function( NotificationPageStateReadNotificationSuccess value)?  readNotificationSuccess,TResult? Function( NotificationPageStateReadAllNotificationSuccess value)?  readAllNotificationSuccess,TResult? Function( NotificationPageStateSetReadNotificationError value)?  setReadNotificationError,TResult? Function( NotificationPageStateNoData value)?  noData,TResult? Function( NotificationPageStateNoInternetConnection value)?  noInternetConnection,TResult? Function( NotificationPageStateUnauthenticated value)?  unauthenticated,}){
final _that = this;
switch (_that) {
case NotificationPageStateInitial() when initial != null:
return initial(_that);case NotificationPageStateLoading() when loading != null:
return loading(_that);case NotificationPageStateLoaded() when loaded != null:
return loaded(_that);case NotificationPageStateError() when error != null:
return error(_that);case NotificationPageStateReadNotificationSuccess() when readNotificationSuccess != null:
return readNotificationSuccess(_that);case NotificationPageStateReadAllNotificationSuccess() when readAllNotificationSuccess != null:
return readAllNotificationSuccess(_that);case NotificationPageStateSetReadNotificationError() when setReadNotificationError != null:
return setReadNotificationError(_that);case NotificationPageStateNoData() when noData != null:
return noData(_that);case NotificationPageStateNoInternetConnection() when noInternetConnection != null:
return noInternetConnection(_that);case NotificationPageStateUnauthenticated() when unauthenticated != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<NotificationEntity?>? newNotifications,  List<NotificationEntity?>? todayNotifications,  List<NotificationEntity?>? earlierNotifications)?  loaded,TResult Function( String message)?  error,TResult Function()?  readNotificationSuccess,TResult Function()?  readAllNotificationSuccess,TResult Function( String message)?  setReadNotificationError,TResult Function()?  noData,TResult Function()?  noInternetConnection,TResult Function()?  unauthenticated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NotificationPageStateInitial() when initial != null:
return initial();case NotificationPageStateLoading() when loading != null:
return loading();case NotificationPageStateLoaded() when loaded != null:
return loaded(_that.newNotifications,_that.todayNotifications,_that.earlierNotifications);case NotificationPageStateError() when error != null:
return error(_that.message);case NotificationPageStateReadNotificationSuccess() when readNotificationSuccess != null:
return readNotificationSuccess();case NotificationPageStateReadAllNotificationSuccess() when readAllNotificationSuccess != null:
return readAllNotificationSuccess();case NotificationPageStateSetReadNotificationError() when setReadNotificationError != null:
return setReadNotificationError(_that.message);case NotificationPageStateNoData() when noData != null:
return noData();case NotificationPageStateNoInternetConnection() when noInternetConnection != null:
return noInternetConnection();case NotificationPageStateUnauthenticated() when unauthenticated != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<NotificationEntity?>? newNotifications,  List<NotificationEntity?>? todayNotifications,  List<NotificationEntity?>? earlierNotifications)  loaded,required TResult Function( String message)  error,required TResult Function()  readNotificationSuccess,required TResult Function()  readAllNotificationSuccess,required TResult Function( String message)  setReadNotificationError,required TResult Function()  noData,required TResult Function()  noInternetConnection,required TResult Function()  unauthenticated,}) {final _that = this;
switch (_that) {
case NotificationPageStateInitial():
return initial();case NotificationPageStateLoading():
return loading();case NotificationPageStateLoaded():
return loaded(_that.newNotifications,_that.todayNotifications,_that.earlierNotifications);case NotificationPageStateError():
return error(_that.message);case NotificationPageStateReadNotificationSuccess():
return readNotificationSuccess();case NotificationPageStateReadAllNotificationSuccess():
return readAllNotificationSuccess();case NotificationPageStateSetReadNotificationError():
return setReadNotificationError(_that.message);case NotificationPageStateNoData():
return noData();case NotificationPageStateNoInternetConnection():
return noInternetConnection();case NotificationPageStateUnauthenticated():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<NotificationEntity?>? newNotifications,  List<NotificationEntity?>? todayNotifications,  List<NotificationEntity?>? earlierNotifications)?  loaded,TResult? Function( String message)?  error,TResult? Function()?  readNotificationSuccess,TResult? Function()?  readAllNotificationSuccess,TResult? Function( String message)?  setReadNotificationError,TResult? Function()?  noData,TResult? Function()?  noInternetConnection,TResult? Function()?  unauthenticated,}) {final _that = this;
switch (_that) {
case NotificationPageStateInitial() when initial != null:
return initial();case NotificationPageStateLoading() when loading != null:
return loading();case NotificationPageStateLoaded() when loaded != null:
return loaded(_that.newNotifications,_that.todayNotifications,_that.earlierNotifications);case NotificationPageStateError() when error != null:
return error(_that.message);case NotificationPageStateReadNotificationSuccess() when readNotificationSuccess != null:
return readNotificationSuccess();case NotificationPageStateReadAllNotificationSuccess() when readAllNotificationSuccess != null:
return readAllNotificationSuccess();case NotificationPageStateSetReadNotificationError() when setReadNotificationError != null:
return setReadNotificationError(_that.message);case NotificationPageStateNoData() when noData != null:
return noData();case NotificationPageStateNoInternetConnection() when noInternetConnection != null:
return noInternetConnection();case NotificationPageStateUnauthenticated() when unauthenticated != null:
return unauthenticated();case _:
  return null;

}
}

}

/// @nodoc


class NotificationPageStateInitial implements NotificationPageState {
  const NotificationPageStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationPageState.initial()';
}


}




/// @nodoc


class NotificationPageStateLoading implements NotificationPageState {
  const NotificationPageStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationPageState.loading()';
}


}




/// @nodoc


class NotificationPageStateLoaded implements NotificationPageState {
  const NotificationPageStateLoaded({required final  List<NotificationEntity?>? newNotifications, required final  List<NotificationEntity?>? todayNotifications, required final  List<NotificationEntity?>? earlierNotifications}): _newNotifications = newNotifications,_todayNotifications = todayNotifications,_earlierNotifications = earlierNotifications;
  

 final  List<NotificationEntity?>? _newNotifications;
 List<NotificationEntity?>? get newNotifications {
  final value = _newNotifications;
  if (value == null) return null;
  if (_newNotifications is EqualUnmodifiableListView) return _newNotifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<NotificationEntity?>? _todayNotifications;
 List<NotificationEntity?>? get todayNotifications {
  final value = _todayNotifications;
  if (value == null) return null;
  if (_todayNotifications is EqualUnmodifiableListView) return _todayNotifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<NotificationEntity?>? _earlierNotifications;
 List<NotificationEntity?>? get earlierNotifications {
  final value = _earlierNotifications;
  if (value == null) return null;
  if (_earlierNotifications is EqualUnmodifiableListView) return _earlierNotifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of NotificationPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPageStateLoadedCopyWith<NotificationPageStateLoaded> get copyWith => _$NotificationPageStateLoadedCopyWithImpl<NotificationPageStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageStateLoaded&&const DeepCollectionEquality().equals(other._newNotifications, _newNotifications)&&const DeepCollectionEquality().equals(other._todayNotifications, _todayNotifications)&&const DeepCollectionEquality().equals(other._earlierNotifications, _earlierNotifications));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_newNotifications),const DeepCollectionEquality().hash(_todayNotifications),const DeepCollectionEquality().hash(_earlierNotifications));

@override
String toString() {
  return 'NotificationPageState.loaded(newNotifications: $newNotifications, todayNotifications: $todayNotifications, earlierNotifications: $earlierNotifications)';
}


}

/// @nodoc
abstract mixin class $NotificationPageStateLoadedCopyWith<$Res> implements $NotificationPageStateCopyWith<$Res> {
  factory $NotificationPageStateLoadedCopyWith(NotificationPageStateLoaded value, $Res Function(NotificationPageStateLoaded) _then) = _$NotificationPageStateLoadedCopyWithImpl;
@useResult
$Res call({
 List<NotificationEntity?>? newNotifications, List<NotificationEntity?>? todayNotifications, List<NotificationEntity?>? earlierNotifications
});




}
/// @nodoc
class _$NotificationPageStateLoadedCopyWithImpl<$Res>
    implements $NotificationPageStateLoadedCopyWith<$Res> {
  _$NotificationPageStateLoadedCopyWithImpl(this._self, this._then);

  final NotificationPageStateLoaded _self;
  final $Res Function(NotificationPageStateLoaded) _then;

/// Create a copy of NotificationPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? newNotifications = freezed,Object? todayNotifications = freezed,Object? earlierNotifications = freezed,}) {
  return _then(NotificationPageStateLoaded(
newNotifications: freezed == newNotifications ? _self._newNotifications : newNotifications // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity?>?,todayNotifications: freezed == todayNotifications ? _self._todayNotifications : todayNotifications // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity?>?,earlierNotifications: freezed == earlierNotifications ? _self._earlierNotifications : earlierNotifications // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity?>?,
  ));
}


}

/// @nodoc


class NotificationPageStateError implements NotificationPageState {
  const NotificationPageStateError({required this.message});
  

 final  String message;

/// Create a copy of NotificationPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPageStateErrorCopyWith<NotificationPageStateError> get copyWith => _$NotificationPageStateErrorCopyWithImpl<NotificationPageStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NotificationPageState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $NotificationPageStateErrorCopyWith<$Res> implements $NotificationPageStateCopyWith<$Res> {
  factory $NotificationPageStateErrorCopyWith(NotificationPageStateError value, $Res Function(NotificationPageStateError) _then) = _$NotificationPageStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$NotificationPageStateErrorCopyWithImpl<$Res>
    implements $NotificationPageStateErrorCopyWith<$Res> {
  _$NotificationPageStateErrorCopyWithImpl(this._self, this._then);

  final NotificationPageStateError _self;
  final $Res Function(NotificationPageStateError) _then;

/// Create a copy of NotificationPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(NotificationPageStateError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NotificationPageStateReadNotificationSuccess implements NotificationPageState {
  const NotificationPageStateReadNotificationSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageStateReadNotificationSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationPageState.readNotificationSuccess()';
}


}




/// @nodoc


class NotificationPageStateReadAllNotificationSuccess implements NotificationPageState {
  const NotificationPageStateReadAllNotificationSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageStateReadAllNotificationSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationPageState.readAllNotificationSuccess()';
}


}




/// @nodoc


class NotificationPageStateSetReadNotificationError implements NotificationPageState {
  const NotificationPageStateSetReadNotificationError({required this.message});
  

 final  String message;

/// Create a copy of NotificationPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPageStateSetReadNotificationErrorCopyWith<NotificationPageStateSetReadNotificationError> get copyWith => _$NotificationPageStateSetReadNotificationErrorCopyWithImpl<NotificationPageStateSetReadNotificationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageStateSetReadNotificationError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NotificationPageState.setReadNotificationError(message: $message)';
}


}

/// @nodoc
abstract mixin class $NotificationPageStateSetReadNotificationErrorCopyWith<$Res> implements $NotificationPageStateCopyWith<$Res> {
  factory $NotificationPageStateSetReadNotificationErrorCopyWith(NotificationPageStateSetReadNotificationError value, $Res Function(NotificationPageStateSetReadNotificationError) _then) = _$NotificationPageStateSetReadNotificationErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$NotificationPageStateSetReadNotificationErrorCopyWithImpl<$Res>
    implements $NotificationPageStateSetReadNotificationErrorCopyWith<$Res> {
  _$NotificationPageStateSetReadNotificationErrorCopyWithImpl(this._self, this._then);

  final NotificationPageStateSetReadNotificationError _self;
  final $Res Function(NotificationPageStateSetReadNotificationError) _then;

/// Create a copy of NotificationPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(NotificationPageStateSetReadNotificationError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NotificationPageStateNoData implements NotificationPageState {
  const NotificationPageStateNoData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageStateNoData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationPageState.noData()';
}


}




/// @nodoc


class NotificationPageStateNoInternetConnection implements NotificationPageState {
  const NotificationPageStateNoInternetConnection();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageStateNoInternetConnection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationPageState.noInternetConnection()';
}


}




/// @nodoc


class NotificationPageStateUnauthenticated implements NotificationPageState {
  const NotificationPageStateUnauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageStateUnauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationPageState.unauthenticated()';
}


}




// dart format on
