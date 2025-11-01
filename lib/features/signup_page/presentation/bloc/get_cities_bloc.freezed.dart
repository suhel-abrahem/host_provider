// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_cities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetCitiesEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCitiesEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCitiesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCitiesEvent()';
}


}

/// @nodoc
class $GetCitiesEventCopyWith<$Res>  {
$GetCitiesEventCopyWith(GetCitiesEvent _, $Res Function(GetCitiesEvent) __);
}


/// Adds pattern-matching-related methods to [GetCitiesEvent].
extension GetCitiesEventPatterns on GetCitiesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetCitiesEventStarted value)?  started,TResult Function( GetCitiesEventGetCities value)?  getCities,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetCitiesEventStarted() when started != null:
return started(_that);case GetCitiesEventGetCities() when getCities != null:
return getCities(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetCitiesEventStarted value)  started,required TResult Function( GetCitiesEventGetCities value)  getCities,}){
final _that = this;
switch (_that) {
case GetCitiesEventStarted():
return started(_that);case GetCitiesEventGetCities():
return getCities(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetCitiesEventStarted value)?  started,TResult? Function( GetCitiesEventGetCities value)?  getCities,}){
final _that = this;
switch (_that) {
case GetCitiesEventStarted() when started != null:
return started(_that);case GetCitiesEventGetCities() when getCities != null:
return getCities(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( CityModel? cityModel)?  getCities,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetCitiesEventStarted() when started != null:
return started();case GetCitiesEventGetCities() when getCities != null:
return getCities(_that.cityModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( CityModel? cityModel)  getCities,}) {final _that = this;
switch (_that) {
case GetCitiesEventStarted():
return started();case GetCitiesEventGetCities():
return getCities(_that.cityModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( CityModel? cityModel)?  getCities,}) {final _that = this;
switch (_that) {
case GetCitiesEventStarted() when started != null:
return started();case GetCitiesEventGetCities() when getCities != null:
return getCities(_that.cityModel);case _:
  return null;

}
}

}

/// @nodoc


class GetCitiesEventStarted with DiagnosticableTreeMixin implements GetCitiesEvent {
  const GetCitiesEventStarted();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCitiesEvent.started'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCitiesEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCitiesEvent.started()';
}


}




/// @nodoc


class GetCitiesEventGetCities with DiagnosticableTreeMixin implements GetCitiesEvent {
  const GetCitiesEventGetCities(this.cityModel);
  

 final  CityModel? cityModel;

/// Create a copy of GetCitiesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCitiesEventGetCitiesCopyWith<GetCitiesEventGetCities> get copyWith => _$GetCitiesEventGetCitiesCopyWithImpl<GetCitiesEventGetCities>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCitiesEvent.getCities'))
    ..add(DiagnosticsProperty('cityModel', cityModel));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCitiesEventGetCities&&(identical(other.cityModel, cityModel) || other.cityModel == cityModel));
}


@override
int get hashCode => Object.hash(runtimeType,cityModel);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCitiesEvent.getCities(cityModel: $cityModel)';
}


}

/// @nodoc
abstract mixin class $GetCitiesEventGetCitiesCopyWith<$Res> implements $GetCitiesEventCopyWith<$Res> {
  factory $GetCitiesEventGetCitiesCopyWith(GetCitiesEventGetCities value, $Res Function(GetCitiesEventGetCities) _then) = _$GetCitiesEventGetCitiesCopyWithImpl;
@useResult
$Res call({
 CityModel? cityModel
});


$CityModelCopyWith<$Res>? get cityModel;

}
/// @nodoc
class _$GetCitiesEventGetCitiesCopyWithImpl<$Res>
    implements $GetCitiesEventGetCitiesCopyWith<$Res> {
  _$GetCitiesEventGetCitiesCopyWithImpl(this._self, this._then);

  final GetCitiesEventGetCities _self;
  final $Res Function(GetCitiesEventGetCities) _then;

/// Create a copy of GetCitiesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cityModel = freezed,}) {
  return _then(GetCitiesEventGetCities(
freezed == cityModel ? _self.cityModel : cityModel // ignore: cast_nullable_to_non_nullable
as CityModel?,
  ));
}

