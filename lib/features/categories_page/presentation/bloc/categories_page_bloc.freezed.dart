// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoriesPageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesPageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesPageEvent()';
}


}

/// @nodoc
class $CategoriesPageEventCopyWith<$Res>  {
$CategoriesPageEventCopyWith(CategoriesPageEvent _, $Res Function(CategoriesPageEvent) __);
}


/// Adds pattern-matching-related methods to [CategoriesPageEvent].
extension CategoriesPageEventPatterns on CategoriesPageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CategoriesPageEventStarted value)?  started,TResult Function( CategoriesPageEventGet value)?  get,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CategoriesPageEventStarted() when started != null:
return started(_that);case CategoriesPageEventGet() when get != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CategoriesPageEventStarted value)  started,required TResult Function( CategoriesPageEventGet value)  get,}){
final _that = this;
switch (_that) {
case CategoriesPageEventStarted():
return started(_that);case CategoriesPageEventGet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CategoriesPageEventStarted value)?  started,TResult? Function( CategoriesPageEventGet value)?  get,}){
final _that = this;
switch (_that) {
case CategoriesPageEventStarted() when started != null:
return started(_that);case CategoriesPageEventGet() when get != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( GetCategoryModel? getCategoryModel)?  get,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CategoriesPageEventStarted() when started != null:
return started();case CategoriesPageEventGet() when get != null:
return get(_that.getCategoryModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( GetCategoryModel? getCategoryModel)  get,}) {final _that = this;
switch (_that) {
case CategoriesPageEventStarted():
return started();case CategoriesPageEventGet():
return get(_that.getCategoryModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( GetCategoryModel? getCategoryModel)?  get,}) {final _that = this;
switch (_that) {
case CategoriesPageEventStarted() when started != null:
return started();case CategoriesPageEventGet() when get != null:
return get(_that.getCategoryModel);case _:
  return null;

}
}

}

/// @nodoc


class CategoriesPageEventStarted implements CategoriesPageEvent {
  const CategoriesPageEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesPageEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesPageEvent.started()';
}


}




/// @nodoc


class CategoriesPageEventGet implements CategoriesPageEvent {
  const CategoriesPageEventGet(this.getCategoryModel);
  

 final  GetCategoryModel? getCategoryModel;

/// Create a copy of CategoriesPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesPageEventGetCopyWith<CategoriesPageEventGet> get copyWith => _$CategoriesPageEventGetCopyWithImpl<CategoriesPageEventGet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesPageEventGet&&(identical(other.getCategoryModel, getCategoryModel) || other.getCategoryModel == getCategoryModel));
}


@override
int get hashCode => Object.hash(runtimeType,getCategoryModel);

@override
String toString() {
  return 'CategoriesPageEvent.get(getCategoryModel: $getCategoryModel)';
}


}

/// @nodoc
abstract mixin class $CategoriesPageEventGetCopyWith<$Res> implements $CategoriesPageEventCopyWith<$Res> {
  factory $CategoriesPageEventGetCopyWith(CategoriesPageEventGet value, $Res Function(CategoriesPageEventGet) _then) = _$CategoriesPageEventGetCopyWithImpl;
@useResult
$Res call({
 GetCategoryModel? getCategoryModel
});


$GetCategoryModelCopyWith<$Res>? get getCategoryModel;

}
/// @nodoc
class _$CategoriesPageEventGetCopyWithImpl<$Res>
    implements $CategoriesPageEventGetCopyWith<$Res> {
  _$CategoriesPageEventGetCopyWithImpl(this._self, this._then);

  final CategoriesPageEventGet _self;
  final $Res Function(CategoriesPageEventGet) _then;

/// Create a copy of CategoriesPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? getCategoryModel = freezed,}) {
  return _then(CategoriesPageEventGet(
freezed == getCategoryModel ? _self.getCategoryModel : getCategoryModel // ignore: cast_nullable_to_non_nullable
as GetCategoryModel?,
  ));
}

