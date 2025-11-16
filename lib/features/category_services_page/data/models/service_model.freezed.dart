// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceModel {

 int? get service_id; int? get id; bool? get is_active; int? get price; String? get notes; int? get duration_minutes; int? get buffer_minutes;
/// Create a copy of ServiceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceModelCopyWith<ServiceModel> get copyWith => _$ServiceModelCopyWithImpl<ServiceModel>(this as ServiceModel, _$identity);

  /// Serializes this ServiceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceModel&&(identical(other.service_id, service_id) || other.service_id == service_id)&&(identical(other.id, id) || other.id == id)&&(identical(other.is_active, is_active) || other.is_active == is_active)&&(identical(other.price, price) || other.price == price)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.duration_minutes, duration_minutes) || other.duration_minutes == duration_minutes)&&(identical(other.buffer_minutes, buffer_minutes) || other.buffer_minutes == buffer_minutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,service_id,id,is_active,price,notes,duration_minutes,buffer_minutes);

@override
String toString() {
  return 'ServiceModel(service_id: $service_id, id: $id, is_active: $is_active, price: $price, notes: $notes, duration_minutes: $duration_minutes, buffer_minutes: $buffer_minutes)';
}


}

/// @nodoc
abstract mixin class $ServiceModelCopyWith<$Res>  {
  factory $ServiceModelCopyWith(ServiceModel value, $Res Function(ServiceModel) _then) = _$ServiceModelCopyWithImpl;
@useResult
$Res call({
 int? service_id, int? id, bool? is_active, int? price, String? notes, int? duration_minutes, int? buffer_minutes
});




}
/// @nodoc
class _$ServiceModelCopyWithImpl<$Res>
    implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._self, this._then);

  final ServiceModel _self;
  final $Res Function(ServiceModel) _then;

/// Create a copy of ServiceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? service_id = freezed,Object? id = freezed,Object? is_active = freezed,Object? price = freezed,Object? notes = freezed,Object? duration_minutes = freezed,Object? buffer_minutes = freezed,}) {
  return _then(_self.copyWith(
service_id: freezed == service_id ? _self.service_id : service_id // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,duration_minutes: freezed == duration_minutes ? _self.duration_minutes : duration_minutes // ignore: cast_nullable_to_non_nullable
as int?,buffer_minutes: freezed == buffer_minutes ? _self.buffer_minutes : buffer_minutes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceModel].
extension ServiceModelPatterns on ServiceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceModel value)  $default,){
final _that = this;
switch (_that) {
case _ServiceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceModel value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? service_id,  int? id,  bool? is_active,  int? price,  String? notes,  int? duration_minutes,  int? buffer_minutes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceModel() when $default != null:
return $default(_that.service_id,_that.id,_that.is_active,_that.price,_that.notes,_that.duration_minutes,_that.buffer_minutes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? service_id,  int? id,  bool? is_active,  int? price,  String? notes,  int? duration_minutes,  int? buffer_minutes)  $default,) {final _that = this;
switch (_that) {
case _ServiceModel():
return $default(_that.service_id,_that.id,_that.is_active,_that.price,_that.notes,_that.duration_minutes,_that.buffer_minutes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? service_id,  int? id,  bool? is_active,  int? price,  String? notes,  int? duration_minutes,  int? buffer_minutes)?  $default,) {final _that = this;
switch (_that) {
case _ServiceModel() when $default != null:
return $default(_that.service_id,_that.id,_that.is_active,_that.price,_that.notes,_that.duration_minutes,_that.buffer_minutes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceModel implements ServiceModel {
  const _ServiceModel({this.service_id = 0, this.id = 0, this.is_active = false, this.price = 0, this.notes = "", this.duration_minutes = 0, this.buffer_minutes = 0});
  factory _ServiceModel.fromJson(Map<String, dynamic> json) => _$ServiceModelFromJson(json);

@override@JsonKey() final  int? service_id;
@override@JsonKey() final  int? id;
@override@JsonKey() final  bool? is_active;
@override@JsonKey() final  int? price;
@override@JsonKey() final  String? notes;
@override@JsonKey() final  int? duration_minutes;
@override@JsonKey() final  int? buffer_minutes;

/// Create a copy of ServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceModelCopyWith<_ServiceModel> get copyWith => __$ServiceModelCopyWithImpl<_ServiceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceModel&&(identical(other.service_id, service_id) || other.service_id == service_id)&&(identical(other.id, id) || other.id == id)&&(identical(other.is_active, is_active) || other.is_active == is_active)&&(identical(other.price, price) || other.price == price)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.duration_minutes, duration_minutes) || other.duration_minutes == duration_minutes)&&(identical(other.buffer_minutes, buffer_minutes) || other.buffer_minutes == buffer_minutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,service_id,id,is_active,price,notes,duration_minutes,buffer_minutes);

@override
String toString() {
  return 'ServiceModel(service_id: $service_id, id: $id, is_active: $is_active, price: $price, notes: $notes, duration_minutes: $duration_minutes, buffer_minutes: $buffer_minutes)';
}


}

/// @nodoc
abstract mixin class _$ServiceModelCopyWith<$Res> implements $ServiceModelCopyWith<$Res> {
  factory _$ServiceModelCopyWith(_ServiceModel value, $Res Function(_ServiceModel) _then) = __$ServiceModelCopyWithImpl;
@override @useResult
$Res call({
 int? service_id, int? id, bool? is_active, int? price, String? notes, int? duration_minutes, int? buffer_minutes
});




}
/// @nodoc
class __$ServiceModelCopyWithImpl<$Res>
    implements _$ServiceModelCopyWith<$Res> {
  __$ServiceModelCopyWithImpl(this._self, this._then);

  final _ServiceModel _self;
  final $Res Function(_ServiceModel) _then;

/// Create a copy of ServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? service_id = freezed,Object? id = freezed,Object? is_active = freezed,Object? price = freezed,Object? notes = freezed,Object? duration_minutes = freezed,Object? buffer_minutes = freezed,}) {
  return _then(_ServiceModel(
service_id: freezed == service_id ? _self.service_id : service_id // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,duration_minutes: freezed == duration_minutes ? _self.duration_minutes : duration_minutes // ignore: cast_nullable_to_non_nullable
as int?,buffer_minutes: freezed == buffer_minutes ? _self.buffer_minutes : buffer_minutes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