/// Create a copy of GetCitiesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityModelCopyWith<$Res>? get cityModel {
    if (_self.cityModel == null) {
    return null;
  }

  return $CityModelCopyWith<$Res>(_self.cityModel!, (value) {
    return _then(_self.copyWith(cityModel: value));
  });
}
}

/// @nodoc
mixin _$GetCitiesState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCitiesState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCitiesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCitiesState()';
}


}

/// @nodoc
class $GetCitiesStateCopyWith<$Res>  {
$GetCitiesStateCopyWith(GetCitiesState _, $Res Function(GetCitiesState) __);
}


/// Adds pattern-matching-related methods to [GetCitiesState].
extension GetCitiesStatePatterns on GetCitiesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetCitiesStateInitial value)?  initial,TResult Function( GetCitiesStateGot value)?  got,TResult Function( GetCitiesStateLoading value)?  loading,TResult Function( GetCitiesStateError value)?  error,TResult Function( GetCitiesStateNoInternet value)?  noInternet,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetCitiesStateInitial() when initial != null:
return initial(_that);case GetCitiesStateGot() when got != null:
return got(_that);case GetCitiesStateLoading() when loading != null:
return loading(_that);case GetCitiesStateError() when error != null:
return error(_that);case GetCitiesStateNoInternet() when noInternet != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetCitiesStateInitial value)  initial,required TResult Function( GetCitiesStateGot value)  got,required TResult Function( GetCitiesStateLoading value)  loading,required TResult Function( GetCitiesStateError value)  error,required TResult Function( GetCitiesStateNoInternet value)  noInternet,}){
final _that = this;
switch (_that) {
case GetCitiesStateInitial():
return initial(_that);case GetCitiesStateGot():
return got(_that);case GetCitiesStateLoading():
return loading(_that);case GetCitiesStateError():
return error(_that);case GetCitiesStateNoInternet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetCitiesStateInitial value)?  initial,TResult? Function( GetCitiesStateGot value)?  got,TResult? Function( GetCitiesStateLoading value)?  loading,TResult? Function( GetCitiesStateError value)?  error,TResult? Function( GetCitiesStateNoInternet value)?  noInternet,}){
final _that = this;
switch (_that) {
case GetCitiesStateInitial() when initial != null:
return initial(_that);case GetCitiesStateGot() when got != null:
return got(_that);case GetCitiesStateLoading() when loading != null:
return loading(_that);case GetCitiesStateError() when error != null:
return error(_that);case GetCitiesStateNoInternet() when noInternet != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<CityEntity?>? cityEntity)?  got,TResult Function()?  loading,TResult Function( String? message)?  error,TResult Function()?  noInternet,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetCitiesStateInitial() when initial != null:
return initial();case GetCitiesStateGot() when got != null:
return got(_that.cityEntity);case GetCitiesStateLoading() when loading != null:
return loading();case GetCitiesStateError() when error != null:
return error(_that.message);case GetCitiesStateNoInternet() when noInternet != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<CityEntity?>? cityEntity)  got,required TResult Function()  loading,required TResult Function( String? message)  error,required TResult Function()  noInternet,}) {final _that = this;
switch (_that) {
case GetCitiesStateInitial():
return initial();case GetCitiesStateGot():
return got(_that.cityEntity);case GetCitiesStateLoading():
return loading();case GetCitiesStateError():
return error(_that.message);case GetCitiesStateNoInternet():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<CityEntity?>? cityEntity)?  got,TResult? Function()?  loading,TResult? Function( String? message)?  error,TResult? Function()?  noInternet,}) {final _that = this;
switch (_that) {
case GetCitiesStateInitial() when initial != null:
return initial();case GetCitiesStateGot() when got != null:
return got(_that.cityEntity);case GetCitiesStateLoading() when loading != null:
return loading();case GetCitiesStateError() when error != null:
return error(_that.message);case GetCitiesStateNoInternet() when noInternet != null:
return noInternet();case _:
  return null;

}
}

}

