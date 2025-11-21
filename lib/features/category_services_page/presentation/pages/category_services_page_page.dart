import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/app/app_preferences.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../core/resource/common_entity/service_error_entity.dart';
import '../../../../core/resource/common_state_widget/no_data_state_widget.dart';
import '../../../../core/resource/common_state_widget/no_internet_state_widget.dart';
import '../../../../core/resource/custom_widget/custom_input_field/custom_input_field.dart';
import '../../../../core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import '../../../../core/resource/image_widget.dart';
import '../../../../core/resource/main_page/main_page.dart';
import '../../../../core/util/helper/helper.dart';
import '../../../categories_page/domain/entities/category_entity.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../data/models/get_service_model.dart';
import '../../data/models/service_model.dart';
import '../../data/models/set_service_model.dart';
import '../bloc/set_service_bloc.dart';
import '../widgets/add_button.dart';
import '../../../../generated/locale_keys.g.dart';

import '../../../../core/constants/font_constants.dart';
import '../../../../core/resource/common_entity/service_entity.dart';
import '../../../../core/resource/common_state_widget/error_state_widget.dart';
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
  SetServiceModel? setServiceModel = SetServiceModel();
  ServiceErrorEntity? serviceErrorEntity = ServiceErrorEntity();
  GlobalKey<FormFieldState> setServiceFormKey = GlobalKey();
  bool isAddButtonLoading = false;
  bool isAddServiceHaveError = false;
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
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CategoryServicesBloc>(
          create: (blocContext) =>
              getItInstance<CategoryServicesBloc>()
                ..add(CategoryServicesEvent.get(getServiceModel)),
        ),
        BlocProvider(
          create: (context) =>
              getItInstance<SetServiceBloc>()..add(SetServiceEvent.started()),
        ),
      ],
      child: BlocListener<SetServiceBloc, SetServiceState>(
        listener: (context, state) {
          if (state is SetServiceStateAdded) {
            showMessage(
              message: LocaleKeys.common_success.tr(),
              context: context,
            );
            setServiceModel = SetServiceModel();
            if (context.canPop()) {
              context.pop();
            }
          } else if (state is SetServiceStateSetServiceStateAlreadyExist) {
            showMessage(
              message: LocaleKeys.categoryServices_serviceIsAlreadyAdded.tr(),
              context: context,
            );
          } else if (state is SetServiceStateSetError) {
            showMessage(
              message: LocaleKeys.common_error.tr(),
              context: context,
            );
          } else if (state is SetServiceStateUnAuthorized) {
            getItInstance<AppPreferences>().setUserInfo(
              loginStateEntity: LoginStateEntity(),
            );
          }
        },
        child: MainPage(
          title: LocaleKeys.categoryServices_title.tr(),
          body: Column(
            children: [
              Container(
                height: 110.h,
                decoration: BoxDecoration(),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
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
              ).asGlass(
                frosted: true,
                blurX: 8,
                blurY: 8,
                tintColor: Theme.of(
                  context,
                ).colorScheme.primaryContainer.withValues(alpha: 0.9),

                border: Theme.of(context).defaultBorderSide,
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
                        added: (data) => SizedBox(),
                        initial: () => SizedBox(),
                        noInternet: () => NoInternetStateWidget(
                          lottieHeight: 200.h,
                          lottieWidth: 200.w,
                        ),
                        loading: () =>
                            Center(child: CircularProgressIndicator()),

                        got: (data) => (data == null || data.isEmpty)
                            ? NodataStateWidget(
                                lottieHeight: 200.h,
                                lottieWidth: 200.w,
                              )
                            : ListView.builder(
                                physics: AlwaysScrollableScrollPhysics(),
                                itemCount: data.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.symmetric(vertical: 6.h),
                                  child:
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 8.h,
                                          horizontal: 8.w,
                                        ),
                                        height: 120.h,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            12.r,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: 50.w,
                                              height: 50.h,
                                              child: ImageWidget(
                                                imageUrl:
                                                    widget
                                                        .categoryEntity
                                                        ?.icon ??
                                                    "",
                                                width: 50.w,
                                                height: 50.h,
                                                errorIconSize: 32.sp,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 170.w,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    data[index]?.name ?? "",
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
                                                  // Text(
                                                  //   data?[index]?.notes ?? "",
                                                  //   style: Theme.of(context)
                                                  //       .textTheme
                                                  //       .labelLarge
                                                  //       ?.copyWith(
                                                  //         fontFamily:
                                                  //             FontConstants.fontFamily(
                                                  //               context.locale,
                                                  //             ),
                                                  //         fontSize: 14.sp,
                                                  //       ),
                                                  //   textAlign: TextAlign.center,
                                                  // ),
                                                ],
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional
                                                  .centerEnd,
                                              child: SizedBox(
                                                height: 30.h,
                                                width: 60.w,
                                                child: ElevatedButton(
                                                  style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                                                    backgroundColor:
                                                        WidgetStateProperty.resolveWith((
                                                          state,
                                                        ) {
                                                          if (state.contains(
                                                            WidgetState.pressed,
                                                          )) {
                                                            return Theme.of(
                                                                  context,
                                                                )
                                                                .colorScheme
                                                                .primaryContainer;
                                                          }
                                                          return Theme.of(
                                                            context,
                                                          ).primaryColor;
                                                        }),
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
                                                  onPressed: () {
                                                    showAdaptiveDialog(
                                                      context: context,
                                                      builder: (dialogContext) => StatefulBuilder(
                                                        builder:
                                                            (
                                                              builderContext,
                                                              setState,
                                                            ) {
                                                              return SizedBox(
                                                                width: 300.w,
                                                                child:
                                                                    AlertDialog(
                                                                      icon: Icon(
                                                                        Icons
                                                                            .add_business_outlined,
                                                                        color: Theme.of(
                                                                          context,
                                                                        ).textTheme.labelLarge?.color,
                                                                        size: 32
                                                                            .sp,
                                                                      ),
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      title: Text(
                                                                        LocaleKeys
                                                                            .categoryServices_addService
                                                                            .tr(),
                                                                        style:
                                                                            Theme.of(
                                                                              context,
                                                                            ).textTheme.labelLarge?.copyWith(
                                                                              fontFamily: FontConstants.fontFamily(
                                                                                context.locale,
                                                                              ),
                                                                            ),
                                                                      ),
                                                                      scrollable:
                                                                          true,
                                                                      content: Form(
                                                                        key:
                                                                            setServiceFormKey,
                                                                        autovalidateMode:
                                                                            AutovalidateMode.onUserInteraction,
                                                                        child: Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceEvenly,
                                                                          children: [
                                                                            CustomInputField(
                                                                              label: LocaleKeys.categoryServices_price.tr(),
                                                                              initialValue: setServiceModel?.serviceModel?.price.toString(),
                                                                              onChanged:
                                                                                  (
                                                                                    value,
                                                                                  ) {
                                                                                    setServiceModel = setServiceModel?.copyWith(
                                                                                      serviceModel: setServiceModel?.serviceModel?.copyWith(
                                                                                        price: int.tryParse(
                                                                                          value,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                    setState(
                                                                                      () {},
                                                                                    );
                                                                                  },
                                                                              validator:
                                                                                  (
                                                                                    value,
                                                                                  ) {
                                                                                    if (value ==
                                                                                            null &&
                                                                                        (value?.trim().isEmpty ??
                                                                                            false)) {
                                                                                      return LocaleKeys.categoryServices_thePriceFieldIsRequired.tr();
                                                                                    } else {
                                                                                      int? valueAsInt = int.tryParse(
                                                                                        value ??
                                                                                            "",
                                                                                      );

                                                                                      if ((valueAsInt ??
                                                                                              0) <=
                                                                                          0) {
                                                                                        return LocaleKeys.categoryServices_thePriceFieldIsRequired.tr();
                                                                                      }
                                                                                    }

                                                                                    return null;
                                                                                  },
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsGeometry.symmetric(
                                                                                vertical: 16.h,
                                                                              ),
                                                                              child: CustomInputField(
                                                                                label: LocaleKeys.categoryServices_durationInMinutes.tr(),
                                                                                initialValue: setServiceModel?.serviceModel?.duration_minutes.toString(),
                                                                                onChanged:
                                                                                    (
                                                                                      value,
                                                                                    ) {
                                                                                      setServiceModel = setServiceModel?.copyWith(
                                                                                        serviceModel: setServiceModel?.serviceModel?.copyWith(
                                                                                          duration_minutes:
                                                                                              int.tryParse(
                                                                                                value ??
                                                                                                    "0",
                                                                                              ) ??
                                                                                              0,
                                                                                        ),
                                                                                      );
                                                                                      setState(
                                                                                        () {},
                                                                                      );
                                                                                    },
                                                                                validator:
                                                                                    (
                                                                                      value,
                                                                                    ) {
                                                                                      if (value ==
                                                                                              null &&
                                                                                          (value?.trim().isEmpty ??
                                                                                              false)) {
                                                                                        return LocaleKeys.categoryServices_durationInMinutesIsRequired.tr();
                                                                                      } else {
                                                                                        int? valueAsInt = int.tryParse(
                                                                                          value ??
                                                                                              "",
                                                                                        );

                                                                                        if ((valueAsInt ??
                                                                                                0) <=
                                                                                            0) {
                                                                                          return LocaleKeys.categoryServices_durationInMinutesIsRequired.tr();
                                                                                        }
                                                                                      }

                                                                                      return null;
                                                                                    },
                                                                              ),
                                                                            ),
                                                                            CustomInputField(
                                                                              label: LocaleKeys.categoryServices_bufferInMinutes.tr(),
                                                                              initialValue: setServiceModel?.serviceModel?.buffer_minutes.toString(),
                                                                              onChanged:
                                                                                  (
                                                                                    value,
                                                                                  ) {
                                                                                    setServiceModel = setServiceModel?.copyWith(
                                                                                      serviceModel: setServiceModel?.serviceModel?.copyWith(
                                                                                        buffer_minutes:
                                                                                            int.tryParse(
                                                                                              value ??
                                                                                                  "0",
                                                                                            ) ??
                                                                                            0,
                                                                                      ),
                                                                                    );
                                                                                    setState(
                                                                                      () {},
                                                                                    );
                                                                                  },
                                                                              validator:
                                                                                  (
                                                                                    value,
                                                                                  ) {
                                                                                    if (value ==
                                                                                            null &&
                                                                                        (value?.trim().isEmpty ??
                                                                                            false)) {
                                                                                      return LocaleKeys.categoryServices_bufferInMinutesIsRequired.tr();
                                                                                    } else {
                                                                                      int? valueAsInt = int.tryParse(
                                                                                        value ??
                                                                                            "",
                                                                                      );

                                                                                      if ((valueAsInt ??
                                                                                              0) <=
                                                                                          0) {
                                                                                        return LocaleKeys.categoryServices_bufferInMinutesIsRequired.tr();
                                                                                      }
                                                                                    }

                                                                                    return null;
                                                                                  },
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsGeometry.symmetric(
                                                                                vertical: 16.h,
                                                                              ),
                                                                              child: CustomInputField(
                                                                                label: LocaleKeys.categoryServices_notes.tr(),
                                                                                isRequired: false,
                                                                                initialValue: setServiceModel?.serviceModel?.notes,
                                                                                onChanged:
                                                                                    (
                                                                                      value,
                                                                                    ) {
                                                                                      setServiceModel = setServiceModel?.copyWith(
                                                                                        serviceModel: setServiceModel?.serviceModel?.copyWith(
                                                                                          notes: value,
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                maxLines: 3,
                                                                                maxLength: 500,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsets.symmetric(
                                                                                vertical: 16.h,
                                                                              ),
                                                                              child: Row(
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Text(
                                                                                    LocaleKeys.categoryServices_isActive.tr(),
                                                                                    style:
                                                                                        Theme.of(
                                                                                          context,
                                                                                        ).textTheme.labelLarge?.copyWith(
                                                                                          fontFamily: FontConstants.fontFamily(
                                                                                            context.locale,
                                                                                          ),
                                                                                        ),
                                                                                  ),

                                                                                  Padding(
                                                                                    padding: EdgeInsets.symmetric(
                                                                                      horizontal: 20.w,
                                                                                    ),
                                                                                    child: SizedBox(
                                                                                      width: 20.w,
                                                                                      height: 20.h,
                                                                                      child: Checkbox.adaptive(
                                                                                        value:
                                                                                            setServiceModel?.serviceModel?.is_active ??
                                                                                            false,
                                                                                        onChanged:
                                                                                            (
                                                                                              newState,
                                                                                            ) {
                                                                                              setState(
                                                                                                () {
                                                                                                  setServiceModel = setServiceModel?.copyWith(
                                                                                                    serviceModel: setServiceModel?.serviceModel?.copyWith(
                                                                                                      is_active: newState,
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              );
                                                                                            },
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      actionsPadding: EdgeInsets.symmetric(
                                                                        horizontal:
                                                                            12.w,
                                                                        vertical:
                                                                            20.h,
                                                                      ),
                                                                      actions: [
                                                                        AddButton(
                                                                          onPressed: () {
                                                                            setServiceModel = setServiceModel?.copyWith(
                                                                              serviceModel: setServiceModel?.serviceModel?.copyWith(
                                                                                service_id: data[index]?.id,
                                                                              ),
                                                                            );
                                                                            if (setServiceModel?.serviceModel?.is_active ==
                                                                                null) {
                                                                              setServiceModel = setServiceModel?.copyWith(
                                                                                serviceModel: setServiceModel?.serviceModel?.copyWith(
                                                                                  is_active: false,
                                                                                ),
                                                                              );
                                                                            }
                                                                            context
                                                                                .read<
                                                                                  SetServiceBloc
                                                                                >()
                                                                                .add(
                                                                                  SetServiceEvent.set(
                                                                                    setServiceModel,
                                                                                  ),
                                                                                );
                                                                          },
                                                                          validator:
                                                                              (setServiceModel?.serviceModel?.price ??
                                                                                  0) >
                                                                              0,
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              95.w,
                                                                          height:
                                                                              40.h,
                                                                          child: ElevatedButton(
                                                                            style:
                                                                                Theme.of(
                                                                                  context,
                                                                                ).elevatedButtonTheme.style?.copyWith(
                                                                                  padding: WidgetStateProperty.resolveWith(
                                                                                    (
                                                                                      callback,
                                                                                    ) {
                                                                                      if (callback.contains(
                                                                                        WidgetState.pressed,
                                                                                      )) {
                                                                                        return EdgeInsets.symmetric(
                                                                                          horizontal: 8.w,
                                                                                          vertical: 13.h,
                                                                                        );
                                                                                      }
                                                                                      if (callback.contains(
                                                                                        WidgetState.hovered,
                                                                                      )) {
                                                                                        return EdgeInsets.symmetric(
                                                                                          horizontal: 5.w,
                                                                                          vertical: 13.h,
                                                                                        );
                                                                                      }
                                                                                      return EdgeInsets.symmetric(
                                                                                        horizontal: 5.w,
                                                                                        vertical: 5.h,
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                  backgroundColor: WidgetStatePropertyAll(
                                                                                    Theme.of(
                                                                                      context,
                                                                                    ).scaffoldBackgroundColor,
                                                                                  ),
                                                                                ),
                                                                            onPressed: () {
                                                                              setServiceModel = setServiceModel?.copyWith(
                                                                                serviceModel: ServiceModel(),
                                                                              );
                                                                              dialogContext.pop();
                                                                            },
                                                                            child: Text(
                                                                              LocaleKeys.common_cancel.tr(),
                                                                              style:
                                                                                  Theme.of(
                                                                                    context,
                                                                                  ).textTheme.labelLarge?.copyWith(
                                                                                    fontFamily: FontConstants.fontFamily(
                                                                                      context.locale,
                                                                                    ),
                                                                                    fontSize: 16.sp,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                      actionsAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceEvenly,
                                                                    ).asGlass(
                                                                      frosted:
                                                                          true,
                                                                      blurX: 0,
                                                                      blurY: 0,
                                                                      tintColor: Theme.of(context)
                                                                          .colorScheme
                                                                          .primaryContainer
                                                                          .withValues(
                                                                            alpha:
                                                                                0.9,
                                                                          ),
                                                                      clipBorderRadius:
                                                                          BorderRadius.circular(
                                                                            12.r,
                                                                          ),
                                                                      border: Theme.of(
                                                                        context,
                                                                      ).defaultBorderSide,
                                                                    ),
                                                              );
                                                            },
                                                      ),
                                                    );
                                                  },
                                                  child: Center(
                                                    child: Text(
                                                      LocaleKeys.common_add
                                                          .tr(),
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelLarge
                                                          ?.copyWith(
                                                            fontFamily:
                                                                FontConstants.fontFamily(
                                                                  context
                                                                      .locale,
                                                                ),
                                                            fontSize: 16.sp,
                                                          ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ).asGlass(
                                        frosted: true,
                                        blurX: 0,
                                        blurY: 0,
                                        tintColor: Theme.of(context)
                                            .colorScheme
                                            .primaryContainer
                                            .withValues(alpha: 0.9),
                                        clipBorderRadius: BorderRadius.circular(
                                          12.r,
                                        ),
                                        border: Theme.of(
                                          context,
                                        ).defaultBorderSide,
                                      ),
                                ),
                              ),
                        unAuthorized: () => ErrorStateWidget(
                          lottieHeight: 200.h,
                          lottieWidth: 200.w,
                        ),
                        getError: (ServiceEntity? serviceEntity) =>
                            ErrorStateWidget(
                              lottieHeight: 200.h,
                              lottieWidth: 200.w,
                            ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
