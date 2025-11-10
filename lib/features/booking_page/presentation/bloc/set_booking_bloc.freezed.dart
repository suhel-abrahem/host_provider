// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SetBookingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetBookingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetBookingEvent()';
}


}

/// @nodoc
class $SetBookingEventCopyWith<$Res>  {
$SetBookingEventCopyWith(SetBookingEvent _, $Res Function(SetBookingEvent) __);
}


/// Adds pattern-matching-related methods to [SetBookingEvent].
extension SetBookingEventPatterns on SetBookingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SetBookingEventStarted value)?  started,TResult Function( SetBookingEventSetBookings value)?  setBookings,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SetBookingEventStarted() when started != null:
return started(_that);case SetBookingEventSetBookings() when setBookings != null:
return setBookings(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SetBookingEventStarted value)  started,required TResult Function( SetBookingEventSetBookings value)  setBookings,}){
final _that = this;
switch (_that) {
case SetBookingEventStarted():
return started(_that);case SetBookingEventSetBookings():
return setBookings(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SetBookingEventStarted value)?  started,TResult? Function( SetBookingEventSetBookings value)?  setBookings,}){
final _that = this;
switch (_that) {
case SetBookingEventStarted() when started != null:
return started(_that);case SetBookingEventSetBookings() when setBookings != null:
return setBookings(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( GetBookingModel? getBookingModel)?  setBookings,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SetBookingEventStarted() when started != null:
return started();case SetBookingEventSetBookings() when setBookings != null:
return setBookings(_that.getBookingModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( GetBookingModel? getBookingModel)  setBookings,}) {final _that = this;
switch (_that) {
case SetBookingEventStarted():
return started();case SetBookingEventSetBookings():
return setBookings(_that.getBookingModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( GetBookingModel? getBookingModel)?  setBookings,}) {final _that = this;
switch (_that) {
case SetBookingEventStarted() when started != null:
return started();case SetBookingEventSetBookings() when setBookings != null:
return setBookings(_that.getBookingModel);case _:
  return null;

}
}

}

/// @nodoc


class SetBookingEventStarted implements SetBookingEvent {
  const SetBookingEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetBookingEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetBookingEvent.started()';
}


}




/// @nodoc


class SetBookingEventSetBookings implements SetBookingEvent {
  const SetBookingEventSetBookings({required this.getBookingModel});
  

 final  GetBookingModel? getBookingModel;

/// Create a copy of SetBookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetBookingEventSetBookingsCopyWith<SetBookingEventSetBookings> get copyWith => _$SetBookingEventSetBookingsCopyWithImpl<SetBookingEventSetBookings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetBookingEventSetBookings&&(identical(other.getBookingModel, getBookingModel) || other.getBookingModel == getBookingModel));
}


@override
int get hashCode => Object.hash(runtimeType,getBookingModel);

@override
String toString() {
  return 'SetBookingEvent.setBookings(getBookingModel: $getBookingModel)';
}


}

/// @nodoc
abstract mixin class $SetBookingEventSetBookingsCopyWith<$Res> implements $SetBookingEventCopyWith<$Res> {
  factory $SetBookingEventSetBookingsCopyWith(SetBookingEventSetBookings value, $Res Function(SetBookingEventSetBookings) _then) = _$SetBookingEventSetBookingsCopyWithImpl;
@useResult
$Res call({
 GetBookingModel? getBookingModel
});


$GetBookingModelCopyWith<$Res>? get getBookingModel;

}
/// @nodoc
class _$SetBookingEventSetBookingsCopyWithImpl<$Res>
    implements $SetBookingEventSetBookingsCopyWith<$Res> {
  _$SetBookingEventSetBookingsCopyWithImpl(this._self, this._then);

  final SetBookingEventSetBookings _self;
  final $Res Function(SetBookingEventSetBookings) _then;

/// Create a copy of SetBookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? getBookingModel = freezed,}) {
  return _then(SetBookingEventSetBookings(
getBookingModel: freezed == getBookingModel ? _self.getBookingModel : getBookingModel // ignore: cast_nullable_to_non_nullable
as GetBookingModel?,
  ));
}

