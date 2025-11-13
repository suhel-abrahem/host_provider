import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:hosta_provider/core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import 'package:hosta_provider/core/resource/main_page/drawer.dart';

import 'animated_body_wrapper.dart';

class MainPage extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final String? title;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final bool? haveBottomBar;
  final Widget? navigationTaps;
  final Widget? drawer;
  final String? pagePath;

  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
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
    this.haveBottomBar,
    this.appBar,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color.fromARGB(255, 35, 89, 116).withValues(alpha: 0.9),
              Color.fromARGB(255, 11, 56, 102).withValues(alpha: 0.8),
              Color.fromARGB(255, 4, 38, 75),
            ],
            stops: const [0.0, 0.5, 1.0],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar:
              appBar ??
              PreferredSize(
                preferredSize: Size.fromHeight(
                  haveBottomBar == true ? 110.h : 50.h,
                ),
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  centerTitle: true,
                  title: Text(
                    title ?? "",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  leading: SizedBox(
                    width: 36.w,
                    height: 36.h,
                    child: Center(
                      child: Builder(
                        builder: (builderContext) {
                          return ElevatedButton(
                            style: Theme.of(context).elevatedButtonTheme.style
                                ?.copyWith(
                                  backgroundColor: WidgetStatePropertyAll(
                                    Theme.of(context).scaffoldBackgroundColor
                                        .withValues(alpha: 0.2),
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
                            onPressed: () {
                              Scaffold.of(builderContext).openDrawer();
                            },
                            child: Icon(
                              Icons.menu,
                              size: 28.sp,
                              color: Theme.of(
                                context,
                              ).textTheme.labelLarge?.color,
                            ),
                          );
                        },
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
                  bottom: bottom,
                ).animate().slideX(duration: 500.ms),
              ),
          body: RepaintBoundary(child: AnimatedBodyWrapper(child: body)),

          drawer: drawer ?? CustomDrawer(currentPagePath: pagePath),
          floatingActionButton: floatingActionButton,

          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        ),
      ),
    );
  }
}
