import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/font_constants.dart';
import '../chart_model/pi_chart_model.dart';

class CostumePiChart extends StatefulWidget {
  final String? title;
  final double? containerWidth;
  final double? containerHeight;
  final double? centerRadius;
  final double? elementRadius;
  final List<PiChartModel> chartInfo;

  const CostumePiChart({
    super.key,
    this.containerWidth,
    this.containerHeight,
    this.centerRadius,
    required this.chartInfo,
    this.elementRadius,
    this.title,
  });

  @override
  State<CostumePiChart> createState() => _CostumePiChartState();
}

class _CostumePiChartState extends State<CostumePiChart> {
  List<PieChartSectionData> pieChartSectionData = [];
  List<PiChartModel> elementInOrders = [];
  double elementRadius = 0;

  @override
  void initState() {
    elementRadius = widget.elementRadius ?? 50.r;
    elementInOrders = widget.chartInfo.toList();
    elementInOrders.sort((a, b) => ((a.value ?? 0).compareTo(b.value ?? 0)));

    elementInOrders = elementInOrders.reversed.toList();

    for (var element in elementInOrders) {
      pieChartSectionData.add(
        PieChartSectionData(
          value: element.value,
          color: element.color,
          title: element.name,
          radius: elementRadius,
          showTitle: false,
          badgeWidget: SizedBox(
            width: elementRadius,
            child: Tooltip(
              message: element.name,
              child: Text(
                '',
                style: TextStyle(
                  fontFamily: FontConstants.fontFamily(context.locale),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.title ?? '',
      child: Container(
        width: widget.containerWidth,
        height: widget.containerHeight,
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Tooltip(
                message: widget.title ?? '',
                child: Text(
                  widget.title ?? '',
                  style: Theme.of(context).textTheme.titleLarge,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: PieChart(
                      PieChartData(
                        sectionsSpace: 0.0,
                        // pieTouchData: PieTouchData(
                        //   enabled: true,
                        //   touchCallback: (event, res) {
                        //     event.isInterestedForInteractions;
                        //     // print(res?.touchedSection?.touchedSectionIndex);
                        //   },
                        //   mouseCursorResolver: (event, res) {
                        //     if (res != null &&
                        //         res.touchedSection != null &&
                        //         (res.touchedSection?.touchedSectionIndex !=
                        //             null)) {
                        //       elementInOrders
                        //           .elementAtOrNull(
                        //               res.touchedSection!.touchedSectionIndex)
                        //           ?.copyWith(radius: 20);
                        //     }
                        //     print(event.localPosition);
                        //     return MouseCursor.defer;
                        //   },
                        // ),
                        centerSpaceRadius: widget.centerRadius,
                        sections: pieChartSectionData,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ListView.builder(
                      itemCount: elementInOrders.length,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        child: Tooltip(
                          message: elementInOrders[index].name ?? '',
                          child: Container(
                            height: 30.h,
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            decoration: BoxDecoration(
                              color: elementInOrders[index].color,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Center(
                              child: Text(
                                '${elementInOrders[index].name}',
                                style: Theme.of(context).textTheme.titleSmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
