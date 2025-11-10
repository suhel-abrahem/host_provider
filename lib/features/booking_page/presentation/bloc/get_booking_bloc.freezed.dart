// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetBookingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBookingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetBookingEvent()';
}


}

/// @nodoc
class $GetBookingEventCopyWith<$Res>  {
$GetBookingEventCopyWith(GetBookingEvent _, $Res Function(GetBookingEvent) __);
}


/// Adds pattern-matching-related methods to [GetBookingEvent].
extension GetBookingEventPatterns on GetBookingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetBookingEventStarted value)?  started,TResult Function( GetBookingEventGetBookings value)?  getBookings,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetBookingEventStarted() when started != null:
return started(_that);case GetBookingEventGetBookings() when getBookings != null:
return getBookings(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetBookingEventStarted value)  started,required TResult Function( GetBookingEventGetBookings value)  getBookings,}){
final _that = this;
switch (_that) {
case GetBookingEventStarted():
return started(_that);case GetBookingEventGetBookings():
return getBookings(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetBookingEventStarted value)?  started,TResult? Function( GetBookingEventGetBookings value)?  getBookings,}){
final _that = this;
switch (_that) {
case GetBookingEventStarted() when started != null:
return started(_that);case GetBookingEventGetBookings() when getBookings != null:
return getBookings(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( GetBookingModel? getBookingModel)?  getBookings,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetBookingEventStarted() when started != null:
return started();case GetBookingEventGetBookings() when getBookings != null:
return getBookings(_that.getBookingModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( GetBookingModel? getBookingModel)  getBookings,}) {final _that = this;
switch (_that) {
case GetBookingEventStarted():
return started();case GetBookingEventGetBookings():
return getBookings(_that.getBookingModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( GetBookingModel? getBookingModel)?  getBookings,}) {final _that = this;
switch (_that) {
case GetBookingEventStarted() when started != null:
return started();case GetBookingEventGetBookings() when getBookings != null:
return getBookings(_that.getBookingModel);case _:
  return null;

}
}

}

/// @nodoc


class GetBookingEventStarted implements GetBookingEvent {
  const GetBookingEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBookingEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetBookingEvent.started()';
}


}




/// @nodoc


class GetBookingEventGetBookings implements GetBookingEvent {
  const GetBookingEventGetBookings({required this.getBookingModel});
  

 final  GetBookingModel? getBookingModel;

/// Create a copy of GetBookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBookingEventGetBookingsCopyWith<GetBookingEventGetBookings> get copyWith => _$GetBookingEventGetBookingsCopyWithImpl<GetBookingEventGetBookings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBookingEventGetBookings&&(identical(other.getBookingModel, getBookingModel) || other.getBookingModel == getBookingModel));
}


@override
int get hashCode => Object.hash(runtimeType,getBookingModel);

@override
String toString() {
  return 'GetBookingEvent.getBookings(getBookingModel: $getBookingModel)';
}


}

/// @nodoc
abstract mixin class $GetBookingEventGetBookingsCopyWith<$Res> implements $GetBookingEventCopyWith<$Res> {
  factory $GetBookingEventGetBookingsCopyWith(GetBookingEventGetBookings value, $Res Function(GetBookingEventGetBookings) _then) = _$GetBookingEventGetBookingsCopyWithImpl;
@useResult
$Res call({
 GetBookingModel? getBookingModel
});


$GetBookingModelCopyWith<$Res>? get getBookingModel;

}
/// @nodoc
class _$GetBookingEventGetBookingsCopyWithImpl<$Res>
    implements $GetBookingEventGetBookingsCopyWith<$Res> {
  _$GetBookingEventGetBookingsCopyWithImpl(this._self, this._then);

  final GetBookingEventGetBookings _self;
  final $Res Function(GetBookingEventGetBookings) _then;

/// Create a copy of GetBookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? getBookingModel = freezed,}) {
  return _then(GetBookingEventGetBookings(
getBookingModel: freezed == getBookingModel ? _self.getBookingModel : getBookingModel // ignore: cast_nullable_to_non_nullable
as GetBookingModel?,
  ));
}