/// Create a copy of CategoriesPageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetCategoryModelCopyWith<$Res>? get getCategoryModel {
    if (_self.getCategoryModel == null) {
    return null;
  }

  return $GetCategoryModelCopyWith<$Res>(_self.getCategoryModel!, (value) {
    return _then(_self.copyWith(getCategoryModel: value));
  });
}
}

/// @nodoc
mixin _$CategoriesPageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesPageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesPageState()';
}


}

/// @nodoc
class $CategoriesPageStateCopyWith<$Res>  {
$CategoriesPageStateCopyWith(CategoriesPageState _, $Res Function(CategoriesPageState) __);
}


/// Adds pattern-matching-related methods to [CategoriesPageState].
extension CategoriesPageStatePatterns on CategoriesPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CategoriesPageStateInitial value)?  initial,TResult Function( CategoriesPageStateError value)?  error,TResult Function( CategoriesPageStateNoInternet value)?  noInternet,TResult Function( CategoriesPageStateUnAuthorized value)?  unAuthorized,TResult Function( CategoriesPageStateLoading value)?  loading,TResult Function( CategoriesPageStateGot value)?  got,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CategoriesPageStateInitial() when initial != null:
return initial(_that);case CategoriesPageStateError() when error != null:
return error(_that);case CategoriesPageStateNoInternet() when noInternet != null:
return noInternet(_that);case CategoriesPageStateUnAuthorized() when unAuthorized != null:
return unAuthorized(_that);case CategoriesPageStateLoading() when loading != null:
return loading(_that);case CategoriesPageStateGot() when got != null:
return got(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CategoriesPageStateInitial value)  initial,required TResult Function( CategoriesPageStateError value)  error,required TResult Function( CategoriesPageStateNoInternet value)  noInternet,required TResult Function( CategoriesPageStateUnAuthorized value)  unAuthorized,required TResult Function( CategoriesPageStateLoading value)  loading,required TResult Function( CategoriesPageStateGot value)  got,}){
final _that = this;
switch (_that) {
case CategoriesPageStateInitial():
return initial(_that);case CategoriesPageStateError():
return error(_that);case CategoriesPageStateNoInternet():
return noInternet(_that);case CategoriesPageStateUnAuthorized():
return unAuthorized(_that);case CategoriesPageStateLoading():
return loading(_that);case CategoriesPageStateGot():
return got(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CategoriesPageStateInitial value)?  initial,TResult? Function( CategoriesPageStateError value)?  error,TResult? Function( CategoriesPageStateNoInternet value)?  noInternet,TResult? Function( CategoriesPageStateUnAuthorized value)?  unAuthorized,TResult? Function( CategoriesPageStateLoading value)?  loading,TResult? Function( CategoriesPageStateGot value)?  got,}){
final _that = this;
switch (_that) {
case CategoriesPageStateInitial() when initial != null:
return initial(_that);case CategoriesPageStateError() when error != null:
return error(_that);case CategoriesPageStateNoInternet() when noInternet != null:
return noInternet(_that);case CategoriesPageStateUnAuthorized() when unAuthorized != null:
return unAuthorized(_that);case CategoriesPageStateLoading() when loading != null:
return loading(_that);case CategoriesPageStateGot() when got != null:
return got(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  error,TResult Function()?  noInternet,TResult Function()?  unAuthorized,TResult Function()?  loading,TResult Function( List<CategoryEntity?>? categoryEntity)?  got,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CategoriesPageStateInitial() when initial != null:
return initial();case CategoriesPageStateError() when error != null:
return error();case CategoriesPageStateNoInternet() when noInternet != null:
return noInternet();case CategoriesPageStateUnAuthorized() when unAuthorized != null:
return unAuthorized();case CategoriesPageStateLoading() when loading != null:
return loading();case CategoriesPageStateGot() when got != null:
return got(_that.categoryEntity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  error,required TResult Function()  noInternet,required TResult Function()  unAuthorized,required TResult Function()  loading,required TResult Function( List<CategoryEntity?>? categoryEntity)  got,}) {final _that = this;
switch (_that) {
case CategoriesPageStateInitial():
return initial();case CategoriesPageStateError():
return error();case CategoriesPageStateNoInternet():
return noInternet();case CategoriesPageStateUnAuthorized():
return unAuthorized();case CategoriesPageStateLoading():
return loading();case CategoriesPageStateGot():
return got(_that.categoryEntity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  error,TResult? Function()?  noInternet,TResult? Function()?  unAuthorized,TResult? Function()?  loading,TResult? Function( List<CategoryEntity?>? categoryEntity)?  got,}) {final _that = this;
switch (_that) {
case CategoriesPageStateInitial() when initial != null:
return initial();case CategoriesPageStateError() when error != null:
return error();case CategoriesPageStateNoInternet() when noInternet != null:
return noInternet();case CategoriesPageStateUnAuthorized() when unAuthorized != null:
return unAuthorized();case CategoriesPageStateLoading() when loading != null:
return loading();case CategoriesPageStateGot() when got != null:
return got(_that.categoryEntity);case _:
  return null;

}
}

}

/// @nodoc


class CategoriesPageStateInitial implements CategoriesPageState {
  const CategoriesPageStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesPageStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesPageState.initial()';
}


}




/// @nodoc


class CategoriesPageStateError implements CategoriesPageState {
  const CategoriesPageStateError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesPageStateError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesPageState.error()';
}


}




