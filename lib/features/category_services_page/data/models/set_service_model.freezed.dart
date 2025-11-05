// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetServiceModel {

 int? get service_id; String? get name; String? get price; String? get notes; String? get duration_minutes; String? get buffer_minutes;
/// Create a copy of SetServiceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetServiceModelCopyWith<SetServiceModel> get copyWith => _$SetServiceModelCopyWithImpl<SetServiceModel>(this as SetServiceModel, _$identity);

  /// Serializes this SetServiceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetServiceModel&&(identical(other.service_id, service_id) || other.service_id == service_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.duration_minutes, duration_minutes) || other.duration_minutes == duration_minutes)&&(identical(other.buffer_minutes, buffer_minutes) || other.buffer_minutes == buffer_minutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,service_id,name,price,notes,duration_minutes,buffer_minutes);

@override
String toString() {
  return 'SetServiceModel(service_id: $service_id, name: $name, price: $price, notes: $notes, duration_minutes: $duration_minutes, buffer_minutes: $buffer_minutes)';
}


}

/// @nodoc
abstract mixin class $SetServiceModelCopyWith<$Res>  {
  factory $SetServiceModelCopyWith(SetServiceModel value, $Res Function(SetServiceModel) _then) = _$SetServiceModelCopyWithImpl;
@useResult
$Res call({
 int? service_id, String? name, String? price, String? notes, String? duration_minutes, String? buffer_minutes
});




}
/// @nodoc
class _$SetServiceModelCopyWithImpl<$Res>
    implements $SetServiceModelCopyWith<$Res> {
  _$SetServiceModelCopyWithImpl(this._self, this._then);

  final SetServiceModel _self;
  final $Res Function(SetServiceModel) _then;

/// Create a copy of SetServiceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? service_id = freezed,Object? name = freezed,Object? price = freezed,Object? notes = freezed,Object? duration_minutes = freezed,Object? buffer_minutes = freezed,}) {
  return _then(_self.copyWith(
service_id: freezed == service_id ? _self.service_id : service_id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,duration_minutes: freezed == duration_minutes ? _self.duration_minutes : duration_minutes // ignore: cast_nullable_to_non_nullable
as String?,buffer_minutes: freezed == buffer_minutes ? _self.buffer_minutes : buffer_minutes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SetServiceModel].
extension SetServiceModelPatterns on SetServiceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetServiceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetServiceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetServiceModel value)  $default,){
final _that = this;
switch (_that) {
case _SetServiceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetServiceModel value)?  $default,){
final _that = this;
switch (_that) {
case _SetServiceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? service_id,  String? name,  String? price,  String? notes,  String? duration_minutes,  String? buffer_minutes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetServiceModel() when $default != null:
return $default(_that.service_id,_that.name,_that.price,_that.notes,_that.duration_minutes,_that.buffer_minutes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? service_id,  String? name,  String? price,  String? notes,  String? duration_minutes,  String? buffer_minutes)  $default,) {final _that = this;
switch (_that) {
case _SetServiceModel():
return $default(_that.service_id,_that.name,_that.price,_that.notes,_that.duration_minutes,_that.buffer_minutes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? service_id,  String? name,  String? price,  String? notes,  String? duration_minutes,  String? buffer_minutes)?  $default,) {final _that = this;
switch (_that) {
case _SetServiceModel() when $default != null:
return $default(_that.service_id,_that.name,_that.price,_that.notes,_that.duration_minutes,_that.buffer_minutes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetServiceModel implements SetServiceModel {
  const _SetServiceModel({this.service_id = 0, this.name = "", this.price = "", this.notes = "", this.duration_minutes = "", this.buffer_minutes = ""});
  factory _SetServiceModel.fromJson(Map<String, dynamic> json) => _$SetServiceModelFromJson(json);

@override@JsonKey() final  int? service_id;
@override@JsonKey() final  String? name;
@override@JsonKey() final  String? price;
@override@JsonKey() final  String? notes;
@override@JsonKey() final  String? duration_minutes;
@override@JsonKey() final  String? buffer_minutes;

/// Create a copy of SetServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetServiceModelCopyWith<_SetServiceModel> get copyWith => __$SetServiceModelCopyWithImpl<_SetServiceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetServiceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetServiceModel&&(identical(other.service_id, service_id) || other.service_id == service_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.duration_minutes, duration_minutes) || other.duration_minutes == duration_minutes)&&(identical(other.buffer_minutes, buffer_minutes) || other.buffer_minutes == buffer_minutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,service_id,name,price,notes,duration_minutes,buffer_minutes);

@override
String toString() {
  return 'SetServiceModel(service_id: $service_id, name: $name, price: $price, notes: $notes, duration_minutes: $duration_minutes, buffer_minutes: $buffer_minutes)';
}


}

/// @nodoc
abstract mixin class _$SetServiceModelCopyWith<$Res> implements $SetServiceModelCopyWith<$Res> {
  factory _$SetServiceModelCopyWith(_SetServiceModel value, $Res Function(_SetServiceModel) _then) = __$SetServiceModelCopyWithImpl;
@override @useResult
$Res call({
 int? service_id, String? name, String? price, String? notes, String? duration_minutes, String? buffer_minutes
});




}
/// @nodoc
class __$SetServiceModelCopyWithImpl<$Res>
    implements _$SetServiceModelCopyWith<$Res> {
  __$SetServiceModelCopyWithImpl(this._self, this._then);

  final _SetServiceModel _self;
  final $Res Function(_SetServiceModel) _then;

/// Create a copy of SetServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? service_id = freezed,Object? name = freezed,Object? price = freezed,Object? notes = freezed,Object? duration_minutes = freezed,Object? buffer_minutes = freezed,}) {
  return _then(_SetServiceModel(
service_id: freezed == service_id ? _self.service_id : service_id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,duration_minutes: freezed == duration_minutes ? _self.duration_minutes : duration_minutes // ignore: cast_nullable_to_non_nullable
as String?,buffer_minutes: freezed == buffer_minutes ? _self.buffer_minutes : buffer_minutes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
