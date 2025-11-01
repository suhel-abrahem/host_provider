// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_countries_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetCountriesEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCountriesEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCountriesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCountriesEvent()';
}


}

/// @nodoc
class $GetCountriesEventCopyWith<$Res>  {
$GetCountriesEventCopyWith(GetCountriesEvent _, $Res Function(GetCountriesEvent) __);
}


/// Adds pattern-matching-related methods to [GetCountriesEvent].
extension GetCountriesEventPatterns on GetCountriesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetCountriesEventStarted value)?  started,TResult Function( GetCountriesEventGetCountries value)?  getCountries,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetCountriesEventStarted() when started != null:
return started(_that);case GetCountriesEventGetCountries() when getCountries != null:
return getCountries(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetCountriesEventStarted value)  started,required TResult Function( GetCountriesEventGetCountries value)  getCountries,}){
final _that = this;
switch (_that) {
case GetCountriesEventStarted():
return started(_that);case GetCountriesEventGetCountries():
return getCountries(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetCountriesEventStarted value)?  started,TResult? Function( GetCountriesEventGetCountries value)?  getCountries,}){
final _that = this;
switch (_that) {
case GetCountriesEventStarted() when started != null:
return started(_that);case GetCountriesEventGetCountries() when getCountries != null:
return getCountries(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool? canAccessAddress)?  started,TResult Function( CountryModel? countryModel)?  getCountries,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetCountriesEventStarted() when started != null:
return started(_that.canAccessAddress);case GetCountriesEventGetCountries() when getCountries != null:
return getCountries(_that.countryModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool? canAccessAddress)  started,required TResult Function( CountryModel? countryModel)  getCountries,}) {final _that = this;
switch (_that) {
case GetCountriesEventStarted():
return started(_that.canAccessAddress);case GetCountriesEventGetCountries():
return getCountries(_that.countryModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool? canAccessAddress)?  started,TResult? Function( CountryModel? countryModel)?  getCountries,}) {final _that = this;
switch (_that) {
case GetCountriesEventStarted() when started != null:
return started(_that.canAccessAddress);case GetCountriesEventGetCountries() when getCountries != null:
return getCountries(_that.countryModel);case _:
  return null;

}
}

}

/// @nodoc


class GetCountriesEventStarted with DiagnosticableTreeMixin implements GetCountriesEvent {
  const GetCountriesEventStarted(this.canAccessAddress);
  

 final  bool? canAccessAddress;

/// Create a copy of GetCountriesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCountriesEventStartedCopyWith<GetCountriesEventStarted> get copyWith => _$GetCountriesEventStartedCopyWithImpl<GetCountriesEventStarted>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCountriesEvent.started'))
    ..add(DiagnosticsProperty('canAccessAddress', canAccessAddress));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCountriesEventStarted&&(identical(other.canAccessAddress, canAccessAddress) || other.canAccessAddress == canAccessAddress));
}


@override
int get hashCode => Object.hash(runtimeType,canAccessAddress);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCountriesEvent.started(canAccessAddress: $canAccessAddress)';
}


}

/// @nodoc
abstract mixin class $GetCountriesEventStartedCopyWith<$Res> implements $GetCountriesEventCopyWith<$Res> {
  factory $GetCountriesEventStartedCopyWith(GetCountriesEventStarted value, $Res Function(GetCountriesEventStarted) _then) = _$GetCountriesEventStartedCopyWithImpl;
@useResult
$Res call({
 bool? canAccessAddress
});




}
/// @nodoc
class _$GetCountriesEventStartedCopyWithImpl<$Res>
    implements $GetCountriesEventStartedCopyWith<$Res> {
  _$GetCountriesEventStartedCopyWithImpl(this._self, this._then);

  final GetCountriesEventStarted _self;
  final $Res Function(GetCountriesEventStarted) _then;

/// Create a copy of GetCountriesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? canAccessAddress = freezed,}) {
  return _then(GetCountriesEventStarted(
freezed == canAccessAddress ? _self.canAccessAddress : canAccessAddress // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class GetCountriesEventGetCountries with DiagnosticableTreeMixin implements GetCountriesEvent {
  const GetCountriesEventGetCountries(this.countryModel);
  

 final  CountryModel? countryModel;

/// Create a copy of GetCountriesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCountriesEventGetCountriesCopyWith<GetCountriesEventGetCountries> get copyWith => _$GetCountriesEventGetCountriesCopyWithImpl<GetCountriesEventGetCountries>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCountriesEvent.getCountries'))
    ..add(DiagnosticsProperty('countryModel', countryModel));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCountriesEventGetCountries&&(identical(other.countryModel, countryModel) || other.countryModel == countryModel));
}


@override
int get hashCode => Object.hash(runtimeType,countryModel);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCountriesEvent.getCountries(countryModel: $countryModel)';
}


}

