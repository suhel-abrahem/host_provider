// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_hours_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkingHoursEntity {

 int? get id; int? get provider_id; int? get day_of_week; String? get day_name; String? get start_time; String? get end_time; bool? get is_available; String? get created_at; String? get updated_at;
/// Create a copy of WorkingHoursEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkingHoursEntityCopyWith<WorkingHoursEntity> get copyWith => _$WorkingHoursEntityCopyWithImpl<WorkingHoursEntity>(this as WorkingHoursEntity, _$identity);

  /// Serializes this WorkingHoursEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkingHoursEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.provider_id, provider_id) || other.provider_id == provider_id)&&(identical(other.day_of_week, day_of_week) || other.day_of_week == day_of_week)&&(identical(other.day_name, day_name) || other.day_name == day_name)&&(identical(other.start_time, start_time) || other.start_time == start_time)&&(identical(other.end_time, end_time) || other.end_time == end_time)&&(identical(other.is_available, is_available) || other.is_available == is_available)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,provider_id,day_of_week,day_name,start_time,end_time,is_available,created_at,updated_at);

@override
String toString() {
  return 'WorkingHoursEntity(id: $id, provider_id: $provider_id, day_of_week: $day_of_week, day_name: $day_name, start_time: $start_time, end_time: $end_time, is_available: $is_available, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class $WorkingHoursEntityCopyWith<$Res>  {
  factory $WorkingHoursEntityCopyWith(WorkingHoursEntity value, $Res Function(WorkingHoursEntity) _then) = _$WorkingHoursEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int? provider_id, int? day_of_week, String? day_name, String? start_time, String? end_time, bool? is_available, String? created_at, String? updated_at
});




}
/// @nodoc
class _$WorkingHoursEntityCopyWithImpl<$Res>
    implements $WorkingHoursEntityCopyWith<$Res> {
  _$WorkingHoursEntityCopyWithImpl(this._self, this._then);

  final WorkingHoursEntity _self;
  final $Res Function(WorkingHoursEntity) _then;

/// Create a copy of WorkingHoursEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? provider_id = freezed,Object? day_of_week = freezed,Object? day_name = freezed,Object? start_time = freezed,Object? end_time = freezed,Object? is_available = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,provider_id: freezed == provider_id ? _self.provider_id : provider_id // ignore: cast_nullable_to_non_nullable
as int?,day_of_week: freezed == day_of_week ? _self.day_of_week : day_of_week // ignore: cast_nullable_to_non_nullable
as int?,day_name: freezed == day_name ? _self.day_name : day_name // ignore: cast_nullable_to_non_nullable
as String?,start_time: freezed == start_time ? _self.start_time : start_time // ignore: cast_nullable_to_non_nullable
as String?,end_time: freezed == end_time ? _self.end_time : end_time // ignore: cast_nullable_to_non_nullable
as String?,is_available: freezed == is_available ? _self.is_available : is_available // ignore: cast_nullable_to_non_nullable
as bool?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkingHoursEntity].
extension WorkingHoursEntityPatterns on WorkingHoursEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkingHoursEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkingHoursEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkingHoursEntity value)  $default,){
final _that = this;
switch (_that) {
case _WorkingHoursEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkingHoursEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WorkingHoursEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? provider_id,  int? day_of_week,  String? day_name,  String? start_time,  String? end_time,  bool? is_available,  String? created_at,  String? updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkingHoursEntity() when $default != null:
return $default(_that.id,_that.provider_id,_that.day_of_week,_that.day_name,_that.start_time,_that.end_time,_that.is_available,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? provider_id,  int? day_of_week,  String? day_name,  String? start_time,  String? end_time,  bool? is_available,  String? created_at,  String? updated_at)  $default,) {final _that = this;
switch (_that) {
case _WorkingHoursEntity():
return $default(_that.id,_that.provider_id,_that.day_of_week,_that.day_name,_that.start_time,_that.end_time,_that.is_available,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? provider_id,  int? day_of_week,  String? day_name,  String? start_time,  String? end_time,  bool? is_available,  String? created_at,  String? updated_at)?  $default,) {final _that = this;
switch (_that) {
case _WorkingHoursEntity() when $default != null:
return $default(_that.id,_that.provider_id,_that.day_of_week,_that.day_name,_that.start_time,_that.end_time,_that.is_available,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkingHoursEntity implements WorkingHoursEntity {
  const _WorkingHoursEntity({this.id = 0, this.provider_id = 0, this.day_of_week = 0, this.day_name = "", this.start_time = "", this.end_time = "", this.is_available = false, this.created_at = "", this.updated_at = ""});
  factory _WorkingHoursEntity.fromJson(Map<String, dynamic> json) => _$WorkingHoursEntityFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  int? provider_id;
@override@JsonKey() final  int? day_of_week;
@override@JsonKey() final  String? day_name;
@override@JsonKey() final  String? start_time;
@override@JsonKey() final  String? end_time;
@override@JsonKey() final  bool? is_available;
@override@JsonKey() final  String? created_at;
@override@JsonKey() final  String? updated_at;

/// Create a copy of WorkingHoursEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkingHoursEntityCopyWith<_WorkingHoursEntity> get copyWith => __$WorkingHoursEntityCopyWithImpl<_WorkingHoursEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkingHoursEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkingHoursEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.provider_id, provider_id) || other.provider_id == provider_id)&&(identical(other.day_of_week, day_of_week) || other.day_of_week == day_of_week)&&(identical(other.day_name, day_name) || other.day_name == day_name)&&(identical(other.start_time, start_time) || other.start_time == start_time)&&(identical(other.end_time, end_time) || other.end_time == end_time)&&(identical(other.is_available, is_available) || other.is_available == is_available)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,provider_id,day_of_week,day_name,start_time,end_time,is_available,created_at,updated_at);

@override
String toString() {
  return 'WorkingHoursEntity(id: $id, provider_id: $provider_id, day_of_week: $day_of_week, day_name: $day_name, start_time: $start_time, end_time: $end_time, is_available: $is_available, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$WorkingHoursEntityCopyWith<$Res> implements $WorkingHoursEntityCopyWith<$Res> {
  factory _$WorkingHoursEntityCopyWith(_WorkingHoursEntity value, $Res Function(_WorkingHoursEntity) _then) = __$WorkingHoursEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? provider_id, int? day_of_week, String? day_name, String? start_time, String? end_time, bool? is_available, String? created_at, String? updated_at
});




}
/// @nodoc
class __$WorkingHoursEntityCopyWithImpl<$Res>
    implements _$WorkingHoursEntityCopyWith<$Res> {
  __$WorkingHoursEntityCopyWithImpl(this._self, this._then);

  final _WorkingHoursEntity _self;
  final $Res Function(_WorkingHoursEntity) _then;

/// Create a copy of WorkingHoursEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? provider_id = freezed,Object? day_of_week = freezed,Object? day_name = freezed,Object? start_time = freezed,Object? end_time = freezed,Object? is_available = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_WorkingHoursEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,provider_id: freezed == provider_id ? _self.provider_id : provider_id // ignore: cast_nullable_to_non_nullable
as int?,day_of_week: freezed == day_of_week ? _self.day_of_week : day_of_week // ignore: cast_nullable_to_non_nullable
as int?,day_name: freezed == day_name ? _self.day_name : day_name // ignore: cast_nullable_to_non_nullable
as String?,start_time: freezed == start_time ? _self.start_time : start_time // ignore: cast_nullable_to_non_nullable
as String?,end_time: freezed == end_time ? _self.end_time : end_time // ignore: cast_nullable_to_non_nullable
as String?,is_available: freezed == is_available ? _self.is_available : is_available // ignore: cast_nullable_to_non_nullable
as bool?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