/// @nodoc


class CategoriesPageStateNoInternet implements CategoriesPageState {
  const CategoriesPageStateNoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesPageStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesPageState.noInternet()';
}


}




/// @nodoc


class CategoriesPageStateUnAuthorized implements CategoriesPageState {
  const CategoriesPageStateUnAuthorized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesPageStateUnAuthorized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesPageState.unAuthorized()';
}


}




/// @nodoc


class CategoriesPageStateLoading implements CategoriesPageState {
  const CategoriesPageStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesPageStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesPageState.loading()';
}


}




/// @nodoc


class CategoriesPageStateGot implements CategoriesPageState {
  const CategoriesPageStateGot(final  List<CategoryEntity?>? categoryEntity): _categoryEntity = categoryEntity;
  

 final  List<CategoryEntity?>? _categoryEntity;
 List<CategoryEntity?>? get categoryEntity {
  final value = _categoryEntity;
  if (value == null) return null;
  if (_categoryEntity is EqualUnmodifiableListView) return _categoryEntity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CategoriesPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesPageStateGotCopyWith<CategoriesPageStateGot> get copyWith => _$CategoriesPageStateGotCopyWithImpl<CategoriesPageStateGot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesPageStateGot&&const DeepCollectionEquality().equals(other._categoryEntity, _categoryEntity));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categoryEntity));

@override
String toString() {
  return 'CategoriesPageState.got(categoryEntity: $categoryEntity)';
}


}

/// @nodoc
abstract mixin class $CategoriesPageStateGotCopyWith<$Res> implements $CategoriesPageStateCopyWith<$Res> {
  factory $CategoriesPageStateGotCopyWith(CategoriesPageStateGot value, $Res Function(CategoriesPageStateGot) _then) = _$CategoriesPageStateGotCopyWithImpl;
@useResult
$Res call({
 List<CategoryEntity?>? categoryEntity
});




}
/// @nodoc
class _$CategoriesPageStateGotCopyWithImpl<$Res>
    implements $CategoriesPageStateGotCopyWith<$Res> {
  _$CategoriesPageStateGotCopyWithImpl(this._self, this._then);

  final CategoriesPageStateGot _self;
  final $Res Function(CategoriesPageStateGot) _then;

/// Create a copy of CategoriesPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryEntity = freezed,}) {
  return _then(CategoriesPageStateGot(
freezed == categoryEntity ? _self._categoryEntity : categoryEntity // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity?>?,
  ));
}


}

// dart format on
