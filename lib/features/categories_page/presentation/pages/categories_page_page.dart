import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/app/app_preferences.dart';
import '../../../../config/route/routes_manager.dart';

import '../../../../core/dependencies_injection.dart';
import '../../../../core/resource/common_state_widget/no_internet_state_widget.dart';
import '../../../../core/resource/main_page/main_page.dart';
import '../../../../core/util/helper/helper.dart';
import '../../data/models/get_category_model.dart';
import '../bloc/categories_page_bloc.dart';
import '../widgets/category_container.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../../../generated/locale_keys.g.dart';

import '../../../../core/resource/common_state_widget/error_state_widget.dart';
import '../../../../core/resource/common_state_widget/no_data_state_widget.dart';

class CategoriesPagePage extends StatefulWidget {
  const CategoriesPagePage({super.key});

  @override
  State<CategoriesPagePage> createState() => _CategoriesPagePageState();
}

class _CategoriesPagePageState extends State<CategoriesPagePage> {
  GetCategoryModel? getCategoryModel;
  @override
  void didChangeDependencies() {
    getCategoryModel = GetCategoryModel(
      acceptLanguage: Helper.getCountryCode(context),
    );
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant CategoriesPagePage oldWidget) {
    getCategoryModel = GetCategoryModel(
      acceptLanguage: Helper.getCountryCode(context),
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getItInstance<CategoriesPageBloc>()
            ..add(CategoriesPageEvent.get(getCategoryModel)),
      child: MainPage(
        title: LocaleKeys.categoriesPage_title.tr(),
        body: BlocListener<CategoriesPageBloc, CategoriesPageState>(
          listener: (context, state) {
            if (state is CategoriesPageStateUnAuthorized) {
              getItInstance<AppPreferences>().setUserInfo(
                loginStateEntity: LoginStateEntity(),
              );
              context.goNamed(RoutesName.loginPage);
            }
          },
          child: BlocListener<CategoriesPageBloc, CategoriesPageState>(
            listener: (context, state) {
              if (state is CategoriesPageStateUnAuthorized) {
                getItInstance<AppPreferences>().setUserInfo(
                  loginStateEntity: LoginStateEntity(),
                );
              }
            },
            child: BlocBuilder<CategoriesPageBloc, CategoriesPageState>(
              builder: (context, state) {
                return state.when(
                  initial: () => SizedBox(),
                  error: () => Expanded(
                    child: ErrorStateWidget(
                      lottieHeight: 200.h,
                      lottieWidth: 200.w,
                    ),
                  ),
                  noInternet: () => Expanded(
                    child: NoInternetStateWidget(
                      lottieHeight: 200.h,
                      lottieWidth: 200.w,
                    ),
                  ),
                  unAuthorized: () => Expanded(
                    child: ErrorStateWidget(
                      lottieHeight: 200.h,
                      lottieWidth: 200.w,
                    ),
                  ),
                  loading: () => Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  got: (data) => (data == null || data.isEmpty)
                      ? NodataStateWidget(
                          lottieHeight: 200.h,
                          lottieWidth: 200.w,
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 20.h,
                          ),
                          child: GridView.builder(
                            itemCount: data.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 12.w,
                                  mainAxisSpacing: 12.h,
                                  mainAxisExtent: 180.h,
                                ),
                            itemBuilder: (context, index) {
                              return CategoryContainer(
                                categoryEntity: data[index],
                              );
                            },
                          ),
                        ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