/// @nodoc
abstract mixin class $GetCountriesEventGetCountriesCopyWith<$Res> implements $GetCountriesEventCopyWith<$Res> {
  factory $GetCountriesEventGetCountriesCopyWith(GetCountriesEventGetCountries value, $Res Function(GetCountriesEventGetCountries) _then) = _$GetCountriesEventGetCountriesCopyWithImpl;
@useResult
$Res call({
 CountryModel? countryModel
});


$CountryModelCopyWith<$Res>? get countryModel;

}
/// @nodoc
class _$GetCountriesEventGetCountriesCopyWithImpl<$Res>
    implements $GetCountriesEventGetCountriesCopyWith<$Res> {
  _$GetCountriesEventGetCountriesCopyWithImpl(this._self, this._then);

  final GetCountriesEventGetCountries _self;
  final $Res Function(GetCountriesEventGetCountries) _then;

/// Create a copy of GetCountriesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? countryModel = freezed,}) {
  return _then(GetCountriesEventGetCountries(
freezed == countryModel ? _self.countryModel : countryModel // ignore: cast_nullable_to_non_nullable
as CountryModel?,
  ));
}

/// Create a copy of GetCountriesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryModelCopyWith<$Res>? get countryModel {
    if (_self.countryModel == null) {
    return null;
  }

  return $CountryModelCopyWith<$Res>(_self.countryModel!, (value) {
    return _then(_self.copyWith(countryModel: value));
  });
}
}

/// @nodoc
mixin _$GetCountriesState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCountriesState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCountriesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCountriesState()';
}


}

/// @nodoc
class $GetCountriesStateCopyWith<$Res>  {
$GetCountriesStateCopyWith(GetCountriesState _, $Res Function(GetCountriesState) __);
}


/// Adds pattern-matching-related methods to [GetCountriesState].
extension GetCountriesStatePatterns on GetCountriesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetCountriesStateInitial value)?  initial,TResult Function( GetCountriesStateLoading value)?  loading,TResult Function( GetCountriesStateGot value)?  got,TResult Function( GetCountriesStateError value)?  error,TResult Function( GetCountriesStateNoInternet value)?  noInternet,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetCountriesStateInitial() when initial != null:
return initial(_that);case GetCountriesStateLoading() when loading != null:
return loading(_that);case GetCountriesStateGot() when got != null:
return got(_that);case GetCountriesStateError() when error != null:
return error(_that);case GetCountriesStateNoInternet() when noInternet != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetCountriesStateInitial value)  initial,required TResult Function( GetCountriesStateLoading value)  loading,required TResult Function( GetCountriesStateGot value)  got,required TResult Function( GetCountriesStateError value)  error,required TResult Function( GetCountriesStateNoInternet value)  noInternet,}){
final _that = this;
switch (_that) {
case GetCountriesStateInitial():
return initial(_that);case GetCountriesStateLoading():
return loading(_that);case GetCountriesStateGot():
return got(_that);case GetCountriesStateError():
return error(_that);case GetCountriesStateNoInternet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetCountriesStateInitial value)?  initial,TResult? Function( GetCountriesStateLoading value)?  loading,TResult? Function( GetCountriesStateGot value)?  got,TResult? Function( GetCountriesStateError value)?  error,TResult? Function( GetCountriesStateNoInternet value)?  noInternet,}){
final _that = this;
switch (_that) {
case GetCountriesStateInitial() when initial != null:
return initial(_that);case GetCountriesStateLoading() when loading != null:
return loading(_that);case GetCountriesStateGot() when got != null:
return got(_that);case GetCountriesStateError() when error != null:
return error(_that);case GetCountriesStateNoInternet() when noInternet != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<CountryEntity?>? countryEntity)?  got,TResult Function( String? message)?  error,TResult Function()?  noInternet,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetCountriesStateInitial() when initial != null:
return initial();case GetCountriesStateLoading() when loading != null:
return loading();case GetCountriesStateGot() when got != null:
return got(_that.countryEntity);case GetCountriesStateError() when error != null:
return error(_that.message);case GetCountriesStateNoInternet() when noInternet != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<CountryEntity?>? countryEntity)  got,required TResult Function( String? message)  error,required TResult Function()  noInternet,}) {final _that = this;
switch (_that) {
case GetCountriesStateInitial():
return initial();case GetCountriesStateLoading():
return loading();case GetCountriesStateGot():
return got(_that.countryEntity);case GetCountriesStateError():
return error(_that.message);case GetCountriesStateNoInternet():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<CountryEntity?>? countryEntity)?  got,TResult? Function( String? message)?  error,TResult? Function()?  noInternet,}) {final _that = this;
switch (_that) {
case GetCountriesStateInitial() when initial != null:
return initial();case GetCountriesStateLoading() when loading != null:
return loading();case GetCountriesStateGot() when got != null:
return got(_that.countryEntity);case GetCountriesStateError() when error != null:
return error(_that.message);case GetCountriesStateNoInternet() when noInternet != null:
return noInternet();case _:
  return null;

}
}

}