/// Create a copy of SetBookingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetBookingModelCopyWith<$Res>? get getBookingModel {
    if (_self.getBookingModel == null) {
    return null;
  }

  return $GetBookingModelCopyWith<$Res>(_self.getBookingModel!, (value) {
    return _then(_self.copyWith(getBookingModel: value));
  });
}
}

/// @nodoc
mixin _$SetBookingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetBookingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetBookingState()';
}


}

/// @nodoc
class $SetBookingStateCopyWith<$Res>  {
$SetBookingStateCopyWith(SetBookingState _, $Res Function(SetBookingState) __);
}


/// Adds pattern-matching-related methods to [SetBookingState].
extension SetBookingStatePatterns on SetBookingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SetBookingStateInitial value)?  initial,TResult Function( SetBookingStateLoading value)?  loading,TResult Function( SetBookingStateLoaded value)?  loaded,TResult Function( SetBookingStateError value)?  error,TResult Function( SetBookingStateUnauthenticated value)?  unauthenticated,TResult Function( SetBookingStateNoData value)?  noData,TResult Function( SetBookingStateNoInternet value)?  noInternet,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SetBookingStateInitial() when initial != null:
return initial(_that);case SetBookingStateLoading() when loading != null:
return loading(_that);case SetBookingStateLoaded() when loaded != null:
return loaded(_that);case SetBookingStateError() when error != null:
return error(_that);case SetBookingStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case SetBookingStateNoData() when noData != null:
return noData(_that);case SetBookingStateNoInternet() when noInternet != null:
return noInternet(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SetBookingStateInitial value)  initial,required TResult Function( SetBookingStateLoading value)  loading,required TResult Function( SetBookingStateLoaded value)  loaded,required TResult Function( SetBookingStateError value)  error,required TResult Function( SetBookingStateUnauthenticated value)  unauthenticated,required TResult Function( SetBookingStateNoData value)  noData,required TResult Function( SetBookingStateNoInternet value)  noInternet,}){
final _that = this;
switch (_that) {
case SetBookingStateInitial():
return initial(_that);case SetBookingStateLoading():
return loading(_that);case SetBookingStateLoaded():
return loaded(_that);case SetBookingStateError():
return error(_that);case SetBookingStateUnauthenticated():
return unauthenticated(_that);case SetBookingStateNoData():
return noData(_that);case SetBookingStateNoInternet():
return noInternet(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SetBookingStateInitial value)?  initial,TResult? Function( SetBookingStateLoading value)?  loading,TResult? Function( SetBookingStateLoaded value)?  loaded,TResult? Function( SetBookingStateError value)?  error,TResult? Function( SetBookingStateUnauthenticated value)?  unauthenticated,TResult? Function( SetBookingStateNoData value)?  noData,TResult? Function( SetBookingStateNoInternet value)?  noInternet,}){
final _that = this;
switch (_that) {
case SetBookingStateInitial() when initial != null:
return initial(_that);case SetBookingStateLoading() when loading != null:
return loading(_that);case SetBookingStateLoaded() when loaded != null:
return loaded(_that);case SetBookingStateError() when error != null:
return error(_that);case SetBookingStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case SetBookingStateNoData() when noData != null:
return noData(_that);case SetBookingStateNoInternet() when noInternet != null:
return noInternet(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( BookingEntity? bookings)?  loaded,TResult Function()?  error,TResult Function()?  unauthenticated,TResult Function()?  noData,TResult Function()?  noInternet,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SetBookingStateInitial() when initial != null:
return initial();case SetBookingStateLoading() when loading != null:
return loading();case SetBookingStateLoaded() when loaded != null:
return loaded(_that.bookings);case SetBookingStateError() when error != null:
return error();case SetBookingStateUnauthenticated() when unauthenticated != null:
return unauthenticated();case SetBookingStateNoData() when noData != null:
return noData();case SetBookingStateNoInternet() when noInternet != null:
return noInternet();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( BookingEntity? bookings)  loaded,required TResult Function()  error,required TResult Function()  unauthenticated,required TResult Function()  noData,required TResult Function()  noInternet,}) {final _that = this;
switch (_that) {
case SetBookingStateInitial():
return initial();case SetBookingStateLoading():
return loading();case SetBookingStateLoaded():
return loaded(_that.bookings);case SetBookingStateError():
return error();case SetBookingStateUnauthenticated():
return unauthenticated();case SetBookingStateNoData():
return noData();case SetBookingStateNoInternet():
return noInternet();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( BookingEntity? bookings)?  loaded,TResult? Function()?  error,TResult? Function()?  unauthenticated,TResult? Function()?  noData,TResult? Function()?  noInternet,}) {final _that = this;
switch (_that) {
case SetBookingStateInitial() when initial != null:
return initial();case SetBookingStateLoading() when loading != null:
return loading();case SetBookingStateLoaded() when loaded != null:
return loaded(_that.bookings);case SetBookingStateError() when error != null:
return error();case SetBookingStateUnauthenticated() when unauthenticated != null:
return unauthenticated();case SetBookingStateNoData() when noData != null:
return noData();case SetBookingStateNoInternet() when noInternet != null:
return noInternet();case _:
  return null;

}
}

}

