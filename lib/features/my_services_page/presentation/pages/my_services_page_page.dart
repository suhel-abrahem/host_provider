import 'package:easy_localization/easy_localization.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:go_router/go_router.dart';
import 'package:hosta_provider/config/route/routes_manager.dart';
import 'package:hosta_provider/config/theme/app_theme.dart';
import 'package:hosta_provider/core/constants/font_constants.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/core/resource/common_state_widget/error_state_widget.dart';
import 'package:hosta_provider/core/resource/common_state_widget/no_internet_state_widget.dart';
import 'package:hosta_provider/core/resource/main_page/main_page.dart';
import 'package:hosta_provider/features/category_services_page/data/models/get_service_model.dart';
import 'package:hosta_provider/features/my_services_page/presentation/bloc/my_service_bloc.dart';
import 'package:hosta_provider/features/my_services_page/presentation/widgets/my_service_widget.dart';

import '../../../../core/resource/common_state_widget/no_data_state_widget.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../category_services_page/presentation/bloc/set_service_bloc.dart';

class MyServicesPagePage extends StatefulWidget {
  const MyServicesPagePage({super.key});

  @override
  State<MyServicesPagePage> createState() => _MyServicesPagePageState();
}

class _MyServicesPagePageState extends State<MyServicesPagePage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MyServiceBloc>(
          create: (context) =>
              getItInstance<MyServiceBloc>()
                ..add(MyServiceEvent.get(getServiceModel: GetServiceModel())),
        ),
        BlocProvider(
          create: (context) =>
              getItInstance<SetServiceBloc>()..add(SetServiceEvent.started()),
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
            BlocBuilder<MyServiceBloc, MyServiceState>(
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
