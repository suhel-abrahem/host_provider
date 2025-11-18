// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'languges_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LangugesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangugesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LangugesEvent()';
}


}

/// @nodoc
class $LangugesEventCopyWith<$Res>  {
$LangugesEventCopyWith(LangugesEvent _, $Res Function(LangugesEvent) __);
}


/// Adds pattern-matching-related methods to [LangugesEvent].
extension LangugesEventPatterns on LangugesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LangugesStarted value)?  started,TResult Function( LangugesGetLanguages value)?  getLanguages,TResult Function( LangugesUpdateLanguage value)?  updateLanguage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LangugesStarted() when started != null:
return started(_that);case LangugesGetLanguages() when getLanguages != null:
return getLanguages(_that);case LangugesUpdateLanguage() when updateLanguage != null:
return updateLanguage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LangugesStarted value)  started,required TResult Function( LangugesGetLanguages value)  getLanguages,required TResult Function( LangugesUpdateLanguage value)  updateLanguage,}){
final _that = this;
switch (_that) {
case LangugesStarted():
return started(_that);case LangugesGetLanguages():
return getLanguages(_that);case LangugesUpdateLanguage():
return updateLanguage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LangugesStarted value)?  started,TResult? Function( LangugesGetLanguages value)?  getLanguages,TResult? Function( LangugesUpdateLanguage value)?  updateLanguage,}){
final _that = this;
switch (_that) {
case LangugesStarted() when started != null:
return started(_that);case LangugesGetLanguages() when getLanguages != null:
return getLanguages(_that);case LangugesUpdateLanguage() when updateLanguage != null:
return updateLanguage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( LanguageModel? languageModel)?  getLanguages,TResult Function( LanguageModel? languageModel)?  updateLanguage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LangugesStarted() when started != null:
return started();case LangugesGetLanguages() when getLanguages != null:
return getLanguages(_that.languageModel);case LangugesUpdateLanguage() when updateLanguage != null:
return updateLanguage(_that.languageModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( LanguageModel? languageModel)  getLanguages,required TResult Function( LanguageModel? languageModel)  updateLanguage,}) {final _that = this;
switch (_that) {
case LangugesStarted():
return started();case LangugesGetLanguages():
return getLanguages(_that.languageModel);case LangugesUpdateLanguage():
return updateLanguage(_that.languageModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( LanguageModel? languageModel)?  getLanguages,TResult? Function( LanguageModel? languageModel)?  updateLanguage,}) {final _that = this;
switch (_that) {
case LangugesStarted() when started != null:
return started();case LangugesGetLanguages() when getLanguages != null:
return getLanguages(_that.languageModel);case LangugesUpdateLanguage() when updateLanguage != null:
return updateLanguage(_that.languageModel);case _:
  return null;

}
}

}

/// @nodoc


class LangugesStarted implements LangugesEvent {
  const LangugesStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangugesStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LangugesEvent.started()';
}


}




/// @nodoc


class LangugesGetLanguages implements LangugesEvent {
  const LangugesGetLanguages({required this.languageModel});
  

 final  LanguageModel? languageModel;

/// Create a copy of LangugesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LangugesGetLanguagesCopyWith<LangugesGetLanguages> get copyWith => _$LangugesGetLanguagesCopyWithImpl<LangugesGetLanguages>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangugesGetLanguages&&(identical(other.languageModel, languageModel) || other.languageModel == languageModel));
}


@override
int get hashCode => Object.hash(runtimeType,languageModel);

@override
String toString() {
  return 'LangugesEvent.getLanguages(languageModel: $languageModel)';
}


}

