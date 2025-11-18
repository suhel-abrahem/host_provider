// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomePageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageEvent()';
}


}

/// @nodoc
class $HomePageEventCopyWith<$Res>  {
$HomePageEventCopyWith(HomePageEvent _, $Res Function(HomePageEvent) __);
}


/// Adds pattern-matching-related methods to [HomePageEvent].
extension HomePageEventPatterns on HomePageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomePageEventStarted value)?  started,TResult Function( HomePageEventFetchHomePageData value)?  fetchHomePageData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomePageEventStarted() when started != null:
return started(_that);case HomePageEventFetchHomePageData() when fetchHomePageData != null:
return fetchHomePageData(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomePageEventStarted value)  started,required TResult Function( HomePageEventFetchHomePageData value)  fetchHomePageData,}){
final _that = this;
switch (_that) {
case HomePageEventStarted():
return started(_that);case HomePageEventFetchHomePageData():
return fetchHomePageData(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomePageEventStarted value)?  started,TResult? Function( HomePageEventFetchHomePageData value)?  fetchHomePageData,}){
final _that = this;
switch (_that) {
case HomePageEventStarted() when started != null:
return started(_that);case HomePageEventFetchHomePageData() when fetchHomePageData != null:
return fetchHomePageData(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( HomePageModel? model)?  fetchHomePageData,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomePageEventStarted() when started != null:
return started();case HomePageEventFetchHomePageData() when fetchHomePageData != null:
return fetchHomePageData(_that.model);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( HomePageModel? model)  fetchHomePageData,}) {final _that = this;
switch (_that) {
case HomePageEventStarted():
return started();case HomePageEventFetchHomePageData():
return fetchHomePageData(_that.model);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( HomePageModel? model)?  fetchHomePageData,}) {final _that = this;
switch (_that) {
case HomePageEventStarted() when started != null:
return started();case HomePageEventFetchHomePageData() when fetchHomePageData != null:
return fetchHomePageData(_that.model);case _:
  return null;

}
}

}

/// @nodoc


class HomePageEventStarted implements HomePageEvent {
  const HomePageEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageEvent.started()';
}


}




/// @nodoc


class HomePageEventFetchHomePageData implements HomePageEvent {
  const HomePageEventFetchHomePageData({required this.model});
  

 final  HomePageModel? model;

/// Create a copy of HomePageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomePageEventFetchHomePageDataCopyWith<HomePageEventFetchHomePageData> get copyWith => _$HomePageEventFetchHomePageDataCopyWithImpl<HomePageEventFetchHomePageData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageEventFetchHomePageData&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'HomePageEvent.fetchHomePageData(model: $model)';
}


}

/// @nodoc
abstract mixin class $HomePageEventFetchHomePageDataCopyWith<$Res> implements $HomePageEventCopyWith<$Res> {
  factory $HomePageEventFetchHomePageDataCopyWith(HomePageEventFetchHomePageData value, $Res Function(HomePageEventFetchHomePageData) _then) = _$HomePageEventFetchHomePageDataCopyWithImpl;
@useResult
$Res call({
 HomePageModel? model
});


$HomePageModelCopyWith<$Res>? get model;

}
/// @nodoc
class _$HomePageEventFetchHomePageDataCopyWithImpl<$Res>
    implements $HomePageEventFetchHomePageDataCopyWith<$Res> {
  _$HomePageEventFetchHomePageDataCopyWithImpl(this._self, this._then);

  final HomePageEventFetchHomePageData _self;
  final $Res Function(HomePageEventFetchHomePageData) _then;

/// Create a copy of HomePageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = freezed,}) {
  return _then(HomePageEventFetchHomePageData(
model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as HomePageModel?,
  ));
}

/// Create a copy of HomePageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomePageModelCopyWith<$Res>? get model {
    if (_self.model == null) {
    return null;
  }

  return $HomePageModelCopyWith<$Res>(_self.model!, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}

/// @nodoc
mixin _$HomePageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState()';
}


}

/// @nodoc
class $HomePageStateCopyWith<$Res>  {
$HomePageStateCopyWith(HomePageState _, $Res Function(HomePageState) __);
}


