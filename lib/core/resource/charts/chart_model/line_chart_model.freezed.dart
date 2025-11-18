// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'line_chart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LineChartModel {

 String? get name; Color? get color; List<FlSpot> get spots;
/// Create a copy of LineChartModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LineChartModelCopyWith<LineChartModel> get copyWith => _$LineChartModelCopyWithImpl<LineChartModel>(this as LineChartModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LineChartModel&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&const DeepCollectionEquality().equals(other.spots, spots));
}


@override
int get hashCode => Object.hash(runtimeType,name,color,const DeepCollectionEquality().hash(spots));

@override
String toString() {
  return 'LineChartModel(name: $name, color: $color, spots: $spots)';
}


}

/// @nodoc
abstract mixin class $LineChartModelCopyWith<$Res>  {
  factory $LineChartModelCopyWith(LineChartModel value, $Res Function(LineChartModel) _then) = _$LineChartModelCopyWithImpl;
@useResult
$Res call({
 String? name, Color? color, List<FlSpot> spots
});




}
/// @nodoc
class _$LineChartModelCopyWithImpl<$Res>
    implements $LineChartModelCopyWith<$Res> {
  _$LineChartModelCopyWithImpl(this._self, this._then);

  final LineChartModel _self;
  final $Res Function(LineChartModel) _then;

/// Create a copy of LineChartModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? color = freezed,Object? spots = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,spots: null == spots ? _self.spots : spots // ignore: cast_nullable_to_non_nullable
as List<FlSpot>,
  ));
}

}


/// Adds pattern-matching-related methods to [LineChartModel].
extension LineChartModelPatterns on LineChartModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LineChartModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LineChartModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LineChartModel value)  $default,){
final _that = this;
switch (_that) {
case _LineChartModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LineChartModel value)?  $default,){
final _that = this;
switch (_that) {
case _LineChartModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  Color? color,  List<FlSpot> spots)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LineChartModel() when $default != null:
return $default(_that.name,_that.color,_that.spots);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  Color? color,  List<FlSpot> spots)  $default,) {final _that = this;
switch (_that) {
case _LineChartModel():
return $default(_that.name,_that.color,_that.spots);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  Color? color,  List<FlSpot> spots)?  $default,) {final _that = this;
switch (_that) {
case _LineChartModel() when $default != null:
return $default(_that.name,_that.color,_that.spots);case _:
  return null;

}
}

}

/// @nodoc


class _LineChartModel implements LineChartModel {
  const _LineChartModel({this.name = '', this.color = Colors.yellow, final  List<FlSpot> spots = const [FlSpot(0, 0)]}): _spots = spots;
  

@override@JsonKey() final  String? name;
@override@JsonKey() final  Color? color;
 final  List<FlSpot> _spots;
@override@JsonKey() List<FlSpot> get spots {
  if (_spots is EqualUnmodifiableListView) return _spots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_spots);
}


/// Create a copy of LineChartModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LineChartModelCopyWith<_LineChartModel> get copyWith => __$LineChartModelCopyWithImpl<_LineChartModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LineChartModel&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&const DeepCollectionEquality().equals(other._spots, _spots));
}


@override
int get hashCode => Object.hash(runtimeType,name,color,const DeepCollectionEquality().hash(_spots));

@override
String toString() {
  return 'LineChartModel(name: $name, color: $color, spots: $spots)';
}


}

/// @nodoc
abstract mixin class _$LineChartModelCopyWith<$Res> implements $LineChartModelCopyWith<$Res> {
  factory _$LineChartModelCopyWith(_LineChartModel value, $Res Function(_LineChartModel) _then) = __$LineChartModelCopyWithImpl;
@override @useResult
$Res call({
 String? name, Color? color, List<FlSpot> spots
});




}
/// @nodoc
class __$LineChartModelCopyWithImpl<$Res>
    implements _$LineChartModelCopyWith<$Res> {
  __$LineChartModelCopyWithImpl(this._self, this._then);

  final _LineChartModel _self;
  final $Res Function(_LineChartModel) _then;

/// Create a copy of LineChartModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? color = freezed,Object? spots = null,}) {
  return _then(_LineChartModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,spots: null == spots ? _self._spots : spots // ignore: cast_nullable_to_non_nullable
as List<FlSpot>,
  ));
}


}

// dart format on
