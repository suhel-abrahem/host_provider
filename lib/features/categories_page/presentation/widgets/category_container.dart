import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/route/routes_manager.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/resource/image_widget.dart';
import '../../domain/entities/category_entity.dart';
import '../../../../generated/locale_keys.g.dart';

class CategoryContainer extends StatelessWidget {
  final CategoryEntity? categoryEntity;
  const CategoryContainer({super.key, this.categoryEntity});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.pushNamed(
          RoutesName.categoryServicesPage,
          pathParameters: {"categoryEntity": jsonEncode(categoryEntity)},
        );
      },
      style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
        backgroundColor: WidgetStatePropertyAll(Colors.transparent),
        shadowColor: WidgetStatePropertyAll(Colors.transparent),
        padding: WidgetStateProperty.resolveWith<EdgeInsetsGeometry>((states) {
          if (states.contains(WidgetState.pressed)) {
            return EdgeInsets.symmetric(vertical: 5.h, horizontal: 2.w);
          }

          return EdgeInsets.zero;
        }),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            side: Theme.of(context).defaultBorderSide,
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
      ),
      child:
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
            decoration: BoxDecoration(color: Colors.transparent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImageWidget(
                  imageUrl: categoryEntity?.icon ?? "",
                  width: 50.w,
                  height: 50.h,
                  errorIconSize: 26.sp,
                ),
                Text(
                  categoryEntity?.name ?? "",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                  ),
                  textAlign: TextAlign.center,
                ),
                Center(
                  child: Container(
                    height: 30.h,
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    decoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      ).primaryColor.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Center(
                      child: Text(
                        "${categoryEntity?.services_count} ${LocaleKeys.categoriesPage_services.tr()}",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
                          fontSize: 14.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ).asGlass(
            frosted: true,
            blurX: 8,
            blurY: 8,
            tintColor: Theme.of(
              context,
            ).colorScheme.primaryContainer.withValues(alpha: 0.9),
            clipBorderRadius: BorderRadius.circular(12.r),
            border: Theme.of(context).defaultBorderSide,
          ),
    );
  }
}
