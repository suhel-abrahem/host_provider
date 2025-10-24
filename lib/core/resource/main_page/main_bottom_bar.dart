import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../config/route/routes_manager.dart';

class MainBottomBar extends StatefulWidget {
  final String? currentRoute;
  const MainBottomBar({super.key, this.currentRoute});

  @override
  State<MainBottomBar> createState() => _MainBottomBarState();
}

class _MainBottomBarState extends State<MainBottomBar> {
  Widget buildNavButton({
    required IconData icon,
    required String label,
    required String routePath,
    required String routeName,
  }) {
    final selected = widget.currentRoute == routePath;

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
          shadowColor: WidgetStatePropertyAll(Theme.of(context).shadowColor),
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
          ),
          shape: WidgetStatePropertyAll(CircleBorder()),
          backgroundColor: WidgetStatePropertyAll(
            selected
                ? Theme.of(context).primaryColor
                : Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
        onPressed: () {
          context.push(routePath);
        },
        child: Icon(
          icon,
          size: 24.sp,
          color: Theme.of(context).textTheme.labelLarge?.color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      height: 60,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Theme.of(context).primaryColor, width: 1.sp),
        ),
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Row(
        key: ValueKey(widget.currentRoute),
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavButton(
            icon: Icons.category_rounded,
            label: 'Categories',
            routePath: RoutesPath.categoriesPage,
            routeName: RoutesName.categoriesPage,
          ),
          buildNavButton(
            icon: Icons.home_rounded,
            label: 'Home',
            routePath: RoutesPath.homePage,
            routeName: RoutesName.homePage,
          ),
          buildNavButton(
            icon: Icons.settings_rounded,
            label: 'Setting',
            routePath: RoutesPath.settingPage,
            routeName: RoutesName.settingPage,
          ),
        ],
      ),
    );
  }
}
