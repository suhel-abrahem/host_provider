import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosta_provider/config/app/app_preferences.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/core/resource/main_page/main_page.dart';
import 'package:hosta_provider/core/util/helper/helper.dart';
import 'package:hosta_provider/features/categories_page/data/models/get_category_model.dart';
import 'package:hosta_provider/features/categories_page/presentation/bloc/categories_page_bloc.dart';
import 'package:hosta_provider/features/categories_page/presentation/widgets/category_container.dart';
import 'package:hosta_provider/features/login_page/domain/entities/login_state_entity.dart';
import 'package:hosta_provider/generated/locale_keys.g.dart';

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
            state.when(
              initial: () => print("categories page State is:$state,data:"),
              error: () => print("categories page State is:$state,data:"),
              noInternet: () => print("categories page State is:$state,data:"),
              unAuthorized: () =>
                  print("categories page State is:$state,data:"),
              loading: () => print("categories page State is:$state,data:"),
              got: (data) {
                print("categories page State is:$state,data:$data");
              },
            );
          },
          child: BlocBuilder<CategoriesPageBloc, CategoriesPageState>(
            builder: (context, state) {
              return state.when(
                initial: () => SizedBox(),
                error: () => SizedBox(),
                noInternet: () => SizedBox(),
                unAuthorized: () => SizedBox(),
                loading: () => Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                got: (data) => Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 20.h,
                  ),
                  child: GridView.builder(
                    itemCount: data?.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.w,
                      mainAxisSpacing: 12.h,
                    ),
                    itemBuilder: (context, index) {
                      return CategoryContainer(categoryEntity: data?[index]);
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
