// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'line_chart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LineChartModel {
  String? get name => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;
  List<FlSpot> get spots => throw _privateConstructorUsedError;

  /// Create a copy of LineChartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LineChartModelCopyWith<LineChartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineChartModelCopyWith<$Res> {
  factory $LineChartModelCopyWith(
          LineChartModel value, $Res Function(LineChartModel) then) =
      _$LineChartModelCopyWithImpl<$Res, LineChartModel>;
  @useResult
  $Res call({String? name, Color? color, List<FlSpot> spots});
}

/// @nodoc
class _$LineChartModelCopyWithImpl<$Res, $Val extends LineChartModel>
    implements $LineChartModelCopyWith<$Res> {
  _$LineChartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LineChartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? color = freezed,
    Object? spots = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      spots: null == spots
          ? _value.spots
          : spots // ignore: cast_nullable_to_non_nullable
              as List<FlSpot>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LineChartModelImplCopyWith<$Res>
    implements $LineChartModelCopyWith<$Res> {
  factory _$$LineChartModelImplCopyWith(_$LineChartModelImpl value,
          $Res Function(_$LineChartModelImpl) then) =
      __$$LineChartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, Color? color, List<FlSpot> spots});
}

/// @nodoc
class __$$LineChartModelImplCopyWithImpl<$Res>
    extends _$LineChartModelCopyWithImpl<$Res, _$LineChartModelImpl>
    implements _$$LineChartModelImplCopyWith<$Res> {
  __$$LineChartModelImplCopyWithImpl(
      _$LineChartModelImpl _value, $Res Function(_$LineChartModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LineChartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? color = freezed,
    Object? spots = null,
  }) {
    return _then(_$LineChartModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      spots: null == spots
          ? _value._spots
          : spots // ignore: cast_nullable_to_non_nullable
              as List<FlSpot>,
    ));
  }
}

/// @nodoc

class _$LineChartModelImpl implements _LineChartModel {
  const _$LineChartModelImpl(
      {this.name = '',
      this.color = Colors.blueAccent,
      final List<FlSpot> spots = const [FlSpot(0, 0)]})
      : _spots = spots;

  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final Color? color;
  final List<FlSpot> _spots;
  @override
  @JsonKey()
  List<FlSpot> get spots {
    if (_spots is EqualUnmodifiableListView) return _spots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spots);
  }

  @override
  String toString() {
    return 'LineChartModel(name: $name, color: $color, spots: $spots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LineChartModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._spots, _spots));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, color, const DeepCollectionEquality().hash(_spots));

  /// Create a copy of LineChartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LineChartModelImplCopyWith<_$LineChartModelImpl> get copyWith =>
      __$$LineChartModelImplCopyWithImpl<_$LineChartModelImpl>(
          this, _$identity);
}

abstract class _LineChartModel implements LineChartModel {
  const factory _LineChartModel(
      {final String? name,
      final Color? color,
      final List<FlSpot> spots}) = _$LineChartModelImpl;

  @override
  String? get name;
  @override
  Color? get color;
  @override
  List<FlSpot> get spots;

  /// Create a copy of LineChartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LineChartModelImplCopyWith<_$LineChartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
