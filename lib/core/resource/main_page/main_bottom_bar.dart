import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:go_router/go_router.dart';
import '../../../generated/locale_keys.g.dart';

import '../../../config/route/routes_manager.dart';

class MainBottomBar extends StatefulWidget {
  final int? currentIndex;
  const MainBottomBar({super.key, this.currentIndex});

  @override
  State<MainBottomBar> createState() => _MainBottomBarState();
}

class _MainBottomBarState extends State<MainBottomBar> {
  int? _currentIndex = 0;
  String path = RoutesPath.homePage;
  String _getPathByIndex(int index) {
    String output = path;
    switch (index) {
      case 0:
        output = RoutesPath.homePage;
        break;
      case 1:
        output = RoutesPath.bookingPage;
        break;
      case 2:
        output = RoutesPath.myServicesPage;
        break;
      case 3:
        output = RoutesPath.profilePage;
        break;
    }
    return output;
  }

  @override
  void initState() {
    _currentIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 2.r,
      backgroundColor: Colors.transparent,
      currentIndex: _currentIndex ?? 0,
      onTap: (newIndex) {
        setState(() {
          _currentIndex = newIndex;
          context.push(_getPathByIndex(_currentIndex ?? 0));
        });
      },

      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Theme.of(context).textTheme.labelLarge?.color,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home_outlined),
          activeIcon: const Icon(Icons.home),
          label: LocaleKeys.homePage_label.tr(),
          tooltip: LocaleKeys.homePage_title.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.calendar_today_outlined),
          activeIcon: const Icon(Icons.calendar_today),
          label: LocaleKeys.bookingPage_label.tr(),
          tooltip: LocaleKeys.bookingPage_title.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.miscellaneous_services_outlined),
          activeIcon: const Icon(Icons.miscellaneous_services),
          label: LocaleKeys.myServicesPage_label.tr(),
          tooltip: LocaleKeys.myServicesPage_title.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person_outline),
          activeIcon: const Icon(Icons.person),
          label: LocaleKeys.profilePage_label.tr(),
        ),
      ],
    ).asGlass(
      tintColor: Theme.of(
        context,
      ).scaffoldBackgroundColor.withValues(alpha: 0.3),
      blurX: 10,
      blurY: 10,
      clipBorderRadius: BorderRadius.zero,
    );
  }
}
