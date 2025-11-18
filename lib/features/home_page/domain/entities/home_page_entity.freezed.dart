// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomePageEntity {

 int? get today_bookings; int? get completed_revenue; int? get current_month_bookings; int? get current_month_revenue; int? get in_progress_bookings; int? get pending_bookings; List<dynamic>? get yearly_stats;
/// Create a copy of HomePageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomePageEntityCopyWith<HomePageEntity> get copyWith => _$HomePageEntityCopyWithImpl<HomePageEntity>(this as HomePageEntity, _$identity);

  /// Serializes this HomePageEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageEntity&&(identical(other.today_bookings, today_bookings) || other.today_bookings == today_bookings)&&(identical(other.completed_revenue, completed_revenue) || other.completed_revenue == completed_revenue)&&(identical(other.current_month_bookings, current_month_bookings) || other.current_month_bookings == current_month_bookings)&&(identical(other.current_month_revenue, current_month_revenue) || other.current_month_revenue == current_month_revenue)&&(identical(other.in_progress_bookings, in_progress_bookings) || other.in_progress_bookings == in_progress_bookings)&&(identical(other.pending_bookings, pending_bookings) || other.pending_bookings == pending_bookings)&&const DeepCollectionEquality().equals(other.yearly_stats, yearly_stats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,today_bookings,completed_revenue,current_month_bookings,current_month_revenue,in_progress_bookings,pending_bookings,const DeepCollectionEquality().hash(yearly_stats));

@override
String toString() {
  return 'HomePageEntity(today_bookings: $today_bookings, completed_revenue: $completed_revenue, current_month_bookings: $current_month_bookings, current_month_revenue: $current_month_revenue, in_progress_bookings: $in_progress_bookings, pending_bookings: $pending_bookings, yearly_stats: $yearly_stats)';
}


}