/// Create a copy of GetBookingEvent
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
mixin _$GetBookingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBookingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetBookingState()';
}


}

/// @nodoc
class $GetBookingStateCopyWith<$Res>  {
$GetBookingStateCopyWith(GetBookingState _, $Res Function(GetBookingState) __);
}


/// Adds pattern-matching-related methods to [GetBookingState].
extension GetBookingStatePatterns on GetBookingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetBookingStateInitial value)?  initial,TResult Function( GetBookingStateLoading value)?  loading,TResult Function( GetBookingStateLoaded value)?  loaded,TResult Function( GetBookingStateError value)?  error,TResult Function( GetBookingStateUnauthenticated value)?  unauthenticated,TResult Function( GetBookingStateNoData value)?  noData,TResult Function( GetBookingStateNoInternet value)?  noInternet,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetBookingStateInitial() when initial != null:
return initial(_that);case GetBookingStateLoading() when loading != null:
return loading(_that);case GetBookingStateLoaded() when loaded != null:
return loaded(_that);case GetBookingStateError() when error != null:
return error(_that);case GetBookingStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case GetBookingStateNoData() when noData != null:
return noData(_that);case GetBookingStateNoInternet() when noInternet != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetBookingStateInitial value)  initial,required TResult Function( GetBookingStateLoading value)  loading,required TResult Function( GetBookingStateLoaded value)  loaded,required TResult Function( GetBookingStateError value)  error,required TResult Function( GetBookingStateUnauthenticated value)  unauthenticated,required TResult Function( GetBookingStateNoData value)  noData,required TResult Function( GetBookingStateNoInternet value)  noInternet,}){
final _that = this;
switch (_that) {
case GetBookingStateInitial():
return initial(_that);case GetBookingStateLoading():
return loading(_that);case GetBookingStateLoaded():
return loaded(_that);case GetBookingStateError():
return error(_that);case GetBookingStateUnauthenticated():
return unauthenticated(_that);case GetBookingStateNoData():
return noData(_that);case GetBookingStateNoInternet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetBookingStateInitial value)?  initial,TResult? Function( GetBookingStateLoading value)?  loading,TResult? Function( GetBookingStateLoaded value)?  loaded,TResult? Function( GetBookingStateError value)?  error,TResult? Function( GetBookingStateUnauthenticated value)?  unauthenticated,TResult? Function( GetBookingStateNoData value)?  noData,TResult? Function( GetBookingStateNoInternet value)?  noInternet,}){
final _that = this;
switch (_that) {
case GetBookingStateInitial() when initial != null:
return initial(_that);case GetBookingStateLoading() when loading != null:
return loading(_that);case GetBookingStateLoaded() when loaded != null:
return loaded(_that);case GetBookingStateError() when error != null:
return error(_that);case GetBookingStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case GetBookingStateNoData() when noData != null:
return noData(_that);case GetBookingStateNoInternet() when noInternet != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<BookingEntity?>? bookings)?  loaded,TResult Function()?  error,TResult Function()?  unauthenticated,TResult Function()?  noData,TResult Function()?  noInternet,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetBookingStateInitial() when initial != null:
return initial();case GetBookingStateLoading() when loading != null:
return loading();case GetBookingStateLoaded() when loaded != null:
return loaded(_that.bookings);case GetBookingStateError() when error != null:
return error();case GetBookingStateUnauthenticated() when unauthenticated != null:
return unauthenticated();case GetBookingStateNoData() when noData != null:
return noData();case GetBookingStateNoInternet() when noInternet != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<BookingEntity?>? bookings)  loaded,required TResult Function()  error,required TResult Function()  unauthenticated,required TResult Function()  noData,required TResult Function()  noInternet,}) {final _that = this;
switch (_that) {
case GetBookingStateInitial():
return initial();case GetBookingStateLoading():
return loading();case GetBookingStateLoaded():
return loaded(_that.bookings);case GetBookingStateError():
return error();case GetBookingStateUnauthenticated():
return unauthenticated();case GetBookingStateNoData():
return noData();case GetBookingStateNoInternet():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<BookingEntity?>? bookings)?  loaded,TResult? Function()?  error,TResult? Function()?  unauthenticated,TResult? Function()?  noData,TResult? Function()?  noInternet,}) {final _that = this;
switch (_that) {
case GetBookingStateInitial() when initial != null:
return initial();case GetBookingStateLoading() when loading != null:
return loading();case GetBookingStateLoaded() when loaded != null:
return loaded(_that.bookings);case GetBookingStateError() when error != null:
return error();case GetBookingStateUnauthenticated() when unauthenticated != null:
return unauthenticated();case GetBookingStateNoData() when noData != null:
return noData();case GetBookingStateNoInternet() when noInternet != null:
return noInternet();case _:
  return null;

}
}

}

