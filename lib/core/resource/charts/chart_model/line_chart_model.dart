import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "line_chart_model.freezed.dart";

@freezed
abstract class LineChartModel with _$LineChartModel {
  const factory LineChartModel({
    @Default('') String? name,
    @Default(Colors.yellow) Color? color,
    @Default([FlSpot(0, 0)]) List<FlSpot> spots,
  }) = _LineChartModel;
}