/// @nodoc


class GetCountriesStateInitial with DiagnosticableTreeMixin implements GetCountriesState {
  const GetCountriesStateInitial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCountriesState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCountriesStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCountriesState.initial()';
}


}




/// @nodoc


class GetCountriesStateLoading with DiagnosticableTreeMixin implements GetCountriesState {
  const GetCountriesStateLoading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCountriesState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCountriesStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCountriesState.loading()';
}


}




/// @nodoc


class GetCountriesStateGot with DiagnosticableTreeMixin implements GetCountriesState {
  const GetCountriesStateGot(final  List<CountryEntity?>? countryEntity): _countryEntity = countryEntity;
  

 final  List<CountryEntity?>? _countryEntity;
 List<CountryEntity?>? get countryEntity {
  final value = _countryEntity;
  if (value == null) return null;
  if (_countryEntity is EqualUnmodifiableListView) return _countryEntity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GetCountriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCountriesStateGotCopyWith<GetCountriesStateGot> get copyWith => _$GetCountriesStateGotCopyWithImpl<GetCountriesStateGot>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCountriesState.got'))
    ..add(DiagnosticsProperty('countryEntity', countryEntity));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCountriesStateGot&&const DeepCollectionEquality().equals(other._countryEntity, _countryEntity));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_countryEntity));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCountriesState.got(countryEntity: $countryEntity)';
}


}

/// @nodoc
abstract mixin class $GetCountriesStateGotCopyWith<$Res> implements $GetCountriesStateCopyWith<$Res> {
  factory $GetCountriesStateGotCopyWith(GetCountriesStateGot value, $Res Function(GetCountriesStateGot) _then) = _$GetCountriesStateGotCopyWithImpl;
@useResult
$Res call({
 List<CountryEntity?>? countryEntity
});




}
/// @nodoc
class _$GetCountriesStateGotCopyWithImpl<$Res>
    implements $GetCountriesStateGotCopyWith<$Res> {
  _$GetCountriesStateGotCopyWithImpl(this._self, this._then);

  final GetCountriesStateGot _self;
  final $Res Function(GetCountriesStateGot) _then;

/// Create a copy of GetCountriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? countryEntity = freezed,}) {
  return _then(GetCountriesStateGot(
freezed == countryEntity ? _self._countryEntity : countryEntity // ignore: cast_nullable_to_non_nullable
as List<CountryEntity?>?,
  ));
}


}

/// @nodoc


class GetCountriesStateError with DiagnosticableTreeMixin implements GetCountriesState {
  const GetCountriesStateError(this.message);
  

 final  String? message;

/// Create a copy of GetCountriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCountriesStateErrorCopyWith<GetCountriesStateError> get copyWith => _$GetCountriesStateErrorCopyWithImpl<GetCountriesStateError>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCountriesState.error'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCountriesStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCountriesState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $GetCountriesStateErrorCopyWith<$Res> implements $GetCountriesStateCopyWith<$Res> {
  factory $GetCountriesStateErrorCopyWith(GetCountriesStateError value, $Res Function(GetCountriesStateError) _then) = _$GetCountriesStateErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$GetCountriesStateErrorCopyWithImpl<$Res>
    implements $GetCountriesStateErrorCopyWith<$Res> {
  _$GetCountriesStateErrorCopyWithImpl(this._self, this._then);

  final GetCountriesStateError _self;
  final $Res Function(GetCountriesStateError) _then;

/// Create a copy of GetCountriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(GetCountriesStateError(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class GetCountriesStateNoInternet with DiagnosticableTreeMixin implements GetCountriesState {
  const GetCountriesStateNoInternet();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GetCountriesState.noInternet'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCountriesStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GetCountriesState.noInternet()';
}


}




// dart format on
