// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_time_off_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetTimeOffModel {

 int? get provider_id; String? get date; String? get reason; bool? get is_full_day; String? get start_time; String? get end_time;
/// Create a copy of SetTimeOffModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetTimeOffModelCopyWith<SetTimeOffModel> get copyWith => _$SetTimeOffModelCopyWithImpl<SetTimeOffModel>(this as SetTimeOffModel, _$identity);

  /// Serializes this SetTimeOffModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetTimeOffModel&&(identical(other.provider_id, provider_id) || other.provider_id == provider_id)&&(identical(other.date, date) || other.date == date)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.is_full_day, is_full_day) || other.is_full_day == is_full_day)&&(identical(other.start_time, start_time) || other.start_time == start_time)&&(identical(other.end_time, end_time) || other.end_time == end_time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider_id,date,reason,is_full_day,start_time,end_time);

@override
String toString() {
  return 'SetTimeOffModel(provider_id: $provider_id, date: $date, reason: $reason, is_full_day: $is_full_day, start_time: $start_time, end_time: $end_time)';
}


}

/// @nodoc
abstract mixin class $SetTimeOffModelCopyWith<$Res>  {
  factory $SetTimeOffModelCopyWith(SetTimeOffModel value, $Res Function(SetTimeOffModel) _then) = _$SetTimeOffModelCopyWithImpl;
@useResult
$Res call({
 int? provider_id, String? date, String? reason, bool? is_full_day, String? start_time, String? end_time
});




}
/// @nodoc
class _$SetTimeOffModelCopyWithImpl<$Res>
    implements $SetTimeOffModelCopyWith<$Res> {
  _$SetTimeOffModelCopyWithImpl(this._self, this._then);

  final SetTimeOffModel _self;
  final $Res Function(SetTimeOffModel) _then;

/// Create a copy of SetTimeOffModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provider_id = freezed,Object? date = freezed,Object? reason = freezed,Object? is_full_day = freezed,Object? start_time = freezed,Object? end_time = freezed,}) {
  return _then(_self.copyWith(
provider_id: freezed == provider_id ? _self.provider_id : provider_id // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,is_full_day: freezed == is_full_day ? _self.is_full_day : is_full_day // ignore: cast_nullable_to_non_nullable
as bool?,start_time: freezed == start_time ? _self.start_time : start_time // ignore: cast_nullable_to_non_nullable
as String?,end_time: freezed == end_time ? _self.end_time : end_time // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SetTimeOffModel].
extension SetTimeOffModelPatterns on SetTimeOffModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetTimeOffModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetTimeOffModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetTimeOffModel value)  $default,){
final _that = this;
switch (_that) {
case _SetTimeOffModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetTimeOffModel value)?  $default,){
final _that = this;
switch (_that) {
case _SetTimeOffModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? provider_id,  String? date,  String? reason,  bool? is_full_day,  String? start_time,  String? end_time)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetTimeOffModel() when $default != null:
return $default(_that.provider_id,_that.date,_that.reason,_that.is_full_day,_that.start_time,_that.end_time);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? provider_id,  String? date,  String? reason,  bool? is_full_day,  String? start_time,  String? end_time)  $default,) {final _that = this;
switch (_that) {
case _SetTimeOffModel():
return $default(_that.provider_id,_that.date,_that.reason,_that.is_full_day,_that.start_time,_that.end_time);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? provider_id,  String? date,  String? reason,  bool? is_full_day,  String? start_time,  String? end_time)?  $default,) {final _that = this;
switch (_that) {
case _SetTimeOffModel() when $default != null:
return $default(_that.provider_id,_that.date,_that.reason,_that.is_full_day,_that.start_time,_that.end_time);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetTimeOffModel implements SetTimeOffModel {
  const _SetTimeOffModel({this.provider_id = 0, this.date = "", this.reason = "", this.is_full_day = false, this.start_time = "", this.end_time = ""});
  factory _SetTimeOffModel.fromJson(Map<String, dynamic> json) => _$SetTimeOffModelFromJson(json);

@override@JsonKey() final  int? provider_id;
@override@JsonKey() final  String? date;
@override@JsonKey() final  String? reason;
@override@JsonKey() final  bool? is_full_day;
@override@JsonKey() final  String? start_time;
@override@JsonKey() final  String? end_time;

/// Create a copy of SetTimeOffModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetTimeOffModelCopyWith<_SetTimeOffModel> get copyWith => __$SetTimeOffModelCopyWithImpl<_SetTimeOffModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetTimeOffModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetTimeOffModel&&(identical(other.provider_id, provider_id) || other.provider_id == provider_id)&&(identical(other.date, date) || other.date == date)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.is_full_day, is_full_day) || other.is_full_day == is_full_day)&&(identical(other.start_time, start_time) || other.start_time == start_time)&&(identical(other.end_time, end_time) || other.end_time == end_time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider_id,date,reason,is_full_day,start_time,end_time);

@override
String toString() {
  return 'SetTimeOffModel(provider_id: $provider_id, date: $date, reason: $reason, is_full_day: $is_full_day, start_time: $start_time, end_time: $end_time)';
}


}

/// @nodoc
abstract mixin class _$SetTimeOffModelCopyWith<$Res> implements $SetTimeOffModelCopyWith<$Res> {
  factory _$SetTimeOffModelCopyWith(_SetTimeOffModel value, $Res Function(_SetTimeOffModel) _then) = __$SetTimeOffModelCopyWithImpl;
@override @useResult
$Res call({
 int? provider_id, String? date, String? reason, bool? is_full_day, String? start_time, String? end_time
});




}
/// @nodoc
class __$SetTimeOffModelCopyWithImpl<$Res>
    implements _$SetTimeOffModelCopyWith<$Res> {
  __$SetTimeOffModelCopyWithImpl(this._self, this._then);

  final _SetTimeOffModel _self;
  final $Res Function(_SetTimeOffModel) _then;

/// Create a copy of SetTimeOffModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provider_id = freezed,Object? date = freezed,Object? reason = freezed,Object? is_full_day = freezed,Object? start_time = freezed,Object? end_time = freezed,}) {
  return _then(_SetTimeOffModel(
provider_id: freezed == provider_id ? _self.provider_id : provider_id // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,is_full_day: freezed == is_full_day ? _self.is_full_day : is_full_day // ignore: cast_nullable_to_non_nullable
as bool?,start_time: freezed == start_time ? _self.start_time : start_time // ignore: cast_nullable_to_non_nullable
as String?,end_time: freezed == end_time ? _self.end_time : end_time // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
