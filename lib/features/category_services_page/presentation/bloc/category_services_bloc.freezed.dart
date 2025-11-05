// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_services_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryServicesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryServicesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryServicesEvent()';
}


}

/// @nodoc
class $CategoryServicesEventCopyWith<$Res>  {
$CategoryServicesEventCopyWith(CategoryServicesEvent _, $Res Function(CategoryServicesEvent) __);
}


/// Adds pattern-matching-related methods to [CategoryServicesEvent].
extension CategoryServicesEventPatterns on CategoryServicesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CategoryServicesEventStarted value)?  started,TResult Function( CategoryServicesEventGet value)?  get,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CategoryServicesEventStarted() when started != null:
return started(_that);case CategoryServicesEventGet() when get != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CategoryServicesEventStarted value)  started,required TResult Function( CategoryServicesEventGet value)  get,}){
final _that = this;
switch (_that) {
case CategoryServicesEventStarted():
return started(_that);case CategoryServicesEventGet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CategoryServicesEventStarted value)?  started,TResult? Function( CategoryServicesEventGet value)?  get,}){
final _that = this;
switch (_that) {
case CategoryServicesEventStarted() when started != null:
return started(_that);case CategoryServicesEventGet() when get != null:
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
case CategoryServicesEventStarted() when started != null:
return started();case CategoryServicesEventGet() when get != null:
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
case CategoryServicesEventStarted():
return started();case CategoryServicesEventGet():
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
case CategoryServicesEventStarted() when started != null:
return started();case CategoryServicesEventGet() when get != null:
return get(_that.getServiceModel);case _:
  return null;

}
}

}

/// @nodoc


class CategoryServicesEventStarted implements CategoryServicesEvent {
  const CategoryServicesEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryServicesEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryServicesEvent.started()';
}


}




/// @nodoc


class CategoryServicesEventGet implements CategoryServicesEvent {
  const CategoryServicesEventGet(this.getServiceModel);
  

 final  GetServiceModel? getServiceModel;

/// Create a copy of CategoryServicesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryServicesEventGetCopyWith<CategoryServicesEventGet> get copyWith => _$CategoryServicesEventGetCopyWithImpl<CategoryServicesEventGet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryServicesEventGet&&const DeepCollectionEquality().equals(other.getServiceModel, getServiceModel));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(getServiceModel));

@override
String toString() {
  return 'CategoryServicesEvent.get(getServiceModel: $getServiceModel)';
}


}

/// @nodoc
abstract mixin class $CategoryServicesEventGetCopyWith<$Res> implements $CategoryServicesEventCopyWith<$Res> {
  factory $CategoryServicesEventGetCopyWith(CategoryServicesEventGet value, $Res Function(CategoryServicesEventGet) _then) = _$CategoryServicesEventGetCopyWithImpl;
@useResult
$Res call({
 GetServiceModel? getServiceModel
});




}
/// @nodoc
class _$CategoryServicesEventGetCopyWithImpl<$Res>
    implements $CategoryServicesEventGetCopyWith<$Res> {
  _$CategoryServicesEventGetCopyWithImpl(this._self, this._then);

  final CategoryServicesEventGet _self;
  final $Res Function(CategoryServicesEventGet) _then;

/// Create a copy of CategoryServicesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? getServiceModel = freezed,}) {
  return _then(CategoryServicesEventGet(
freezed == getServiceModel ? _self.getServiceModel : getServiceModel // ignore: cast_nullable_to_non_nullable
as GetServiceModel?,
  ));
}


}

/// @nodoc
mixin _$CategoryServicesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryServicesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryServicesState()';
}


}

/// @nodoc
class $CategoryServicesStateCopyWith<$Res>  {
$CategoryServicesStateCopyWith(CategoryServicesState _, $Res Function(CategoryServicesState) __);
}