/// @nodoc
abstract mixin class $LangugesGetLanguagesCopyWith<$Res> implements $LangugesEventCopyWith<$Res> {
  factory $LangugesGetLanguagesCopyWith(LangugesGetLanguages value, $Res Function(LangugesGetLanguages) _then) = _$LangugesGetLanguagesCopyWithImpl;
@useResult
$Res call({
 LanguageModel? languageModel
});


$LanguageModelCopyWith<$Res>? get languageModel;

}
/// @nodoc
class _$LangugesGetLanguagesCopyWithImpl<$Res>
    implements $LangugesGetLanguagesCopyWith<$Res> {
  _$LangugesGetLanguagesCopyWithImpl(this._self, this._then);

  final LangugesGetLanguages _self;
  final $Res Function(LangugesGetLanguages) _then;

/// Create a copy of LangugesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageModel = freezed,}) {
  return _then(LangugesGetLanguages(
languageModel: freezed == languageModel ? _self.languageModel : languageModel // ignore: cast_nullable_to_non_nullable
as LanguageModel?,
  ));
}

/// Create a copy of LangugesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageModelCopyWith<$Res>? get languageModel {
    if (_self.languageModel == null) {
    return null;
  }

  return $LanguageModelCopyWith<$Res>(_self.languageModel!, (value) {
    return _then(_self.copyWith(languageModel: value));
  });
}
}

/// @nodoc


class LangugesUpdateLanguage implements LangugesEvent {
  const LangugesUpdateLanguage({required this.languageModel});
  

 final  LanguageModel? languageModel;

/// Create a copy of LangugesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LangugesUpdateLanguageCopyWith<LangugesUpdateLanguage> get copyWith => _$LangugesUpdateLanguageCopyWithImpl<LangugesUpdateLanguage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangugesUpdateLanguage&&(identical(other.languageModel, languageModel) || other.languageModel == languageModel));
}


@override
int get hashCode => Object.hash(runtimeType,languageModel);

@override
String toString() {
  return 'LangugesEvent.updateLanguage(languageModel: $languageModel)';
}


}

/// @nodoc
abstract mixin class $LangugesUpdateLanguageCopyWith<$Res> implements $LangugesEventCopyWith<$Res> {
  factory $LangugesUpdateLanguageCopyWith(LangugesUpdateLanguage value, $Res Function(LangugesUpdateLanguage) _then) = _$LangugesUpdateLanguageCopyWithImpl;
@useResult
$Res call({
 LanguageModel? languageModel
});


$LanguageModelCopyWith<$Res>? get languageModel;

}
/// @nodoc
class _$LangugesUpdateLanguageCopyWithImpl<$Res>
    implements $LangugesUpdateLanguageCopyWith<$Res> {
  _$LangugesUpdateLanguageCopyWithImpl(this._self, this._then);

  final LangugesUpdateLanguage _self;
  final $Res Function(LangugesUpdateLanguage) _then;

/// Create a copy of LangugesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageModel = freezed,}) {
  return _then(LangugesUpdateLanguage(
languageModel: freezed == languageModel ? _self.languageModel : languageModel // ignore: cast_nullable_to_non_nullable
as LanguageModel?,
  ));
}

/// Create a copy of LangugesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageModelCopyWith<$Res>? get languageModel {
    if (_self.languageModel == null) {
    return null;
  }

  return $LanguageModelCopyWith<$Res>(_self.languageModel!, (value) {
    return _then(_self.copyWith(languageModel: value));
  });
}
}

/// @nodoc
mixin _$LangugesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangugesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LangugesState()';
}


}

/// @nodoc
class $LangugesStateCopyWith<$Res>  {
$LangugesStateCopyWith(LangugesState _, $Res Function(LangugesState) __);
}


