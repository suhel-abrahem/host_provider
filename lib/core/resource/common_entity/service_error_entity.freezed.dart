// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_error_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceErrorEntity {

 List? get service_id; List? get price; List? get is_active;
/// Create a copy of ServiceErrorEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceErrorEntityCopyWith<ServiceErrorEntity> get copyWith => _$ServiceErrorEntityCopyWithImpl<ServiceErrorEntity>(this as ServiceErrorEntity, _$identity);

  /// Serializes this ServiceErrorEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceErrorEntity&&const DeepCollectionEquality().equals(other.service_id, service_id)&&const DeepCollectionEquality().equals(other.price, price)&&const DeepCollectionEquality().equals(other.is_active, is_active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(service_id),const DeepCollectionEquality().hash(price),const DeepCollectionEquality().hash(is_active));

@override
String toString() {
  return 'ServiceErrorEntity(service_id: $service_id, price: $price, is_active: $is_active)';
}


}

/// @nodoc
abstract mixin class $ServiceErrorEntityCopyWith<$Res>  {
  factory $ServiceErrorEntityCopyWith(ServiceErrorEntity value, $Res Function(ServiceErrorEntity) _then) = _$ServiceErrorEntityCopyWithImpl;
@useResult
$Res call({
 List? service_id, List? price, List? is_active
});




}
/// @nodoc
class _$ServiceErrorEntityCopyWithImpl<$Res>
    implements $ServiceErrorEntityCopyWith<$Res> {
  _$ServiceErrorEntityCopyWithImpl(this._self, this._then);

  final ServiceErrorEntity _self;
  final $Res Function(ServiceErrorEntity) _then;

/// Create a copy of ServiceErrorEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? service_id = freezed,Object? price = freezed,Object? is_active = freezed,}) {
  return _then(_self.copyWith(
service_id: freezed == service_id ? _self.service_id : service_id // ignore: cast_nullable_to_non_nullable
as List?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as List?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as List?,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceErrorEntity].
extension ServiceErrorEntityPatterns on ServiceErrorEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceErrorEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceErrorEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceErrorEntity value)  $default,){
final _that = this;
switch (_that) {
case _ServiceErrorEntity():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceErrorEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceErrorEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List? service_id,  List? price,  List? is_active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceErrorEntity() when $default != null:
return $default(_that.service_id,_that.price,_that.is_active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List? service_id,  List? price,  List? is_active)  $default,) {final _that = this;
switch (_that) {
case _ServiceErrorEntity():
return $default(_that.service_id,_that.price,_that.is_active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List? service_id,  List? price,  List? is_active)?  $default,) {final _that = this;
switch (_that) {
case _ServiceErrorEntity() when $default != null:
return $default(_that.service_id,_that.price,_that.is_active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceErrorEntity implements ServiceErrorEntity {
  const _ServiceErrorEntity({final  List? service_id = const [], final  List? price = const [], final  List? is_active = const []}): _service_id = service_id,_price = price,_is_active = is_active;
  factory _ServiceErrorEntity.fromJson(Map<String, dynamic> json) => _$ServiceErrorEntityFromJson(json);

 final  List? _service_id;
@override@JsonKey() List? get service_id {
  final value = _service_id;
  if (value == null) return null;
  if (_service_id is EqualUnmodifiableListView) return _service_id;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List? _price;
@override@JsonKey() List? get price {
  final value = _price;
  if (value == null) return null;
  if (_price is EqualUnmodifiableListView) return _price;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List? _is_active;
@override@JsonKey() List? get is_active {
  final value = _is_active;
  if (value == null) return null;
  if (_is_active is EqualUnmodifiableListView) return _is_active;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ServiceErrorEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceErrorEntityCopyWith<_ServiceErrorEntity> get copyWith => __$ServiceErrorEntityCopyWithImpl<_ServiceErrorEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceErrorEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceErrorEntity&&const DeepCollectionEquality().equals(other._service_id, _service_id)&&const DeepCollectionEquality().equals(other._price, _price)&&const DeepCollectionEquality().equals(other._is_active, _is_active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_service_id),const DeepCollectionEquality().hash(_price),const DeepCollectionEquality().hash(_is_active));

@override
String toString() {
  return 'ServiceErrorEntity(service_id: $service_id, price: $price, is_active: $is_active)';
}


}

/// @nodoc
abstract mixin class _$ServiceErrorEntityCopyWith<$Res> implements $ServiceErrorEntityCopyWith<$Res> {
  factory _$ServiceErrorEntityCopyWith(_ServiceErrorEntity value, $Res Function(_ServiceErrorEntity) _then) = __$ServiceErrorEntityCopyWithImpl;
@override @useResult
$Res call({
 List? service_id, List? price, List? is_active
});




}
/// @nodoc
class __$ServiceErrorEntityCopyWithImpl<$Res>
    implements _$ServiceErrorEntityCopyWith<$Res> {
  __$ServiceErrorEntityCopyWithImpl(this._self, this._then);

  final _ServiceErrorEntity _self;
  final $Res Function(_ServiceErrorEntity) _then;

/// Create a copy of ServiceErrorEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? service_id = freezed,Object? price = freezed,Object? is_active = freezed,}) {
  return _then(_ServiceErrorEntity(
service_id: freezed == service_id ? _self._service_id : service_id // ignore: cast_nullable_to_non_nullable
as List?,price: freezed == price ? _self._price : price // ignore: cast_nullable_to_non_nullable
as List?,is_active: freezed == is_active ? _self._is_active : is_active // ignore: cast_nullable_to_non_nullable
as List?,
  ));
}


}

// dart format on