/// Adds pattern-matching-related methods to [CategoryServicesState].
extension CategoryServicesStatePatterns on CategoryServicesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CategoryServicesStateInitial value)?  initial,TResult Function( CategoryServicesStateNoInternet value)?  noInternet,TResult Function( CategoryServicesStateLoading value)?  loading,TResult Function( CategoryServicesStateError value)?  error,TResult Function( CategoryServicesStateGot value)?  got,TResult Function( CategoryServicesStateUnAuthorized value)?  unAuthorized,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CategoryServicesStateInitial() when initial != null:
return initial(_that);case CategoryServicesStateNoInternet() when noInternet != null:
return noInternet(_that);case CategoryServicesStateLoading() when loading != null:
return loading(_that);case CategoryServicesStateError() when error != null:
return error(_that);case CategoryServicesStateGot() when got != null:
return got(_that);case CategoryServicesStateUnAuthorized() when unAuthorized != null:
return unAuthorized(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CategoryServicesStateInitial value)  initial,required TResult Function( CategoryServicesStateNoInternet value)  noInternet,required TResult Function( CategoryServicesStateLoading value)  loading,required TResult Function( CategoryServicesStateError value)  error,required TResult Function( CategoryServicesStateGot value)  got,required TResult Function( CategoryServicesStateUnAuthorized value)  unAuthorized,}){
final _that = this;
switch (_that) {
case CategoryServicesStateInitial():
return initial(_that);case CategoryServicesStateNoInternet():
return noInternet(_that);case CategoryServicesStateLoading():
return loading(_that);case CategoryServicesStateError():
return error(_that);case CategoryServicesStateGot():
return got(_that);case CategoryServicesStateUnAuthorized():
return unAuthorized(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CategoryServicesStateInitial value)?  initial,TResult? Function( CategoryServicesStateNoInternet value)?  noInternet,TResult? Function( CategoryServicesStateLoading value)?  loading,TResult? Function( CategoryServicesStateError value)?  error,TResult? Function( CategoryServicesStateGot value)?  got,TResult? Function( CategoryServicesStateUnAuthorized value)?  unAuthorized,}){
final _that = this;
switch (_that) {
case CategoryServicesStateInitial() when initial != null:
return initial(_that);case CategoryServicesStateNoInternet() when noInternet != null:
return noInternet(_that);case CategoryServicesStateLoading() when loading != null:
return loading(_that);case CategoryServicesStateError() when error != null:
return error(_that);case CategoryServicesStateGot() when got != null:
return got(_that);case CategoryServicesStateUnAuthorized() when unAuthorized != null:
return unAuthorized(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  noInternet,TResult Function()?  loading,TResult Function()?  error,TResult Function( List<ServiceEntity?>? serviceEntity)?  got,TResult Function()?  unAuthorized,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CategoryServicesStateInitial() when initial != null:
return initial();case CategoryServicesStateNoInternet() when noInternet != null:
return noInternet();case CategoryServicesStateLoading() when loading != null:
return loading();case CategoryServicesStateError() when error != null:
return error();case CategoryServicesStateGot() when got != null:
return got(_that.serviceEntity);case CategoryServicesStateUnAuthorized() when unAuthorized != null:
return unAuthorized();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  noInternet,required TResult Function()  loading,required TResult Function()  error,required TResult Function( List<ServiceEntity?>? serviceEntity)  got,required TResult Function()  unAuthorized,}) {final _that = this;
switch (_that) {
case CategoryServicesStateInitial():
return initial();case CategoryServicesStateNoInternet():
return noInternet();case CategoryServicesStateLoading():
return loading();case CategoryServicesStateError():
return error();case CategoryServicesStateGot():
return got(_that.serviceEntity);case CategoryServicesStateUnAuthorized():
return unAuthorized();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  noInternet,TResult? Function()?  loading,TResult? Function()?  error,TResult? Function( List<ServiceEntity?>? serviceEntity)?  got,TResult? Function()?  unAuthorized,}) {final _that = this;
switch (_that) {
case CategoryServicesStateInitial() when initial != null:
return initial();case CategoryServicesStateNoInternet() when noInternet != null:
return noInternet();case CategoryServicesStateLoading() when loading != null:
return loading();case CategoryServicesStateError() when error != null:
return error();case CategoryServicesStateGot() when got != null:
return got(_that.serviceEntity);case CategoryServicesStateUnAuthorized() when unAuthorized != null:
return unAuthorized();case _:
  return null;

}
}

}

/// @nodoc


class CategoryServicesStateInitial implements CategoryServicesState {
  const CategoryServicesStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryServicesStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryServicesState.initial()';
}


}




/// @nodoc


class CategoryServicesStateNoInternet implements CategoryServicesState {
  const CategoryServicesStateNoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryServicesStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryServicesState.noInternet()';
}


}




/// @nodoc


class CategoryServicesStateLoading implements CategoryServicesState {
  const CategoryServicesStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryServicesStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryServicesState.loading()';
}


}




/// @nodoc


class CategoryServicesStateError implements CategoryServicesState {
  const CategoryServicesStateError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryServicesStateError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryServicesState.error()';
}


}




/// @nodoc


class CategoryServicesStateGot implements CategoryServicesState {
  const CategoryServicesStateGot(final  List<ServiceEntity?>? serviceEntity): _serviceEntity = serviceEntity;
  

 final  List<ServiceEntity?>? _serviceEntity;
 List<ServiceEntity?>? get serviceEntity {
  final value = _serviceEntity;
  if (value == null) return null;
  if (_serviceEntity is EqualUnmodifiableListView) return _serviceEntity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CategoryServicesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryServicesStateGotCopyWith<CategoryServicesStateGot> get copyWith => _$CategoryServicesStateGotCopyWithImpl<CategoryServicesStateGot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryServicesStateGot&&const DeepCollectionEquality().equals(other._serviceEntity, _serviceEntity));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_serviceEntity));

@override
String toString() {
  return 'CategoryServicesState.got(serviceEntity: $serviceEntity)';
}


}

/// @nodoc
abstract mixin class $CategoryServicesStateGotCopyWith<$Res> implements $CategoryServicesStateCopyWith<$Res> {
  factory $CategoryServicesStateGotCopyWith(CategoryServicesStateGot value, $Res Function(CategoryServicesStateGot) _then) = _$CategoryServicesStateGotCopyWithImpl;
@useResult
$Res call({
 List<ServiceEntity?>? serviceEntity
});




}
/// @nodoc
class _$CategoryServicesStateGotCopyWithImpl<$Res>
    implements $CategoryServicesStateGotCopyWith<$Res> {
  _$CategoryServicesStateGotCopyWithImpl(this._self, this._then);

  final CategoryServicesStateGot _self;
  final $Res Function(CategoryServicesStateGot) _then;

/// Create a copy of CategoryServicesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? serviceEntity = freezed,}) {
  return _then(CategoryServicesStateGot(
freezed == serviceEntity ? _self._serviceEntity : serviceEntity // ignore: cast_nullable_to_non_nullable
as List<ServiceEntity?>?,
  ));
}


}

/// @nodoc


class CategoryServicesStateUnAuthorized implements CategoryServicesState {
  const CategoryServicesStateUnAuthorized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryServicesStateUnAuthorized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryServicesState.unAuthorized()';
}


}




// dart format on
