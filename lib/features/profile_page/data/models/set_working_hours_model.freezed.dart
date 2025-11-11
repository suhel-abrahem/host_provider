// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_working_hours_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetWorkingHoursModel {

 int? get provider_id; int? get day_of_week; String? get start_time; String? get end_time; bool? get is_available;
/// Create a copy of SetWorkingHoursModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetWorkingHoursModelCopyWith<SetWorkingHoursModel> get copyWith => _$SetWorkingHoursModelCopyWithImpl<SetWorkingHoursModel>(this as SetWorkingHoursModel, _$identity);

  /// Serializes this SetWorkingHoursModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetWorkingHoursModel&&(identical(other.provider_id, provider_id) || other.provider_id == provider_id)&&(identical(other.day_of_week, day_of_week) || other.day_of_week == day_of_week)&&(identical(other.start_time, start_time) || other.start_time == start_time)&&(identical(other.end_time, end_time) || other.end_time == end_time)&&(identical(other.is_available, is_available) || other.is_available == is_available));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider_id,day_of_week,start_time,end_time,is_available);

@override
String toString() {
  return 'SetWorkingHoursModel(provider_id: $provider_id, day_of_week: $day_of_week, start_time: $start_time, end_time: $end_time, is_available: $is_available)';
}


}

/// @nodoc
abstract mixin class $SetWorkingHoursModelCopyWith<$Res>  {
  factory $SetWorkingHoursModelCopyWith(SetWorkingHoursModel value, $Res Function(SetWorkingHoursModel) _then) = _$SetWorkingHoursModelCopyWithImpl;
@useResult
$Res call({
 int? provider_id, int? day_of_week, String? start_time, String? end_time, bool? is_available
});




}
/// @nodoc
class _$SetWorkingHoursModelCopyWithImpl<$Res>
    implements $SetWorkingHoursModelCopyWith<$Res> {
  _$SetWorkingHoursModelCopyWithImpl(this._self, this._then);

  final SetWorkingHoursModel _self;
  final $Res Function(SetWorkingHoursModel) _then;

/// Create a copy of SetWorkingHoursModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provider_id = freezed,Object? day_of_week = freezed,Object? start_time = freezed,Object? end_time = freezed,Object? is_available = freezed,}) {
  return _then(_self.copyWith(
provider_id: freezed == provider_id ? _self.provider_id : provider_id // ignore: cast_nullable_to_non_nullable
as int?,day_of_week: freezed == day_of_week ? _self.day_of_week : day_of_week // ignore: cast_nullable_to_non_nullable
as int?,start_time: freezed == start_time ? _self.start_time : start_time // ignore: cast_nullable_to_non_nullable
as String?,end_time: freezed == end_time ? _self.end_time : end_time // ignore: cast_nullable_to_non_nullable
as String?,is_available: freezed == is_available ? _self.is_available : is_available // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [SetWorkingHoursModel].
extension SetWorkingHoursModelPatterns on SetWorkingHoursModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetWorkingHoursModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetWorkingHoursModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetWorkingHoursModel value)  $default,){
final _that = this;
switch (_that) {
case _SetWorkingHoursModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetWorkingHoursModel value)?  $default,){
final _that = this;
switch (_that) {
case _SetWorkingHoursModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? provider_id,  int? day_of_week,  String? start_time,  String? end_time,  bool? is_available)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetWorkingHoursModel() when $default != null:
return $default(_that.provider_id,_that.day_of_week,_that.start_time,_that.end_time,_that.is_available);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? provider_id,  int? day_of_week,  String? start_time,  String? end_time,  bool? is_available)  $default,) {final _that = this;
switch (_that) {
case _SetWorkingHoursModel():
return $default(_that.provider_id,_that.day_of_week,_that.start_time,_that.end_time,_that.is_available);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? provider_id,  int? day_of_week,  String? start_time,  String? end_time,  bool? is_available)?  $default,) {final _that = this;
switch (_that) {
case _SetWorkingHoursModel() when $default != null:
return $default(_that.provider_id,_that.day_of_week,_that.start_time,_that.end_time,_that.is_available);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetWorkingHoursModel implements SetWorkingHoursModel {
  const _SetWorkingHoursModel({this.provider_id = 0, this.day_of_week = 0, this.start_time = "", this.end_time = "", this.is_available = false});
  factory _SetWorkingHoursModel.fromJson(Map<String, dynamic> json) => _$SetWorkingHoursModelFromJson(json);

@override@JsonKey() final  int? provider_id;
@override@JsonKey() final  int? day_of_week;
@override@JsonKey() final  String? start_time;
@override@JsonKey() final  String? end_time;
@override@JsonKey() final  bool? is_available;

/// Create a copy of SetWorkingHoursModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetWorkingHoursModelCopyWith<_SetWorkingHoursModel> get copyWith => __$SetWorkingHoursModelCopyWithImpl<_SetWorkingHoursModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetWorkingHoursModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetWorkingHoursModel&&(identical(other.provider_id, provider_id) || other.provider_id == provider_id)&&(identical(other.day_of_week, day_of_week) || other.day_of_week == day_of_week)&&(identical(other.start_time, start_time) || other.start_time == start_time)&&(identical(other.end_time, end_time) || other.end_time == end_time)&&(identical(other.is_available, is_available) || other.is_available == is_available));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider_id,day_of_week,start_time,end_time,is_available);

@override
String toString() {
  return 'SetWorkingHoursModel(provider_id: $provider_id, day_of_week: $day_of_week, start_time: $start_time, end_time: $end_time, is_available: $is_available)';
}


}

/// @nodoc
abstract mixin class _$SetWorkingHoursModelCopyWith<$Res> implements $SetWorkingHoursModelCopyWith<$Res> {
  factory _$SetWorkingHoursModelCopyWith(_SetWorkingHoursModel value, $Res Function(_SetWorkingHoursModel) _then) = __$SetWorkingHoursModelCopyWithImpl;
@override @useResult
$Res call({
 int? provider_id, int? day_of_week, String? start_time, String? end_time, bool? is_available
});




}
/// @nodoc
class __$SetWorkingHoursModelCopyWithImpl<$Res>
    implements _$SetWorkingHoursModelCopyWith<$Res> {
  __$SetWorkingHoursModelCopyWithImpl(this._self, this._then);

  final _SetWorkingHoursModel _self;
  final $Res Function(_SetWorkingHoursModel) _then;

/// Create a copy of SetWorkingHoursModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provider_id = freezed,Object? day_of_week = freezed,Object? start_time = freezed,Object? end_time = freezed,Object? is_available = freezed,}) {
  return _then(_SetWorkingHoursModel(
provider_id: freezed == provider_id ? _self.provider_id : provider_id // ignore: cast_nullable_to_non_nullable
as int?,day_of_week: freezed == day_of_week ? _self.day_of_week : day_of_week // ignore: cast_nullable_to_non_nullable
as int?,start_time: freezed == start_time ? _self.start_time : start_time // ignore: cast_nullable_to_non_nullable
as String?,end_time: freezed == end_time ? _self.end_time : end_time // ignore: cast_nullable_to_non_nullable
as String?,is_available: freezed == is_available ? _self.is_available : is_available // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
