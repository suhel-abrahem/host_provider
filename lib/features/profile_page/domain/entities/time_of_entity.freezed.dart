// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_of_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TimeOfEntity {

 int? get id; int? get provider_id; String? get date; String? get reason; String? get start_time; String? get end_time; bool? get is_full_day; String? get created_at; String? get updated_at;
/// Create a copy of TimeOfEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeOfEntityCopyWith<TimeOfEntity> get copyWith => _$TimeOfEntityCopyWithImpl<TimeOfEntity>(this as TimeOfEntity, _$identity);

  /// Serializes this TimeOfEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeOfEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.provider_id, provider_id) || other.provider_id == provider_id)&&(identical(other.date, date) || other.date == date)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.start_time, start_time) || other.start_time == start_time)&&(identical(other.end_time, end_time) || other.end_time == end_time)&&(identical(other.is_full_day, is_full_day) || other.is_full_day == is_full_day)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,provider_id,date,reason,start_time,end_time,is_full_day,created_at,updated_at);

@override
String toString() {
  return 'TimeOfEntity(id: $id, provider_id: $provider_id, date: $date, reason: $reason, start_time: $start_time, end_time: $end_time, is_full_day: $is_full_day, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class $TimeOfEntityCopyWith<$Res>  {
  factory $TimeOfEntityCopyWith(TimeOfEntity value, $Res Function(TimeOfEntity) _then) = _$TimeOfEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int? provider_id, String? date, String? reason, String? start_time, String? end_time, bool? is_full_day, String? created_at, String? updated_at
});




}
/// @nodoc
class _$TimeOfEntityCopyWithImpl<$Res>
    implements $TimeOfEntityCopyWith<$Res> {
  _$TimeOfEntityCopyWithImpl(this._self, this._then);

  final TimeOfEntity _self;
  final $Res Function(TimeOfEntity) _then;

/// Create a copy of TimeOfEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? provider_id = freezed,Object? date = freezed,Object? reason = freezed,Object? start_time = freezed,Object? end_time = freezed,Object? is_full_day = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,provider_id: freezed == provider_id ? _self.provider_id : provider_id // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,start_time: freezed == start_time ? _self.start_time : start_time // ignore: cast_nullable_to_non_nullable
as String?,end_time: freezed == end_time ? _self.end_time : end_time // ignore: cast_nullable_to_non_nullable
as String?,is_full_day: freezed == is_full_day ? _self.is_full_day : is_full_day // ignore: cast_nullable_to_non_nullable
as bool?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeOfEntity].
extension TimeOfEntityPatterns on TimeOfEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeOfEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeOfEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeOfEntity value)  $default,){
final _that = this;
switch (_that) {
case _TimeOfEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeOfEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TimeOfEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? provider_id,  String? date,  String? reason,  String? start_time,  String? end_time,  bool? is_full_day,  String? created_at,  String? updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeOfEntity() when $default != null:
return $default(_that.id,_that.provider_id,_that.date,_that.reason,_that.start_time,_that.end_time,_that.is_full_day,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? provider_id,  String? date,  String? reason,  String? start_time,  String? end_time,  bool? is_full_day,  String? created_at,  String? updated_at)  $default,) {final _that = this;
switch (_that) {
case _TimeOfEntity():
return $default(_that.id,_that.provider_id,_that.date,_that.reason,_that.start_time,_that.end_time,_that.is_full_day,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? provider_id,  String? date,  String? reason,  String? start_time,  String? end_time,  bool? is_full_day,  String? created_at,  String? updated_at)?  $default,) {final _that = this;
switch (_that) {
case _TimeOfEntity() when $default != null:
return $default(_that.id,_that.provider_id,_that.date,_that.reason,_that.start_time,_that.end_time,_that.is_full_day,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimeOfEntity implements TimeOfEntity {
  const _TimeOfEntity({this.id = 0, this.provider_id = 0, this.date = "", this.reason = "", this.start_time = "", this.end_time = "", this.is_full_day = false, this.created_at = "", this.updated_at = ""});
  factory _TimeOfEntity.fromJson(Map<String, dynamic> json) => _$TimeOfEntityFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  int? provider_id;
@override@JsonKey() final  String? date;
@override@JsonKey() final  String? reason;
@override@JsonKey() final  String? start_time;
@override@JsonKey() final  String? end_time;
@override@JsonKey() final  bool? is_full_day;
@override@JsonKey() final  String? created_at;
@override@JsonKey() final  String? updated_at;

/// Create a copy of TimeOfEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeOfEntityCopyWith<_TimeOfEntity> get copyWith => __$TimeOfEntityCopyWithImpl<_TimeOfEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeOfEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeOfEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.provider_id, provider_id) || other.provider_id == provider_id)&&(identical(other.date, date) || other.date == date)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.start_time, start_time) || other.start_time == start_time)&&(identical(other.end_time, end_time) || other.end_time == end_time)&&(identical(other.is_full_day, is_full_day) || other.is_full_day == is_full_day)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,provider_id,date,reason,start_time,end_time,is_full_day,created_at,updated_at);

@override
String toString() {
  return 'TimeOfEntity(id: $id, provider_id: $provider_id, date: $date, reason: $reason, start_time: $start_time, end_time: $end_time, is_full_day: $is_full_day, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$TimeOfEntityCopyWith<$Res> implements $TimeOfEntityCopyWith<$Res> {
  factory _$TimeOfEntityCopyWith(_TimeOfEntity value, $Res Function(_TimeOfEntity) _then) = __$TimeOfEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? provider_id, String? date, String? reason, String? start_time, String? end_time, bool? is_full_day, String? created_at, String? updated_at
});




}
/// @nodoc
class __$TimeOfEntityCopyWithImpl<$Res>
    implements _$TimeOfEntityCopyWith<$Res> {
  __$TimeOfEntityCopyWithImpl(this._self, this._then);

  final _TimeOfEntity _self;
  final $Res Function(_TimeOfEntity) _then;

/// Create a copy of TimeOfEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? provider_id = freezed,Object? date = freezed,Object? reason = freezed,Object? start_time = freezed,Object? end_time = freezed,Object? is_full_day = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_TimeOfEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,provider_id: freezed == provider_id ? _self.provider_id : provider_id // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,start_time: freezed == start_time ? _self.start_time : start_time // ignore: cast_nullable_to_non_nullable
as String?,end_time: freezed == end_time ? _self.end_time : end_time // ignore: cast_nullable_to_non_nullable
as String?,is_full_day: freezed == is_full_day ? _self.is_full_day : is_full_day // ignore: cast_nullable_to_non_nullable
as bool?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