/// Adds pattern-matching-related methods to [LangugesState].
extension LangugesStatePatterns on LangugesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LangugesStateInitial value)?  initial,TResult Function( LangugesStateLoading value)?  loading,TResult Function( LangugesStateLoaded value)?  loaded,TResult Function( LangugesStateError value)?  error,TResult Function( LangugesStateNoData value)?  noData,TResult Function( LangugesStateNoInternet value)?  noInternet,TResult Function( LangugesStateUnauthenticated value)?  unauthenticated,TResult Function( LangugesStateLanguageSetSuccess value)?  languageSetSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LangugesStateInitial() when initial != null:
return initial(_that);case LangugesStateLoading() when loading != null:
return loading(_that);case LangugesStateLoaded() when loaded != null:
return loaded(_that);case LangugesStateError() when error != null:
return error(_that);case LangugesStateNoData() when noData != null:
return noData(_that);case LangugesStateNoInternet() when noInternet != null:
return noInternet(_that);case LangugesStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case LangugesStateLanguageSetSuccess() when languageSetSuccess != null:
return languageSetSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LangugesStateInitial value)  initial,required TResult Function( LangugesStateLoading value)  loading,required TResult Function( LangugesStateLoaded value)  loaded,required TResult Function( LangugesStateError value)  error,required TResult Function( LangugesStateNoData value)  noData,required TResult Function( LangugesStateNoInternet value)  noInternet,required TResult Function( LangugesStateUnauthenticated value)  unauthenticated,required TResult Function( LangugesStateLanguageSetSuccess value)  languageSetSuccess,}){
final _that = this;
switch (_that) {
case LangugesStateInitial():
return initial(_that);case LangugesStateLoading():
return loading(_that);case LangugesStateLoaded():
return loaded(_that);case LangugesStateError():
return error(_that);case LangugesStateNoData():
return noData(_that);case LangugesStateNoInternet():
return noInternet(_that);case LangugesStateUnauthenticated():
return unauthenticated(_that);case LangugesStateLanguageSetSuccess():
return languageSetSuccess(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LangugesStateInitial value)?  initial,TResult? Function( LangugesStateLoading value)?  loading,TResult? Function( LangugesStateLoaded value)?  loaded,TResult? Function( LangugesStateError value)?  error,TResult? Function( LangugesStateNoData value)?  noData,TResult? Function( LangugesStateNoInternet value)?  noInternet,TResult? Function( LangugesStateUnauthenticated value)?  unauthenticated,TResult? Function( LangugesStateLanguageSetSuccess value)?  languageSetSuccess,}){
final _that = this;
switch (_that) {
case LangugesStateInitial() when initial != null:
return initial(_that);case LangugesStateLoading() when loading != null:
return loading(_that);case LangugesStateLoaded() when loaded != null:
return loaded(_that);case LangugesStateError() when error != null:
return error(_that);case LangugesStateNoData() when noData != null:
return noData(_that);case LangugesStateNoInternet() when noInternet != null:
return noInternet(_that);case LangugesStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case LangugesStateLanguageSetSuccess() when languageSetSuccess != null:
return languageSetSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<LanguageEntity?>? languages)?  loaded,TResult Function( String message)?  error,TResult Function()?  noData,TResult Function()?  noInternet,TResult Function()?  unauthenticated,TResult Function()?  languageSetSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LangugesStateInitial() when initial != null:
return initial();case LangugesStateLoading() when loading != null:
return loading();case LangugesStateLoaded() when loaded != null:
return loaded(_that.languages);case LangugesStateError() when error != null:
return error(_that.message);case LangugesStateNoData() when noData != null:
return noData();case LangugesStateNoInternet() when noInternet != null:
return noInternet();case LangugesStateUnauthenticated() when unauthenticated != null:
return unauthenticated();case LangugesStateLanguageSetSuccess() when languageSetSuccess != null:
return languageSetSuccess();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<LanguageEntity?>? languages)  loaded,required TResult Function( String message)  error,required TResult Function()  noData,required TResult Function()  noInternet,required TResult Function()  unauthenticated,required TResult Function()  languageSetSuccess,}) {final _that = this;
switch (_that) {
case LangugesStateInitial():
return initial();case LangugesStateLoading():
return loading();case LangugesStateLoaded():
return loaded(_that.languages);case LangugesStateError():
return error(_that.message);case LangugesStateNoData():
return noData();case LangugesStateNoInternet():
return noInternet();case LangugesStateUnauthenticated():
return unauthenticated();case LangugesStateLanguageSetSuccess():
return languageSetSuccess();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<LanguageEntity?>? languages)?  loaded,TResult? Function( String message)?  error,TResult? Function()?  noData,TResult? Function()?  noInternet,TResult? Function()?  unauthenticated,TResult? Function()?  languageSetSuccess,}) {final _that = this;
switch (_that) {
case LangugesStateInitial() when initial != null:
return initial();case LangugesStateLoading() when loading != null:
return loading();case LangugesStateLoaded() when loaded != null:
return loaded(_that.languages);case LangugesStateError() when error != null:
return error(_that.message);case LangugesStateNoData() when noData != null:
return noData();case LangugesStateNoInternet() when noInternet != null:
return noInternet();case LangugesStateUnauthenticated() when unauthenticated != null:
return unauthenticated();case LangugesStateLanguageSetSuccess() when languageSetSuccess != null:
return languageSetSuccess();case _:
  return null;

}
}

}