/// @nodoc


class GetCitiesStateInitial with DiagnosticableTreeMixin implements GetCitiesState {
  const GetCitiesStateInitial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCitiesState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCitiesStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCitiesState.initial()';
}


}




/// @nodoc


class GetCitiesStateGot with DiagnosticableTreeMixin implements GetCitiesState {
  const GetCitiesStateGot(final  List<CityEntity?>? cityEntity): _cityEntity = cityEntity;
  

 final  List<CityEntity?>? _cityEntity;
 List<CityEntity?>? get cityEntity {
  final value = _cityEntity;
  if (value == null) return null;
  if (_cityEntity is EqualUnmodifiableListView) return _cityEntity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GetCitiesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCitiesStateGotCopyWith<GetCitiesStateGot> get copyWith => _$GetCitiesStateGotCopyWithImpl<GetCitiesStateGot>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCitiesState.got'))
    ..add(DiagnosticsProperty('cityEntity', cityEntity));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCitiesStateGot&&const DeepCollectionEquality().equals(other._cityEntity, _cityEntity));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cityEntity));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCitiesState.got(cityEntity: $cityEntity)';
}


}

/// @nodoc
abstract mixin class $GetCitiesStateGotCopyWith<$Res> implements $GetCitiesStateCopyWith<$Res> {
  factory $GetCitiesStateGotCopyWith(GetCitiesStateGot value, $Res Function(GetCitiesStateGot) _then) = _$GetCitiesStateGotCopyWithImpl;
@useResult
$Res call({
 List<CityEntity?>? cityEntity
});




}
/// @nodoc
class _$GetCitiesStateGotCopyWithImpl<$Res>
    implements $GetCitiesStateGotCopyWith<$Res> {
  _$GetCitiesStateGotCopyWithImpl(this._self, this._then);

  final GetCitiesStateGot _self;
  final $Res Function(GetCitiesStateGot) _then;

/// Create a copy of GetCitiesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cityEntity = freezed,}) {
  return _then(GetCitiesStateGot(
freezed == cityEntity ? _self._cityEntity : cityEntity // ignore: cast_nullable_to_non_nullable
as List<CityEntity?>?,
  ));
}


}

/// @nodoc


class GetCitiesStateLoading with DiagnosticableTreeMixin implements GetCitiesState {
  const GetCitiesStateLoading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCitiesState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCitiesStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCitiesState.loading()';
}


}




/// @nodoc


class GetCitiesStateError with DiagnosticableTreeMixin implements GetCitiesState {
  const GetCitiesStateError(this.message);
  

 final  String? message;

/// Create a copy of GetCitiesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCitiesStateErrorCopyWith<GetCitiesStateError> get copyWith => _$GetCitiesStateErrorCopyWithImpl<GetCitiesStateError>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCitiesState.error'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCitiesStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCitiesState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $GetCitiesStateErrorCopyWith<$Res> implements $GetCitiesStateCopyWith<$Res> {
  factory $GetCitiesStateErrorCopyWith(GetCitiesStateError value, $Res Function(GetCitiesStateError) _then) = _$GetCitiesStateErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$GetCitiesStateErrorCopyWithImpl<$Res>
    implements $GetCitiesStateErrorCopyWith<$Res> {
  _$GetCitiesStateErrorCopyWithImpl(this._self, this._then);

  final GetCitiesStateError _self;
  final $Res Function(GetCitiesStateError) _then;

/// Create a copy of GetCitiesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(GetCitiesStateError(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class GetCitiesStateNoInternet with DiagnosticableTreeMixin implements GetCitiesState {
  const GetCitiesStateNoInternet();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCitiesState.noInternet'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCitiesStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCitiesState.noInternet()';
}


}




// dart format on
