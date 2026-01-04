import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/config/route/routes_manager.dart';
import '/core/constants/font_constants.dart';

class BuildWithSocketStream extends StatefulWidget {
  final ValueChanged<int>? onValueChanged;
  final Stream? stream;
  const BuildWithSocketStream({super.key, this.onValueChanged, this.stream});

  @override
  State<BuildWithSocketStream> createState() => _BuildWithSocketStreamState();
}

class _BuildWithSocketStreamState extends State<BuildWithSocketStream> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: widget.stream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        lastNotificationCount = snapshot.data?.toString() ?? "0";
        String value = snapshot.data?.toString() ?? "";
        widget.onValueChanged?.call(int.tryParse(value) ?? 0);
        return AnimatedOpacity(
          opacity: value == "0" ? 0.0 : 1.0,
          duration: Duration(milliseconds: 600),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: value == "0" ? 0.w : 20.w,
            height: value == "0" ? 0.h : 20.h,

            padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
            decoration: BoxDecoration(
              color: value == "0"
                  ? Theme.of(context).disabledColor
                  : Colors.red,
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: snapshot.connectionState == ConnectionState.waiting
                ? CircularProgressIndicator(color: Colors.white)
                : Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: value == "0"
                          ? SizedBox(width: 0, height: 0)
                          : Text(
                              value,
                              style: Theme.of(context).textTheme.labelMedium
                                  ?.copyWith(
                                    fontFamily: FontConstants.fontFamily(
                                      context.locale,
                                    ),
                                    color: Colors.white,
                                  ),
                            ),
                    ),
                  ),
          ),
        );
      },
    );
  }
}
