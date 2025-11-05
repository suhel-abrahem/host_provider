import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/core/resource/main_page/main_page.dart';
import 'package:hosta_provider/core/util/helper/helper.dart';
import 'package:hosta_provider/features/categories_page/domain/entities/category_entity.dart';
import 'package:hosta_provider/features/categories_page/presentation/bloc/categories_page_bloc.dart';
import 'package:hosta_provider/features/category_services_page/data/models/get_service_model.dart';
import 'package:hosta_provider/generated/locale_keys.g.dart';

import '../../../../core/constants/font_constants.dart';
import '../bloc/category_services_bloc.dart';

class CategoryServicesPagePage extends StatefulWidget {
  final CategoryEntity? categoryEntity;
  const CategoryServicesPagePage({super.key, this.categoryEntity});

  @override
  State<CategoryServicesPagePage> createState() =>
      _CategoryServicesPagePageState();
}

class _CategoryServicesPagePageState extends State<CategoryServicesPagePage> {
  GetServiceModel? getServiceModel;
  @override
  void didChangeDependencies() {
    getServiceModel = GetServiceModel(
      category_id: widget.categoryEntity?.id,
      acceptLanguage: Helper.getCountryCode(context),
    );
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant CategoryServicesPagePage oldWidget) {
    getServiceModel = GetServiceModel(
      category_id: widget.categoryEntity?.id,
      acceptLanguage: Helper.getCountryCode(context),
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getItInstance<CategoryServicesBloc>()
            ..add(CategoryServicesEvent.get(getServiceModel)),
      child: MainPage(
        title: LocaleKeys.categoryServices_title.tr(),
        body: Column(
          children: [
            Container(
              height: 100.h,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: CachedNetworkImage(
                      cacheKey:
                          widget.categoryEntity?.category_id.toString() ?? "",
                      width: 50.w,
                      height: 50.h,
                      progressIndicatorBuilder: (context, url, progress) =>
                          CircularProgressIndicator(),
                      imageUrl: widget.categoryEntity?.icon ?? "",
                      errorWidget: (context, url, error) => Icon(
                        Icons.error,
                        color: Theme.of(context).textTheme.labelLarge?.color,
                        size: 32.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          widget.categoryEntity?.name ?? "",
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                fontFamily: FontConstants.fontFamily(
                                  context.locale,
                                ),
                              ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "${widget.categoryEntity?.services_count} ${LocaleKeys.categoriesPage_services.tr()}",
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                fontFamily: FontConstants.fontFamily(
                                  context.locale,
                                ),
                                fontSize: 14.sp,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 20.h,
                  horizontal: 20.w,
                ),
                child: BlocBuilder<CategoryServicesBloc, CategoryServicesState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => SizedBox(),
                      noInternet: () => SizedBox(),
                      loading: () => Center(child: CircularProgressIndicator()),
                      error: () => SizedBox(),
                      got: (data) => ListView.builder(
                        physics: AlwaysScrollableScrollPhysics(),
                        itemCount: data?.length,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 6.h),
                          child: Container(
                            height: 100.h,
                            decoration: BoxDecoration(
                              color: Theme.of(
                                context,
                              ).colorScheme.primaryContainer,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 50.w,
                                  height: 50.h,
                                  child: CachedNetworkImage(
                                    cacheKey:
                                        widget.categoryEntity?.category_id
                                            .toString() ??
                                        "",
                                    width: 50.w,
                                    height: 50.h,
                                    progressIndicatorBuilder:
                                        (context, url, progress) =>
                                            CircularProgressIndicator(),
                                    imageUrl: widget.categoryEntity?.icon ?? "",
                                    errorWidget: (context, url, error) => Icon(
                                      Icons.error,
                                      color: Theme.of(
                                        context,
                                      ).textTheme.labelLarge?.color,
                                      size: 32.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 170.w,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        data?[index]?.name ?? "",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                              fontFamily:
                                                  FontConstants.fontFamily(
                                                    context.locale,
                                                  ),
                                            ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        data?[index]?.notes ?? "",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                              fontFamily:
                                                  FontConstants.fontFamily(
                                                    context.locale,
                                                  ),
                                              fontSize: 14.sp,
                                            ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional.centerEnd,
                                  child: SizedBox(
                                    height: 30.h,
                                    width: 60.w,
                                    child: ElevatedButton(
                                      style: Theme.of(context)
                                          .elevatedButtonTheme
                                          .style
                                          ?.copyWith(
                                            backgroundColor:
                                                WidgetStateProperty.resolveWith(
                                                  (state) {
                                                    if (state.contains(
                                                      WidgetState.pressed,
                                                    )) {
                                                      return Theme.of(context)
                                                          .colorScheme
                                                          .primaryContainer;
                                                    }
                                                    return Theme.of(
                                                      context,
                                                    ).primaryColor;
                                                  },
                                                ),
                                            shape: WidgetStatePropertyAll(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadiusGeometry.circular(
                                                      8.r,
                                                    ),
                                              ),
                                            ),
                                            padding:
                                                WidgetStateProperty.resolveWith<
                                                  EdgeInsetsGeometry
                                                >((states) {
                                                  if (states.contains(
                                                    WidgetState.pressed,
                                                  )) {
                                                    return EdgeInsets.symmetric(
                                                      vertical: 5.h,
                                                      horizontal: 2.w,
                                                    );
                                                  }
                                                  return EdgeInsets.symmetric(
                                                    vertical: 0.h,
                                                    horizontal: 0.w,
                                                  );
                                                }),
                                          ),
                                      onPressed: () {},
                                      child: Center(
                                        child: Text(
                                          LocaleKeys.common_add.tr(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                fontFamily:
                                                    FontConstants.fontFamily(
                                                      context.locale,
                                                    ),
                                                fontSize: 16.sp,
                                              ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      unAuthorized: () => SizedBox(),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