/// Adds pattern-matching-related methods to [HomePageState].
extension HomePageStatePatterns on HomePageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomePageStateInitial value)?  initial,TResult Function( HomePageStateLoading value)?  loading,TResult Function( HomePageStateLoaded value)?  loaded,TResult Function( HomePageStateError value)?  error,TResult Function( HomePageStateNoData value)?  noData,TResult Function( HomePageStateNoInternet value)?  noInternet,TResult Function( HomePageStateUnauthenticated value)?  unauthenticated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomePageStateInitial() when initial != null:
return initial(_that);case HomePageStateLoading() when loading != null:
return loading(_that);case HomePageStateLoaded() when loaded != null:
return loaded(_that);case HomePageStateError() when error != null:
return error(_that);case HomePageStateNoData() when noData != null:
return noData(_that);case HomePageStateNoInternet() when noInternet != null:
return noInternet(_that);case HomePageStateUnauthenticated() when unauthenticated != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomePageStateInitial value)  initial,required TResult Function( HomePageStateLoading value)  loading,required TResult Function( HomePageStateLoaded value)  loaded,required TResult Function( HomePageStateError value)  error,required TResult Function( HomePageStateNoData value)  noData,required TResult Function( HomePageStateNoInternet value)  noInternet,required TResult Function( HomePageStateUnauthenticated value)  unauthenticated,}){
final _that = this;
switch (_that) {
case HomePageStateInitial():
return initial(_that);case HomePageStateLoading():
return loading(_that);case HomePageStateLoaded():
return loaded(_that);case HomePageStateError():
return error(_that);case HomePageStateNoData():
return noData(_that);case HomePageStateNoInternet():
return noInternet(_that);case HomePageStateUnauthenticated():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomePageStateInitial value)?  initial,TResult? Function( HomePageStateLoading value)?  loading,TResult? Function( HomePageStateLoaded value)?  loaded,TResult? Function( HomePageStateError value)?  error,TResult? Function( HomePageStateNoData value)?  noData,TResult? Function( HomePageStateNoInternet value)?  noInternet,TResult? Function( HomePageStateUnauthenticated value)?  unauthenticated,}){
final _that = this;
switch (_that) {
case HomePageStateInitial() when initial != null:
return initial(_that);case HomePageStateLoading() when loading != null:
return loading(_that);case HomePageStateLoaded() when loaded != null:
return loaded(_that);case HomePageStateError() when error != null:
return error(_that);case HomePageStateNoData() when noData != null:
return noData(_that);case HomePageStateNoInternet() when noInternet != null:
return noInternet(_that);case HomePageStateUnauthenticated() when unauthenticated != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( HomePageEntity? data)?  loaded,TResult Function( String message)?  error,TResult Function()?  noData,TResult Function()?  noInternet,TResult Function()?  unauthenticated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomePageStateInitial() when initial != null:
return initial();case HomePageStateLoading() when loading != null:
return loading();case HomePageStateLoaded() when loaded != null:
return loaded(_that.data);case HomePageStateError() when error != null:
return error(_that.message);case HomePageStateNoData() when noData != null:
return noData();case HomePageStateNoInternet() when noInternet != null:
return noInternet();case HomePageStateUnauthenticated() when unauthenticated != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( HomePageEntity? data)  loaded,required TResult Function( String message)  error,required TResult Function()  noData,required TResult Function()  noInternet,required TResult Function()  unauthenticated,}) {final _that = this;
switch (_that) {
case HomePageStateInitial():
return initial();case HomePageStateLoading():
return loading();case HomePageStateLoaded():
return loaded(_that.data);case HomePageStateError():
return error(_that.message);case HomePageStateNoData():
return noData();case HomePageStateNoInternet():
return noInternet();case HomePageStateUnauthenticated():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( HomePageEntity? data)?  loaded,TResult? Function( String message)?  error,TResult? Function()?  noData,TResult? Function()?  noInternet,TResult? Function()?  unauthenticated,}) {final _that = this;
switch (_that) {
case HomePageStateInitial() when initial != null:
return initial();case HomePageStateLoading() when loading != null:
return loading();case HomePageStateLoaded() when loaded != null:
return loaded(_that.data);case HomePageStateError() when error != null:
return error(_that.message);case HomePageStateNoData() when noData != null:
return noData();case HomePageStateNoInternet() when noInternet != null:
return noInternet();case HomePageStateUnauthenticated() when unauthenticated != null:
return unauthenticated();case _:
  return null;

}
}

}

/// @nodoc


class HomePageStateInitial implements HomePageState {
  const HomePageStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState.initial()';
}


}




/// @nodoc


class HomePageStateLoading implements HomePageState {
  const HomePageStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState.loading()';
}


}




/// @nodoc


class HomePageStateLoaded implements HomePageState {
  const HomePageStateLoaded({this.data});
  

 final  HomePageEntity? data;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomePageStateLoadedCopyWith<HomePageStateLoaded> get copyWith => _$HomePageStateLoadedCopyWithImpl<HomePageStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageStateLoaded&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'HomePageState.loaded(data: $data)';
}


}

/// @nodoc
abstract mixin class $HomePageStateLoadedCopyWith<$Res> implements $HomePageStateCopyWith<$Res> {
  factory $HomePageStateLoadedCopyWith(HomePageStateLoaded value, $Res Function(HomePageStateLoaded) _then) = _$HomePageStateLoadedCopyWithImpl;
@useResult
$Res call({
 HomePageEntity? data
});


$HomePageEntityCopyWith<$Res>? get data;

}
/// @nodoc
class _$HomePageStateLoadedCopyWithImpl<$Res>
    implements $HomePageStateLoadedCopyWith<$Res> {
  _$HomePageStateLoadedCopyWithImpl(this._self, this._then);

  final HomePageStateLoaded _self;
  final $Res Function(HomePageStateLoaded) _then;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(HomePageStateLoaded(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HomePageEntity?,
  ));
}

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomePageEntityCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $HomePageEntityCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class HomePageStateError implements HomePageState {
  const HomePageStateError({required this.message});
  

 final  String message;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomePageStateErrorCopyWith<HomePageStateError> get copyWith => _$HomePageStateErrorCopyWithImpl<HomePageStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HomePageState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $HomePageStateErrorCopyWith<$Res> implements $HomePageStateCopyWith<$Res> {
  factory $HomePageStateErrorCopyWith(HomePageStateError value, $Res Function(HomePageStateError) _then) = _$HomePageStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$HomePageStateErrorCopyWithImpl<$Res>
    implements $HomePageStateErrorCopyWith<$Res> {
  _$HomePageStateErrorCopyWithImpl(this._self, this._then);

  final HomePageStateError _self;
  final $Res Function(HomePageStateError) _then;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(HomePageStateError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class HomePageStateNoData implements HomePageState {
  const HomePageStateNoData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageStateNoData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState.noData()';
}


}




/// @nodoc


class HomePageStateNoInternet implements HomePageState {
  const HomePageStateNoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState.noInternet()';
}


}




/// @nodoc


class HomePageStateUnauthenticated implements HomePageState {
  const HomePageStateUnauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageStateUnauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState.unauthenticated()';
}


}




// dart format on