/// @nodoc


class LangugesStateInitial implements LangugesState {
  const LangugesStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangugesStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LangugesState.initial()';
}


}




/// @nodoc


class LangugesStateLoading implements LangugesState {
  const LangugesStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangugesStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LangugesState.loading()';
}


}




/// @nodoc


class LangugesStateLoaded implements LangugesState {
  const LangugesStateLoaded({final  List<LanguageEntity?>? languages}): _languages = languages;
  

 final  List<LanguageEntity?>? _languages;
 List<LanguageEntity?>? get languages {
  final value = _languages;
  if (value == null) return null;
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of LangugesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LangugesStateLoadedCopyWith<LangugesStateLoaded> get copyWith => _$LangugesStateLoadedCopyWithImpl<LangugesStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangugesStateLoaded&&const DeepCollectionEquality().equals(other._languages, _languages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_languages));

@override
String toString() {
  return 'LangugesState.loaded(languages: $languages)';
}


}

/// @nodoc
abstract mixin class $LangugesStateLoadedCopyWith<$Res> implements $LangugesStateCopyWith<$Res> {
  factory $LangugesStateLoadedCopyWith(LangugesStateLoaded value, $Res Function(LangugesStateLoaded) _then) = _$LangugesStateLoadedCopyWithImpl;
@useResult
$Res call({
 List<LanguageEntity?>? languages
});




}
/// @nodoc
class _$LangugesStateLoadedCopyWithImpl<$Res>
    implements $LangugesStateLoadedCopyWith<$Res> {
  _$LangugesStateLoadedCopyWithImpl(this._self, this._then);

  final LangugesStateLoaded _self;
  final $Res Function(LangugesStateLoaded) _then;

/// Create a copy of LangugesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languages = freezed,}) {
  return _then(LangugesStateLoaded(
languages: freezed == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<LanguageEntity?>?,
  ));
}


}

/// @nodoc


class LangugesStateError implements LangugesState {
  const LangugesStateError({required this.message});
  

 final  String message;

/// Create a copy of LangugesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LangugesStateErrorCopyWith<LangugesStateError> get copyWith => _$LangugesStateErrorCopyWithImpl<LangugesStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangugesStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LangugesState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $LangugesStateErrorCopyWith<$Res> implements $LangugesStateCopyWith<$Res> {
  factory $LangugesStateErrorCopyWith(LangugesStateError value, $Res Function(LangugesStateError) _then) = _$LangugesStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$LangugesStateErrorCopyWithImpl<$Res>
    implements $LangugesStateErrorCopyWith<$Res> {
  _$LangugesStateErrorCopyWithImpl(this._self, this._then);

  final LangugesStateError _self;
  final $Res Function(LangugesStateError) _then;

/// Create a copy of LangugesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(LangugesStateError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LangugesStateNoData implements LangugesState {
  const LangugesStateNoData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangugesStateNoData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LangugesState.noData()';
}


}




/// @nodoc


class LangugesStateNoInternet implements LangugesState {
  const LangugesStateNoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangugesStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LangugesState.noInternet()';
}


}




/// @nodoc


class LangugesStateUnauthenticated implements LangugesState {
  const LangugesStateUnauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangugesStateUnauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LangugesState.unauthenticated()';
}


}




/// @nodoc


class LangugesStateLanguageSetSuccess implements LangugesState {
  const LangugesStateLanguageSetSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangugesStateLanguageSetSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LangugesState.languageSetSuccess()';
}


}




// dart format on
