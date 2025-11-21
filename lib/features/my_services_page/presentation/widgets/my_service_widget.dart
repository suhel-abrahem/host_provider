import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/route/routes_manager.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../../core/constants/api_constant.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../core/resource/common_entity/service_entity.dart';
import '../../../../core/resource/image_widget.dart';
import 'add_button_my_service.dart';
import '../../../../generated/locale_keys.g.dart';

import '../../../../core/resource/common_entity/service_error_entity.dart';
import '../../../../core/resource/custom_widget/custom_input_field/custom_input_field.dart';
import '../../../../core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import '../../../category_services_page/data/models/set_service_model.dart';
import '../../../category_services_page/presentation/bloc/set_service_bloc.dart';

class MyServiceWidget extends StatefulWidget {
  final ServiceEntity? serviceEntity;
  final VoidCallback optionsOnPressed;
  const MyServiceWidget({
    super.key,
    this.serviceEntity,
    required this.optionsOnPressed,
  });

  @override
  State<MyServiceWidget> createState() => _MyServiceWidgetState();
}

class _MyServiceWidgetState extends State<MyServiceWidget> {
  SetServiceModel? setServiceModel = SetServiceModel();
  ServiceErrorEntity? serviceErrorEntity = ServiceErrorEntity();
  GlobalKey<FormFieldState> setServiceFormKey = GlobalKey();
  bool isAddButtonLoading = false;
  bool isAddServiceHaveError = false;
  @override
  void initState() {
    setServiceModel = setServiceModel?.copyWith(
      serviceModel: setServiceModel?.serviceModel?.copyWith(
        price: widget.serviceEntity?.price,
        duration_minutes: widget.serviceEntity?.duration_minutes,
        buffer_minutes: widget.serviceEntity?.buffer_minutes,
        notes: widget.serviceEntity?.notes,
        is_active: widget.serviceEntity?.is_active,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SetServiceBloc>(
      create: (context) =>
          getItInstance<SetServiceBloc>()..add(SetServiceEvent.started()),

      child: Builder(
        builder: (context) {
          return BlocListener<SetServiceBloc, SetServiceState>(
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
              } else if (state is SetServiceStateUpdated) {
                showMessage(
                  message: LocaleKeys.common_success.tr(),
                  context: context,
                );
                setServiceModel = SetServiceModel();
                if (context.canPop()) {
                  context.pop();
                }
                context.pushNamed(RoutesName.myServicesPage);
              } else if (state is SetServiceStateDeleted) {
                showMessage(
                  message: LocaleKeys.common_success.tr(),
                  context: context,
                );
                setServiceModel = SetServiceModel();
                if (context.canPop()) {
                  context.pop();
                }
                context.pushNamed(RoutesName.myServicesPage);
              } else if (state is SetServiceStateSetServiceStateAlreadyExist) {
                showMessage(
                  message: LocaleKeys.categoryServices_serviceIsAlreadyAdded
                      .tr(),
                  context: context,
                );
              } else if (state is SetServiceStateSetError) {
                showMessage(
                  message: LocaleKeys.common_error.tr(),
                  context: context,
                );
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //     color: Theme.of(context).shadowColor,
                //     blurRadius: 1.r,
                //     spreadRadius: 1.r,
                //   ),
                // ],
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: SizedBox(
                      width: 70.w,
                      height: 70.h,
                      child: ImageWidget(
                        boxFit: BoxFit.scaleDown,
                        imageUrl:
                            ApiConstant.imageBaseUrl +
                            (widget.serviceEntity?.image ?? ""),
                        width: 70.w,
                        height: 70.h,
                        errorIconSize: 32.sp,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          widget.serviceEntity?.service?["name"] ?? "",
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                fontFamily: FontConstants.fontFamily(
                                  context.locale,
                                ),
                              ),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 8.h,
                              ),
                              decoration: BoxDecoration(
                                color:
                                    (widget.serviceEntity?.is_active ?? false)
                                    ? Theme.of(context).colorScheme.primary
                                    : Theme.of(context).disabledColor,
                                borderRadius: BorderRadius.circular(13.r),
                              ),
                              child: Center(
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    (widget.serviceEntity?.is_active ?? false)
                                        ? LocaleKeys.myServicesPage_active.tr()
                                        : LocaleKeys.myServicesPage_inactive
                                              .tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                          fontFamily: FontConstants.fontFamily(
                                            context.locale,
                                          ),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                "${widget.serviceEntity?.price} ${LocaleKeys.myServicesPage_iqd.tr()}",
                                style: Theme.of(context).textTheme.labelLarge
                                    ?.copyWith(
                                      fontFamily: FontConstants.fontFamily(
                                        context.locale,
                                      ),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: BlocProvider(
                      create: (context) =>
                          getItInstance<SetServiceBloc>()
                            ..add(SetServiceEvent.started()),
                      child: SizedBox(
                        width: 40.w,
                        height: 40.h,
                        child:
                            PopupMenuButton<String>(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer
                                  .withValues(alpha: 0.9),
                              icon: Icon(
                                Icons.more_vert,
                                color: Theme.of(
                                  context,
                                ).textTheme.labelLarge?.color,
                                size: 23.sp,
                              ),
                              onSelected: (value) {
                                switch (value) {
                                  case "edit":
                                    serviceEditMethod(context);
                                    break;
                                  case "toggle":
                                    setServiceModel = setServiceModel?.copyWith(
                                      serviceModel: setServiceModel
                                          ?.serviceModel
                                          ?.copyWith(
                                            service_id: widget
                                                .serviceEntity
                                                ?.service_id,
                                            price: widget.serviceEntity?.price,
                                            id: widget.serviceEntity?.id,
                                            is_active:
                                                !(widget
                                                        .serviceEntity
                                                        ?.is_active ??
                                                    false),
                                          ),
                                    );
                                    if (setServiceModel
                                            ?.serviceModel
                                            ?.is_active ==
                                        null) {
                                      setServiceModel = setServiceModel
                                          ?.copyWith(
                                            serviceModel: setServiceModel
                                                ?.serviceModel
                                                ?.copyWith(is_active: false),
                                          );
                                    }
                                    context.read<SetServiceBloc>().add(
                                      SetServiceEvent.update(setServiceModel),
                                    );
                                    break;
                                  case "delete":
                                    setServiceModel = setServiceModel?.copyWith(
                                      serviceModel: setServiceModel
                                          ?.serviceModel
                                          ?.copyWith(
                                            service_id: widget
                                                .serviceEntity
                                                ?.service_id,
                                            id: widget.serviceEntity?.id,
                                            is_active:
                                                !(widget
                                                        .serviceEntity
                                                        ?.is_active ??
                                                    false),
                                          ),
                                    );
                                    if (setServiceModel
                                            ?.serviceModel
                                            ?.is_active ==
                                        null) {
                                      setServiceModel = setServiceModel
                                          ?.copyWith(
                                            serviceModel: setServiceModel
                                                ?.serviceModel
                                                ?.copyWith(is_active: false),
                                          );
                                    }
                                    context.read<SetServiceBloc>().add(
                                      SetServiceEvent.delete(setServiceModel),
                                    );
                                }
                              },
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                  value: 'edit',
                                  child: Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.pencil_circle,
                                        color: Theme.of(
                                          context,
                                        ).textTheme.labelLarge?.color,
                                      ),

                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12.w,
                                        ),
                                        child: Text(
                                          LocaleKeys.myServicesPage_edit.tr(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                fontFamily:
                                                    FontConstants.fontFamily(
                                                      context.locale,
                                                    ),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                PopupMenuItem(
                                  value: 'toggle',
                                  child: Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.power,
                                        color: Theme.of(
                                          context,
                                        ).textTheme.labelLarge?.color,
                                      ),

                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12.w,
                                        ),
                                        child: Text(
                                          LocaleKeys.myServicesPage_toggleStatus
                                              .tr(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                fontFamily:
                                                    FontConstants.fontFamily(
                                                      context.locale,
                                                    ),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                PopupMenuItem(
                                  value: 'delete',
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        CupertinoIcons.delete,
                                        color: Colors.red,
                                      ),

                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12.w,
                                        ),
                                        child: Text(
                                          LocaleKeys.myServicesPage_delete.tr(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                color: Colors.red,
                                                fontFamily:
                                                    FontConstants.fontFamily(
                                                      context.locale,
                                                    ),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ).asGlass(
                              frosted: true,
                              blurX: 18,
                              blurY: 18,
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
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<dynamic> serviceEditMethod(BuildContext context) {
    return showAdaptiveDialog(
      context: context,
      builder: (dialogContext) => StatefulBuilder(
        builder: (builderContext, setState) {
          return AlertDialog(
            icon: Icon(
              CupertinoIcons.pencil_circle,
              color: Theme.of(context).textTheme.labelLarge?.color,
              size: 32.sp,
            ),
            backgroundColor: Colors.transparent,
            title: Text(
              widget.serviceEntity?.service?["name"] ?? "",
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontFamily: FontConstants.fontFamily(context.locale),
              ),
            ),
            scrollable: true,
            content: Form(
              key: setServiceFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  CustomInputField(
                    label: LocaleKeys.categoryServices_price.tr(),
                    initialValue: setServiceModel?.serviceModel?.price
                        .toString(),
                    onChanged: (value) {
                      setServiceModel = setServiceModel?.copyWith(
                        serviceModel: setServiceModel?.serviceModel?.copyWith(
                          price: int.tryParse(value),
                        ),
                      );
                      setState(() {});
                    },
                    validator: (value) {
                      if (value == null && (value?.trim().isEmpty ?? false)) {
                        return LocaleKeys
                            .categoryServices_thePriceFieldIsRequired
                            .tr();
                      } else {
                        int? valueAsInt = int.tryParse(value ?? "");

                        if ((valueAsInt ?? 0) <= 0) {
                          return LocaleKeys
                              .categoryServices_thePriceFieldIsRequired
                              .tr();
                        }
                      }

                      return null;
                    },
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(vertical: 8.h),
                    child: CustomInputField(
                      label: LocaleKeys.categoryServices_durationInMinutes.tr(),
                      initialValue: setServiceModel
                          ?.serviceModel
                          ?.duration_minutes
                          .toString(),
                      onChanged: (value) {
                        setServiceModel = setServiceModel?.copyWith(
                          serviceModel: setServiceModel?.serviceModel?.copyWith(
                            duration_minutes: int.tryParse(value),
                          ),
                        );
                        setState(() {});
                      },
                      validator: (value) {
                        if (value == null && (value?.trim().isEmpty ?? false)) {
                          return LocaleKeys
                              .categoryServices_durationInMinutesIsRequired
                              .tr();
                        } else {
                          int? valueAsInt = int.tryParse(value ?? "");

                          if ((valueAsInt ?? 0) <= 0) {
                            return LocaleKeys
                                .categoryServices_durationInMinutesIsRequired
                                .tr();
                          }
                        }

                        return null;
                      },
                    ),
                  ),
                  CustomInputField(
                    label: LocaleKeys.categoryServices_bufferInMinutes.tr(),
                    initialValue: setServiceModel?.serviceModel?.buffer_minutes
                        .toString(),
                    onChanged: (value) {
                      setServiceModel = setServiceModel?.copyWith(
                        serviceModel: setServiceModel?.serviceModel?.copyWith(
                          buffer_minutes: int.tryParse(value),
                        ),
                      );
                      setState(() {});
                    },
                    validator: (value) {
                      if (value == null && (value?.trim().isEmpty ?? false)) {
                        return LocaleKeys
                            .categoryServices_bufferInMinutesIsRequired
                            .tr();
                      } else {
                        int? valueAsInt = int.tryParse(value ?? "");

                        if ((valueAsInt ?? 0) <= 0) {
                          return LocaleKeys
                              .categoryServices_bufferInMinutesIsRequired
                              .tr();
                        }
                      }

                      return null;
                    },
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(vertical: 8.h),
                    child: CustomInputField(
                      label: LocaleKeys.categoryServices_notes.tr(),
                      isRequired: false,
                      initialValue: setServiceModel?.serviceModel?.notes,
                      onChanged: (value) {
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
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          LocaleKeys.categoryServices_isActive.tr(),
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                fontFamily: FontConstants.fontFamily(
                                  context.locale,
                                ),
                              ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: SizedBox(
                            width: 20.w,
                            height: 20.h,
                            child: Checkbox.adaptive(
                              value:
                                  setServiceModel?.serviceModel?.is_active ??
                                  false,
                              onChanged: (newState) {
                                setState(() {
                                  setServiceModel = setServiceModel?.copyWith(
                                    serviceModel: setServiceModel?.serviceModel
                                        ?.copyWith(is_active: newState),
                                  );
                                });
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
              horizontal: 12.w,
              vertical: 20.h,
            ),
            actions: [
              AddButtonMyService(
                onPressed: () {
                  setServiceModel = setServiceModel?.copyWith(
                    serviceModel: setServiceModel?.serviceModel?.copyWith(
                      service_id: widget.serviceEntity?.service_id,
                      id: widget.serviceEntity?.id,
                    ),
                  );
                  if (setServiceModel?.serviceModel?.is_active == null) {
                    setServiceModel = setServiceModel?.copyWith(
                      serviceModel: setServiceModel?.serviceModel?.copyWith(
                        is_active: false,
                      ),
                    );
                  }
                  context.read<SetServiceBloc>().add(
                    SetServiceEvent.update(setServiceModel),
                  );
                },
                validator: (setServiceModel?.serviceModel?.price ?? 0) > 0,
              ),
              SizedBox(
                width: 95.w,
                height: 40.h,
                child: ElevatedButton(
                  style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                    padding: WidgetStateProperty.resolveWith((callback) {
                      if (callback.contains(WidgetState.pressed)) {
                        return EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 13.h,
                        );
                      }
                      if (callback.contains(WidgetState.hovered)) {
                        return EdgeInsets.symmetric(
                          horizontal: 5.w,
                          vertical: 13.h,
                        );
                      }
                      return EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 5.h,
                      );
                    }),
                    backgroundColor: WidgetStatePropertyAll(
                      Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                  onPressed: () {
                    setServiceModel = setServiceModel?.copyWith();
                    dialogContext.pop();
                  },
                  child: Text(
                    LocaleKeys.common_cancel.tr(),
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ],
            actionsAlignment: MainAxisAlignment.spaceEvenly,
          ).asGlass(
            blurX: 3,
            blurY: 3,
            tintColor: Theme.of(
              context,
            ).colorScheme.primaryContainer.withValues(alpha: 0.6),
          );
        },
      ),
    );
  }
}
