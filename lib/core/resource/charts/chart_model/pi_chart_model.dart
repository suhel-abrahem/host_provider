import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'pi_chart_model.freezed.dart';

@freezed
abstract class PiChartModel with _$PiChartModel {
  const factory PiChartModel({
    @Default('') String? name,
    @Default(0.0) double? value,
    @Default(Colors.blueAccent) Color? color,
  }) = _PiChartModel;
}