/// @nodoc


class SetBookingStateInitial implements SetBookingState {
  const SetBookingStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetBookingStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetBookingState.initial()';
}


}




/// @nodoc


class SetBookingStateLoading implements SetBookingState {
  const SetBookingStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetBookingStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetBookingState.loading()';
}


}




/// @nodoc


class SetBookingStateLoaded implements SetBookingState {
  const SetBookingStateLoaded({required this.bookings});
  

 final  BookingEntity? bookings;

/// Create a copy of SetBookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetBookingStateLoadedCopyWith<SetBookingStateLoaded> get copyWith => _$SetBookingStateLoadedCopyWithImpl<SetBookingStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetBookingStateLoaded&&(identical(other.bookings, bookings) || other.bookings == bookings));
}


@override
int get hashCode => Object.hash(runtimeType,bookings);

@override
String toString() {
  return 'SetBookingState.loaded(bookings: $bookings)';
}


}

/// @nodoc
abstract mixin class $SetBookingStateLoadedCopyWith<$Res> implements $SetBookingStateCopyWith<$Res> {
  factory $SetBookingStateLoadedCopyWith(SetBookingStateLoaded value, $Res Function(SetBookingStateLoaded) _then) = _$SetBookingStateLoadedCopyWithImpl;
@useResult
$Res call({
 BookingEntity? bookings
});


$BookingEntityCopyWith<$Res>? get bookings;

}
/// @nodoc
class _$SetBookingStateLoadedCopyWithImpl<$Res>
    implements $SetBookingStateLoadedCopyWith<$Res> {
  _$SetBookingStateLoadedCopyWithImpl(this._self, this._then);

  final SetBookingStateLoaded _self;
  final $Res Function(SetBookingStateLoaded) _then;

/// Create a copy of SetBookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookings = freezed,}) {
  return _then(SetBookingStateLoaded(
bookings: freezed == bookings ? _self.bookings : bookings // ignore: cast_nullable_to_non_nullable
as BookingEntity?,
  ));
}

/// Create a copy of SetBookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingEntityCopyWith<$Res>? get bookings {
    if (_self.bookings == null) {
    return null;
  }

  return $BookingEntityCopyWith<$Res>(_self.bookings!, (value) {
    return _then(_self.copyWith(bookings: value));
  });
}
}

/// @nodoc


class SetBookingStateError implements SetBookingState {
  const SetBookingStateError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetBookingStateError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetBookingState.error()';
}


}




/// @nodoc


class SetBookingStateUnauthenticated implements SetBookingState {
  const SetBookingStateUnauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetBookingStateUnauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetBookingState.unauthenticated()';
}


}




/// @nodoc


class SetBookingStateNoData implements SetBookingState {
  const SetBookingStateNoData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetBookingStateNoData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetBookingState.noData()';
}


}




/// @nodoc


class SetBookingStateNoInternet implements SetBookingState {
  const SetBookingStateNoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetBookingStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetBookingState.noInternet()';
}


}




// dart format on
