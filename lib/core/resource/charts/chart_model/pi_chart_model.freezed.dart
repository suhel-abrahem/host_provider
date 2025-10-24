// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pi_chart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PiChartModel {
  String? get name => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;

  /// Create a copy of PiChartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PiChartModelCopyWith<PiChartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PiChartModelCopyWith<$Res> {
  factory $PiChartModelCopyWith(
          PiChartModel value, $Res Function(PiChartModel) then) =
      _$PiChartModelCopyWithImpl<$Res, PiChartModel>;
  @useResult
  $Res call({String? name, double? value, Color? color});
}

/// @nodoc
class _$PiChartModelCopyWithImpl<$Res, $Val extends PiChartModel>
    implements $PiChartModelCopyWith<$Res> {
  _$PiChartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PiChartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PiChartModelImplCopyWith<$Res>
    implements $PiChartModelCopyWith<$Res> {
  factory _$$PiChartModelImplCopyWith(
          _$PiChartModelImpl value, $Res Function(_$PiChartModelImpl) then) =
      __$$PiChartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, double? value, Color? color});
}

/// @nodoc
class __$$PiChartModelImplCopyWithImpl<$Res>
    extends _$PiChartModelCopyWithImpl<$Res, _$PiChartModelImpl>
    implements _$$PiChartModelImplCopyWith<$Res> {
  __$$PiChartModelImplCopyWithImpl(
      _$PiChartModelImpl _value, $Res Function(_$PiChartModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PiChartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? color = freezed,
  }) {
    return _then(_$PiChartModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$PiChartModelImpl implements _PiChartModel {
  const _$PiChartModelImpl(
      {this.name = '', this.value = 0.0, this.color = Colors.blueAccent});

  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final double? value;
  @override
  @JsonKey()
  final Color? color;

  @override
  String toString() {
    return 'PiChartModel(name: $name, value: $value, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PiChartModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, value, color);

  /// Create a copy of PiChartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PiChartModelImplCopyWith<_$PiChartModelImpl> get copyWith =>
      __$$PiChartModelImplCopyWithImpl<_$PiChartModelImpl>(this, _$identity);
}

abstract class _PiChartModel implements PiChartModel {
  const factory _PiChartModel(
      {final String? name,
      final double? value,
      final Color? color}) = _$PiChartModelImpl;

  @override
  String? get name;
  @override
  double? get value;
  @override
  Color? get color;

  /// Create a copy of PiChartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PiChartModelImplCopyWith<_$PiChartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
