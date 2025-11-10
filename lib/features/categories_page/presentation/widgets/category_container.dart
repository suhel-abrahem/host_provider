import 'dart:convert';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hosta_provider/config/route/routes_manager.dart';
import 'package:hosta_provider/core/constants/api_constant.dart';
import 'package:hosta_provider/core/constants/font_constants.dart';
import 'package:hosta_provider/features/categories_page/domain/entities/category_entity.dart';
import 'package:hosta_provider/generated/locale_keys.g.dart';

class CategoryContainer extends StatelessWidget {
  final CategoryEntity? categoryEntity;
  const CategoryContainer({super.key, this.categoryEntity});

  @override
  Widget build(BuildContext context) {
    print("categoryEntity: ${categoryEntity?.icon}");
    return ElevatedButton(
      onPressed: () {
        context.pushNamed(
          RoutesName.categoryServicesPage,
          pathParameters: {"categoryEntity": jsonEncode(categoryEntity)},
        );
      },
      style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
        backgroundColor: WidgetStatePropertyAll(
          Theme.of(context).colorScheme.primaryContainer,
        ),
        padding: WidgetStateProperty.resolveWith<EdgeInsetsGeometry>((states) {
          if (states.contains(WidgetState.pressed)) {
            return EdgeInsets.symmetric(vertical: 5.h, horizontal: 2.w);
          }
          return EdgeInsets.symmetric(vertical: 0.h, horizontal: 8.w);
        }),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CachedNetworkImage(
            cacheKey: categoryEntity?.category_id.toString() ?? "",
            width: 50.w,
            height: 50.h,
            progressIndicatorBuilder: (context, url, progress) =>
                CircularProgressIndicator(value: progress.progress),
            imageUrl: categoryEntity?.icon ?? "",
            errorWidget: (context, url, error) => Icon(
              Icons.error,
              color: Theme.of(context).textTheme.labelLarge?.color,
              size: 32.sp,
            ),
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
                color: Theme.of(context).primaryColor.withValues(alpha: 0.3),
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
    );
  }
}
