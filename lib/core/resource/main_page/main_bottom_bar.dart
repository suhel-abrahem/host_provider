import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';
import '/core/resource/color_manager.dart';
import '/features/home_page/presentation/bloc/unread_count_bloc.dart';
import '/generated/locale_keys.g.dart';

import '../../dependencies_injection.dart';

class MainBottomBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainBottomBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Theme.of(context).primaryColor,
      currentIndex: navigationShell.currentIndex,

      selectedItemColor: Colors.white,
      unselectedItemColor: ColorManager.disabledColor,

      showSelectedLabels: true,
      showUnselectedLabels: true,

      onTap: (index) {
        navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        );
      },

      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: LocaleKeys.homePage_label.tr(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          activeIcon: Icon(Icons.calendar_today),
          label: LocaleKeys.bookingPage_label.tr(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category_outlined),
          activeIcon: Icon(Icons.category),
          label: LocaleKeys.myServicesPage_label.tr(),
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Icon(Icons.person_outline),
              PositionedDirectional(
                top: 0,
                start: 0,
                child: BlocProvider(
                  create: (context) =>
                      getItInstance<UnreadCountBloc>()
                        ..add(UnreadCountEvent.getTicketUnreadCount()),
                  child: BlocBuilder<UnreadCountBloc, UnreadCountState>(
                    builder: (context, state) {
                      if (state is UnreadCountStateTicketUnreadCountLoaded) {
                        if ((state.count ?? 0) > 0) {
                          return Container(
                            constraints: BoxConstraints(
                              minWidth: 12.w,
                              minHeight: 12.h,
                              maxHeight: 12.h,
                              maxWidth: 12.w,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 2.w,
                              vertical: 2.h,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                "N",
                                style: Theme.of(context).textTheme.labelSmall
                                    ?.copyWith(
                                      color: Colors.white,
                                      fontSize: 8.sp,
                                    ),
                              ),
                            ),
                          );
                        } else {
                          return SizedBox.shrink();
                        }
                      }
                      return SizedBox.shrink();
                    },
                  ),
                ),
              ),
            ],
          ),
          activeIcon: Icon(Icons.person),
          label: LocaleKeys.profilePage_label.tr(),
        ),
      ],
    );
  }
}
