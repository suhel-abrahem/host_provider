import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hosta_provider/core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import 'package:hosta_provider/core/resource/main_page/drawer.dart';

class MainPage extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final String? title;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final bool? haveBottomNavigationBar;
  final Widget? navigationTaps;
  final Widget? drawer;
  final String? pagePath;

  final List<Widget>? actions;
  const MainPage({
    super.key,
    required this.body,
    this.title,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.navigationTaps,
    this.actions,
    this.pagePath,
    this.drawer,
    this.haveBottomNavigationBar,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        appBar:
            appBar ??
            PreferredSize(
              preferredSize: Size.fromHeight(
                haveBottomNavigationBar == true ? 100.h : 50.h,
              ),
              child: Column(
                children: [
                  AppBar(
                    centerTitle: true,
                    title: Text(
                      title ?? "",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    leading: SizedBox(
                      width: 36.w,
                      height: 36.h,
                      child: Center(
                        child: ElevatedButton(
                          style: Theme.of(context).elevatedButtonTheme.style
                              ?.copyWith(
                                backgroundColor: WidgetStatePropertyAll(
                                  Theme.of(context).scaffoldBackgroundColor,
                                ),
                                shape: WidgetStatePropertyAll(
                                  CircleBorder(eccentricity: 0),
                                ),
                                padding: WidgetStatePropertyAll(
                                  EdgeInsets.all(0),
                                ),
                                shadowColor: WidgetStatePropertyAll(
                                  Colors.transparent,
                                ),
                              ),
                          onPressed: () {},
                          child: Icon(
                            Icons.notifications_none,
                            size: 28.sp,
                            color: Theme.of(
                              context,
                            ).textTheme.labelLarge?.color,
                          ),
                        ),
                      ),
                    ),
                    actions:
                        actions ??
                        [
                          IconButton(
                            onPressed: context.canPop()
                                ? () => context.canPop()
                                      ? context.pop()
                                      : showMessage(
                                          message: "Can not pop",
                                          context: context,
                                        )
                                : null,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              size: 32.sp,
                              color: context.canPop()
                                  ? Theme.of(
                                      context,
                                    ).textTheme.displayLarge?.color
                                  : Theme.of(context).disabledColor,
                            ),
                          ),
                        ],
                  ),
                ],
              ),
            ),
        body: body,
        drawer: drawer ?? CustomDrawer(currentPagePath: pagePath),
        floatingActionButton: floatingActionButton,

        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
