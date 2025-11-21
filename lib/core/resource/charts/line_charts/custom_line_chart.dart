import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/language_constant.dart';
import '../chart_model/line_chart_model.dart';

import '../../../constants/font_constants.dart';
import '../../../enums/line_chart_type_enum.dart';

class CostumeLineChart extends StatefulWidget {
  final String? title;
  final double? width, containerWidth;
  final double? height, containerHeight;

  final List<LineChartModel>? barsInfo;
  final double? minX, maxX, minY, maxY;
  const CostumeLineChart.CustomLineChart({
    super.key,
    this.width,
    this.height,
    this.barsInfo,
    this.minX,
    this.maxX,
    this.minY,
    this.maxY,
    this.containerWidth,
    this.containerHeight,
    this.title,
  });

  @override
  State<CostumeLineChart> createState() => _CostumeLineChartState();
}

class _CostumeLineChartState extends State<CostumeLineChart> {
  List<LineChartBarData> lineChartBarData = [];
  LineChartType chartType = LineChartType.oneLine;
  final List<Color> defaultColors = [
    Colors.white,
    const Color.fromARGB(255, 204, 2, 255),
    const Color.fromARGB(255, 249, 44, 102),
    const Color.fromARGB(255, 139, 244, 41),
    const Color.fromARGB(255, 21, 176, 237),
  ];
  List<Color?> barsColor = [];
  @override
  void initState() {
    int index = 0;
    lineChartBarData = [];

    for (int i = 0; i < (widget.barsInfo?.length ?? 0); i++) {
      barsColor.add(
        ((widget.barsInfo![i].color != Colors.blueAccent
                ? (widget.barsInfo?.elementAtOrNull(i)?.color)
                : null) ??
            defaultColors.elementAtOrNull(i)),
      );
    }

    setState(() {
      chartType = widget.barsInfo?.length == 1
          ? LineChartType.oneLine
          : LineChartType.multiLine;
      widget.barsInfo?.forEach((element) {
        lineChartBarData.add(
          LineChartBarData(
            spots: element.spots,
            color: barsColor[index],
            isCurved: false,
            dotData: FlDotData(show: true),
            belowBarData: chartType == LineChartType.oneLine
                ? BarAreaData(
                    show: true,
                    color: barsColor[index]?.withValues(alpha: 0.3),
                  )
                : null,
            barWidth: 2.w,
          ),
        );
        index++;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.title ?? '',
      child: SizedBox(
        width: widget.containerWidth,
        height: widget.containerHeight,
        child: LineChart(
          duration: const Duration(milliseconds: 300),
          LineChartData(
            clipData: FlClipData.none(),
            lineBarsData: lineChartBarData,
            minX: widget.minX,
            maxX: widget.maxX,
            minY: widget.minY,
            maxY: widget.maxY,
            borderData: FlBorderData(show: false),
            gridData: const FlGridData(show: true, drawVerticalLine: false),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitleAlignment: SideTitleAlignment.outside,

                drawBelowEverything: true,
                sideTitles: SideTitles(
                  reservedSize: 30.h,
                  showTitles: true,
                  getTitlesWidget: (value, meta) {
                    String output = '';
                    switch (value.toInt()) {
                      case 0:
                        output = "Jan";
                      case 1:
                        output = "Feb";
                      case 2:
                        output = "Mar";
                      case 3:
                        output = "Apr";
                      case 4:
                        output = "May";
                      case 5:
                        output = "Jun";
                      case 6:
                        output = "Jul";
                      case 7:
                        output = "Aug";
                      case 8:
                        output = "Sep";
                      case 9:
                        output = "Oct";
                      case 10:
                        output = "Nov";
                      case 11:
                        output = "Dec";
                    }
                    return Padding(
                      padding: EdgeInsets.only(top: 8.h),
                      child: Text(
                        output,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
                          fontSize: 14.sp,
                        ),
                      ),
                    );
                  },
                ),
              ),
              topTitles: AxisTitles(axisNameSize: 0),
              rightTitles: context.locale != LanguageConstant.enLoacle
                  ? AxisTitles(
                      sideTitleAlignment: SideTitleAlignment.outside,
                      sideTitles: SideTitles(
                        reservedSize: 30.w,
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          String output = '';
                          if (value < 1000) {
                            output = value.toString();
                          } else if (value < 1000000) {
                            output = "${value / 1000.0}K";
                          } else {
                            output = "${value / 1000000.0}M";
                          }
                          return SizedBox(
                            width: 30.w,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.w),
                                child: Text(
                                  output,
                                  style: Theme.of(context).textTheme.labelLarge
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
                                          context.locale,
                                        ),
                                        fontSize: 14.sp,
                                      ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  : AxisTitles(axisNameSize: 0),
              leftTitles: context.locale == LanguageConstant.enLoacle
                  ? AxisTitles(
                      sideTitleAlignment: SideTitleAlignment.outside,
                      drawBelowEverything: true,
                      sideTitles: SideTitles(
                        reservedSize: 30.w,
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          String output = '';
                          if (value < 1000) {
                            output = value.toString();
                          } else if (value < 1000000) {
                            output = "${value / 1000.0}K";
                          } else {
                            output = "${value / 1000000.0}M";
                          }
                          return SizedBox(
                            width: 30.w,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Padding(
                                padding: EdgeInsets.only(right: 8.w),
                                child: Text(
                                  output,
                                  style: Theme.of(context).textTheme.labelLarge
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
                                          context.locale,
                                        ),
                                        fontSize: 14.sp,
                                      ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  : AxisTitles(axisNameSize: 0),
            ),
          ),
        ),
      ),
    );
  }
}