/// @nodoc
abstract mixin class $HomePageEntityCopyWith<$Res>  {
  factory $HomePageEntityCopyWith(HomePageEntity value, $Res Function(HomePageEntity) _then) = _$HomePageEntityCopyWithImpl;
@useResult
$Res call({
 int? today_bookings, int? completed_revenue, int? current_month_bookings, int? current_month_revenue, int? in_progress_bookings, int? pending_bookings, List<dynamic>? yearly_stats
});




}
/// @nodoc
class _$HomePageEntityCopyWithImpl<$Res>
    implements $HomePageEntityCopyWith<$Res> {
  _$HomePageEntityCopyWithImpl(this._self, this._then);

  final HomePageEntity _self;
  final $Res Function(HomePageEntity) _then;

/// Create a copy of HomePageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? today_bookings = freezed,Object? completed_revenue = freezed,Object? current_month_bookings = freezed,Object? current_month_revenue = freezed,Object? in_progress_bookings = freezed,Object? pending_bookings = freezed,Object? yearly_stats = freezed,}) {
  return _then(_self.copyWith(
today_bookings: freezed == today_bookings ? _self.today_bookings : today_bookings // ignore: cast_nullable_to_non_nullable
as int?,completed_revenue: freezed == completed_revenue ? _self.completed_revenue : completed_revenue // ignore: cast_nullable_to_non_nullable
as int?,current_month_bookings: freezed == current_month_bookings ? _self.current_month_bookings : current_month_bookings // ignore: cast_nullable_to_non_nullable
as int?,current_month_revenue: freezed == current_month_revenue ? _self.current_month_revenue : current_month_revenue // ignore: cast_nullable_to_non_nullable
as int?,in_progress_bookings: freezed == in_progress_bookings ? _self.in_progress_bookings : in_progress_bookings // ignore: cast_nullable_to_non_nullable
as int?,pending_bookings: freezed == pending_bookings ? _self.pending_bookings : pending_bookings // ignore: cast_nullable_to_non_nullable
as int?,yearly_stats: freezed == yearly_stats ? _self.yearly_stats : yearly_stats // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomePageEntity].
extension HomePageEntityPatterns on HomePageEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomePageEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomePageEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomePageEntity value)  $default,){
final _that = this;
switch (_that) {
case _HomePageEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomePageEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HomePageEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? today_bookings,  int? completed_revenue,  int? current_month_bookings,  int? current_month_revenue,  int? in_progress_bookings,  int? pending_bookings,  List<dynamic>? yearly_stats)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomePageEntity() when $default != null:
return $default(_that.today_bookings,_that.completed_revenue,_that.current_month_bookings,_that.current_month_revenue,_that.in_progress_bookings,_that.pending_bookings,_that.yearly_stats);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? today_bookings,  int? completed_revenue,  int? current_month_bookings,  int? current_month_revenue,  int? in_progress_bookings,  int? pending_bookings,  List<dynamic>? yearly_stats)  $default,) {final _that = this;
switch (_that) {
case _HomePageEntity():
return $default(_that.today_bookings,_that.completed_revenue,_that.current_month_bookings,_that.current_month_revenue,_that.in_progress_bookings,_that.pending_bookings,_that.yearly_stats);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? today_bookings,  int? completed_revenue,  int? current_month_bookings,  int? current_month_revenue,  int? in_progress_bookings,  int? pending_bookings,  List<dynamic>? yearly_stats)?  $default,) {final _that = this;
switch (_that) {
case _HomePageEntity() when $default != null:
return $default(_that.today_bookings,_that.completed_revenue,_that.current_month_bookings,_that.current_month_revenue,_that.in_progress_bookings,_that.pending_bookings,_that.yearly_stats);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomePageEntity implements HomePageEntity {
  const _HomePageEntity({this.today_bookings = 0, this.completed_revenue = 0, this.current_month_bookings = 0, this.current_month_revenue = 0, this.in_progress_bookings = 0, this.pending_bookings = 0, final  List<dynamic>? yearly_stats = const []}): _yearly_stats = yearly_stats;
  factory _HomePageEntity.fromJson(Map<String, dynamic> json) => _$HomePageEntityFromJson(json);

@override@JsonKey() final  int? today_bookings;
@override@JsonKey() final  int? completed_revenue;
@override@JsonKey() final  int? current_month_bookings;
@override@JsonKey() final  int? current_month_revenue;
@override@JsonKey() final  int? in_progress_bookings;
@override@JsonKey() final  int? pending_bookings;
 final  List<dynamic>? _yearly_stats;
@override@JsonKey() List<dynamic>? get yearly_stats {
  final value = _yearly_stats;
  if (value == null) return null;
  if (_yearly_stats is EqualUnmodifiableListView) return _yearly_stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomePageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomePageEntityCopyWith<_HomePageEntity> get copyWith => __$HomePageEntityCopyWithImpl<_HomePageEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomePageEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomePageEntity&&(identical(other.today_bookings, today_bookings) || other.today_bookings == today_bookings)&&(identical(other.completed_revenue, completed_revenue) || other.completed_revenue == completed_revenue)&&(identical(other.current_month_bookings, current_month_bookings) || other.current_month_bookings == current_month_bookings)&&(identical(other.current_month_revenue, current_month_revenue) || other.current_month_revenue == current_month_revenue)&&(identical(other.in_progress_bookings, in_progress_bookings) || other.in_progress_bookings == in_progress_bookings)&&(identical(other.pending_bookings, pending_bookings) || other.pending_bookings == pending_bookings)&&const DeepCollectionEquality().equals(other._yearly_stats, _yearly_stats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,today_bookings,completed_revenue,current_month_bookings,current_month_revenue,in_progress_bookings,pending_bookings,const DeepCollectionEquality().hash(_yearly_stats));

@override
String toString() {
  return 'HomePageEntity(today_bookings: $today_bookings, completed_revenue: $completed_revenue, current_month_bookings: $current_month_bookings, current_month_revenue: $current_month_revenue, in_progress_bookings: $in_progress_bookings, pending_bookings: $pending_bookings, yearly_stats: $yearly_stats)';
}


}

/// @nodoc
abstract mixin class _$HomePageEntityCopyWith<$Res> implements $HomePageEntityCopyWith<$Res> {
  factory _$HomePageEntityCopyWith(_HomePageEntity value, $Res Function(_HomePageEntity) _then) = __$HomePageEntityCopyWithImpl;
@override @useResult
$Res call({
 int? today_bookings, int? completed_revenue, int? current_month_bookings, int? current_month_revenue, int? in_progress_bookings, int? pending_bookings, List<dynamic>? yearly_stats
});




}
/// @nodoc
class __$HomePageEntityCopyWithImpl<$Res>
    implements _$HomePageEntityCopyWith<$Res> {
  __$HomePageEntityCopyWithImpl(this._self, this._then);

  final _HomePageEntity _self;
  final $Res Function(_HomePageEntity) _then;

/// Create a copy of HomePageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? today_bookings = freezed,Object? completed_revenue = freezed,Object? current_month_bookings = freezed,Object? current_month_revenue = freezed,Object? in_progress_bookings = freezed,Object? pending_bookings = freezed,Object? yearly_stats = freezed,}) {
  return _then(_HomePageEntity(
today_bookings: freezed == today_bookings ? _self.today_bookings : today_bookings // ignore: cast_nullable_to_non_nullable
as int?,completed_revenue: freezed == completed_revenue ? _self.completed_revenue : completed_revenue // ignore: cast_nullable_to_non_nullable
as int?,current_month_bookings: freezed == current_month_bookings ? _self.current_month_bookings : current_month_bookings // ignore: cast_nullable_to_non_nullable
as int?,current_month_revenue: freezed == current_month_revenue ? _self.current_month_revenue : current_month_revenue // ignore: cast_nullable_to_non_nullable
as int?,in_progress_bookings: freezed == in_progress_bookings ? _self.in_progress_bookings : in_progress_bookings // ignore: cast_nullable_to_non_nullable
as int?,pending_bookings: freezed == pending_bookings ? _self.pending_bookings : pending_bookings // ignore: cast_nullable_to_non_nullable
as int?,yearly_stats: freezed == yearly_stats ? _self._yearly_stats : yearly_stats // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}


}

// dart format on
