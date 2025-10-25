// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pi_chart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PiChartModel {

 String? get name; double? get value; Color? get color;
/// Create a copy of PiChartModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PiChartModelCopyWith<PiChartModel> get copyWith => _$PiChartModelCopyWithImpl<PiChartModel>(this as PiChartModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PiChartModel&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value)&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,name,value,color);

@override
String toString() {
  return 'PiChartModel(name: $name, value: $value, color: $color)';
}


}

/// @nodoc
abstract mixin class $PiChartModelCopyWith<$Res>  {
  factory $PiChartModelCopyWith(PiChartModel value, $Res Function(PiChartModel) _then) = _$PiChartModelCopyWithImpl;
@useResult
$Res call({
 String? name, double? value, Color? color
});




}
/// @nodoc
class _$PiChartModelCopyWithImpl<$Res>
    implements $PiChartModelCopyWith<$Res> {
  _$PiChartModelCopyWithImpl(this._self, this._then);

  final PiChartModel _self;
  final $Res Function(PiChartModel) _then;

/// Create a copy of PiChartModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? value = freezed,Object? color = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,
  ));
}

}


/// Adds pattern-matching-related methods to [PiChartModel].
extension PiChartModelPatterns on PiChartModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PiChartModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PiChartModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PiChartModel value)  $default,){
final _that = this;
switch (_that) {
case _PiChartModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PiChartModel value)?  $default,){
final _that = this;
switch (_that) {
case _PiChartModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  double? value,  Color? color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PiChartModel() when $default != null:
return $default(_that.name,_that.value,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  double? value,  Color? color)  $default,) {final _that = this;
switch (_that) {
case _PiChartModel():
return $default(_that.name,_that.value,_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  double? value,  Color? color)?  $default,) {final _that = this;
switch (_that) {
case _PiChartModel() when $default != null:
return $default(_that.name,_that.value,_that.color);case _:
  return null;

}
}

}

/// @nodoc


class _PiChartModel implements PiChartModel {
  const _PiChartModel({this.name = '', this.value = 0.0, this.color = Colors.blueAccent});
  

@override@JsonKey() final  String? name;
@override@JsonKey() final  double? value;
@override@JsonKey() final  Color? color;

/// Create a copy of PiChartModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PiChartModelCopyWith<_PiChartModel> get copyWith => __$PiChartModelCopyWithImpl<_PiChartModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PiChartModel&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value)&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,name,value,color);

@override
String toString() {
  return 'PiChartModel(name: $name, value: $value, color: $color)';
}


}

/// @nodoc
abstract mixin class _$PiChartModelCopyWith<$Res> implements $PiChartModelCopyWith<$Res> {
  factory _$PiChartModelCopyWith(_PiChartModel value, $Res Function(_PiChartModel) _then) = __$PiChartModelCopyWithImpl;
@override @useResult
$Res call({
 String? name, double? value, Color? color
});




}
/// @nodoc
class __$PiChartModelCopyWithImpl<$Res>
    implements _$PiChartModelCopyWith<$Res> {
  __$PiChartModelCopyWithImpl(this._self, this._then);

  final _PiChartModel _self;
  final $Res Function(_PiChartModel) _then;

/// Create a copy of PiChartModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? value = freezed,Object? color = freezed,}) {
  return _then(_PiChartModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,
  ));
}


}

// dart format on
