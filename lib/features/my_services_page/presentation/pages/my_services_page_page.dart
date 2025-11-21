import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/app/app_preferences.dart';
import '../../../../config/route/routes_manager.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../core/resource/common_state_widget/error_state_widget.dart';
import '../../../../core/resource/common_state_widget/no_internet_state_widget.dart';
import '../../../../core/resource/main_page/main_page.dart';
import '../../../../core/util/helper/helper.dart';
import '../../../category_services_page/data/models/get_service_model.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../bloc/my_service_bloc.dart';
import '../widgets/my_service_widget.dart';

import '../../../../core/resource/common_state_widget/no_data_state_widget.dart';
import '../../../../generated/locale_keys.g.dart';

class MyServicesPagePage extends StatefulWidget {
  const MyServicesPagePage({super.key});

  @override
  State<MyServicesPagePage> createState() => _MyServicesPagePageState();
}

class _MyServicesPagePageState extends State<MyServicesPagePage> {
  GetServiceModel getServiceModel = GetServiceModel();
  @override
  void didChangeDependencies() {
    getServiceModel = getServiceModel.copyWith(
      acceptLanguage: Helper.getCountryCode(context),
    );
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MyServicesPagePage oldWidget) {
    getServiceModel = getServiceModel.copyWith(
      acceptLanguage: Helper.getCountryCode(context),
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MyServiceBloc>(
          create: (context) =>
              getItInstance<MyServiceBloc>()
                ..add(MyServiceEvent.get(getServiceModel: getServiceModel)),
        ),
      ],
      child: MainPage(
        title: LocaleKeys.myServicesPage_title.tr(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Text(
                LocaleKeys.myServicesPage_label.tr(),
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontFamily: FontConstants.fontFamily(context.locale),
                ),
              ),
            ),
            BlocListener<MyServiceBloc, MyServiceState>(
              listener: (context, state) {
                if (state is MyServiceStateUnAuthorized) {
                  getItInstance<AppPreferences>().setUserInfo(
                    loginStateEntity: LoginStateEntity(),
                  );
                }
              },
              child: BlocBuilder<MyServiceBloc, MyServiceState>(
                builder: (context, state) => state.when(
                  initial: () => SizedBox(),
                  noInternet: () => Expanded(
                    child: NoInternetStateWidget(
                      lottieHeight: 200.h,
                      lottieWidth: 200.w,
                    ),
                  ),
                  loading: () => Expanded(
                    child: Center(
                      child: SizedBox(
                        width: 50.w,
                        height: 50.h,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                  getError: () => Expanded(
                    child: ErrorStateWidget(
                      lottieHeight: 200.h,
                      lottieWidth: 200.w,
                    ),
                  ),
                  got: (data) => Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: GridView.builder(
                        itemCount: data?.length ?? 0,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisSpacing: 8.h,
                          mainAxisExtent: 180.h,
                        ),
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsetsGeometry.symmetric(vertical: 12.h),
                          child:
                              MyServiceWidget(
                                serviceEntity: data?[index],
                                optionsOnPressed: () {},
                              ).asGlass(
                                frosted: true,
                                blurX: 8,
                                blurY: 8,
                                tintColor: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer
                                    .withValues(alpha: 0.9),
                                clipBorderRadius: BorderRadius.circular(12.r),
                                border: Theme.of(context).defaultBorderSide,
                              ),
                        ),
                      ),
                    ),
                  ),
                  unAuthorized: () => SizedBox(),
                  noData: () => Expanded(
                    child: NodataStateWidget(
                      lottieHeight: 200.h,
                      lottieWidth: 200.w,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(Icons.add, color: Colors.white, size: 22.sp),
          onPressed: () {
            context.push(RoutesPath.categoriesPage);
          },
        ),
      ),
    );
  }
}
