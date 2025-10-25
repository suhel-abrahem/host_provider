import 'package:easy_localization/easy_localization.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hosta_provider/config/route/routes_manager.dart';
import 'package:hosta_provider/core/resource/main_page/main_page.dart';

import '../../../../generated/locale_keys.g.dart';

class MyServicesPagePage extends StatefulWidget {
  const MyServicesPagePage({super.key});

  @override
  State<MyServicesPagePage> createState() => _MyServicesPagePageState();
}

class _MyServicesPagePageState extends State<MyServicesPagePage> {
  @override
  Widget build(BuildContext context) {
    return MainPage(
      title: LocaleKeys.myServicesPage_title.tr(),
      body: ListView(children: [Center(child: Text("My Services Page"))]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add, color: Colors.white, size: 22.sp),
        onPressed: () {
          context.push(RoutesPath.categoriesPage);
        },
      ),
    );
  }
}