/// @nodoc


class GetBookingStateInitial implements GetBookingState {
  const GetBookingStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBookingStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetBookingState.initial()';
}


}




/// @nodoc


class GetBookingStateLoading implements GetBookingState {
  const GetBookingStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBookingStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetBookingState.loading()';
}


}




/// @nodoc


class GetBookingStateLoaded implements GetBookingState {
  const GetBookingStateLoaded({required final  List<BookingEntity?>? bookings}): _bookings = bookings;
  

 final  List<BookingEntity?>? _bookings;
 List<BookingEntity?>? get bookings {
  final value = _bookings;
  if (value == null) return null;
  if (_bookings is EqualUnmodifiableListView) return _bookings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GetBookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBookingStateLoadedCopyWith<GetBookingStateLoaded> get copyWith => _$GetBookingStateLoadedCopyWithImpl<GetBookingStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBookingStateLoaded&&const DeepCollectionEquality().equals(other._bookings, _bookings));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bookings));

@override
String toString() {
  return 'GetBookingState.loaded(bookings: $bookings)';
}


}

/// @nodoc
abstract mixin class $GetBookingStateLoadedCopyWith<$Res> implements $GetBookingStateCopyWith<$Res> {
  factory $GetBookingStateLoadedCopyWith(GetBookingStateLoaded value, $Res Function(GetBookingStateLoaded) _then) = _$GetBookingStateLoadedCopyWithImpl;
@useResult
$Res call({
 List<BookingEntity?>? bookings
});




}
/// @nodoc
class _$GetBookingStateLoadedCopyWithImpl<$Res>
    implements $GetBookingStateLoadedCopyWith<$Res> {
  _$GetBookingStateLoadedCopyWithImpl(this._self, this._then);

  final GetBookingStateLoaded _self;
  final $Res Function(GetBookingStateLoaded) _then;

/// Create a copy of GetBookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookings = freezed,}) {
  return _then(GetBookingStateLoaded(
bookings: freezed == bookings ? _self._bookings : bookings // ignore: cast_nullable_to_non_nullable
as List<BookingEntity?>?,
  ));
}


}

/// @nodoc


class GetBookingStateError implements GetBookingState {
  const GetBookingStateError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBookingStateError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetBookingState.error()';
}


}




/// @nodoc


class GetBookingStateUnauthenticated implements GetBookingState {
  const GetBookingStateUnauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBookingStateUnauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetBookingState.unauthenticated()';
}


}




/// @nodoc


class GetBookingStateNoData implements GetBookingState {
  const GetBookingStateNoData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBookingStateNoData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetBookingState.noData()';
}


}




/// @nodoc


class GetBookingStateNoInternet implements GetBookingState {
  const GetBookingStateNoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBookingStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetBookingState.noInternet()';
}


}




// dart format on
