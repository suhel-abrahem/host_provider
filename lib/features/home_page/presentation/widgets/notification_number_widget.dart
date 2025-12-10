import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosta_provider/core/constants/font_constants.dart';
import 'package:hosta_provider/core/resource/rst_stream/rst_stream.dart';

import '../../../../main.dart';

class BuildWithSocketStream extends StatefulWidget {
  final ValueChanged<int>? onValueChanged;
  const BuildWithSocketStream({super.key, this.onValueChanged});

  @override
  State<BuildWithSocketStream> createState() => _BuildWithSocketStreamState();
}

class _BuildWithSocketStreamState extends State<BuildWithSocketStream> {
  Future<int> getUnreadNotification() async {
    return await getUnreadCount();
  }

  @override
  void initState() {
    super.initState();
    getUnreadNotification().then((onValue) {
      streamSocket.addResponse(onValue.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream:
          streamSocket.stream, // <--- updated based on your new StreamSocket
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        String value = snapshot.data?.toString() ?? "";
        widget.onValueChanged?.call(int.tryParse(value) ?? 0);
        return AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: value == "0" ? 10.w : 20.w,
          height: value == "0" ? 10.h : 20.h,

          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
          decoration: BoxDecoration(
            color: value == "0" ? Theme.of(context).disabledColor : Colors.red,
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
        );
      },
    );
  }
}
