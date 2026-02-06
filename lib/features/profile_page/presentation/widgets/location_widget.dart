import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:glass/glass.dart';
import '/config/theme/app_theme.dart';
import '/features/signup_page/domain/entities/position_entity.dart';

import '../../../../core/constants/font_constants.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../signup_page/presentation/bloc/get_position_bloc.dart';

class LocationWidget extends StatefulWidget {
  final ValueChanged<PositionEntity>? onLocationChanged;
  final ValueChanged<bool> onEnabledChanged;
  const LocationWidget({
    super.key,
    this.onLocationChanged,
    required this.onEnabledChanged,
  });

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  int requestLocationPermissionCounter = 0;
  PositionEntity positionEntity = PositionEntity(lat: "none", long: "none");
  bool enabled = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
          child: Icon(
            Icons.map_outlined,
            size: 24.r,
            color: Theme.of(context).colorScheme.primary,
          ),
        ).asGlass(
          frosted: true,
          blurX: 18,
          blurY: 18,
          tintColor: Theme.of(
            context,
          ).colorScheme.primary.withValues(alpha: 0.9),
          clipBorderRadius: BorderRadius.circular(12.r),
          border: Theme.of(context).defaultBorderSide,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          child: BlocProvider<GetPositionBloc>(
            create: (context) => getItInstance<GetPositionBloc>(),
            child: BlocListener<GetPositionBloc, GetPositionState>(
              listener: (context, getPositionState) {
                print("get position state: //$getPositionState");
                getPositionState.when(
                  initial: () {},
                  loading: () {},
                  locationPermissionDenied: () async {
                    showMessage(
                      message: LocaleKeys.common_youMustAcceptLocationPermission
                          .tr(),
                      context: context,
                    );

                    await Geolocator.requestPermission();
                    requestLocationPermissionCounter++;
                    if (requestLocationPermissionCounter >= 2) {
                      await Geolocator.openAppSettings();
                    }
                  },
                  locationPermissionDeniedForever: () async {
                    showMessage(
                      message: LocaleKeys
                          .common_youDeniedLocationPermissionForever
                          .tr(),
                      context: context,
                    );

                    await Geolocator.requestPermission();
                    requestLocationPermissionCounter++;
                    await Geolocator.openAppSettings();
                  },
                  locationDisabled: () async {
                    showMessage(
                      message: LocaleKeys.common_youMustEnableLocationServices
                          .tr(),
                      context: context,
                    );

                    await Geolocator.openAppSettings();
                    await Geolocator.openLocationSettings();
                  },
                  got: (newPositionEntity) {
                    setState(() {
                      positionEntity = positionEntity.copyWith(
                        lat: newPositionEntity?.lat,
                        long: newPositionEntity?.long,
                      );
                      widget.onLocationChanged?.call(positionEntity);
                    });
                    requestLocationPermissionCounter = 0;
                  },
                  error: () {
                    showMessage(
                      message: LocaleKeys.common_anErrorHasOccurs.tr(),
                      context: context,
                    );
                  },
                );
              },
              child: Builder(
                builder: (bContext) {
                  return SizedBox(
                    height: 40.h,
                    width: 200.w,
                    child: ElevatedButton.icon(
                      style: Theme.of(context).elevatedButtonTheme.style
                          ?.copyWith(
                            padding: WidgetStatePropertyAll(EdgeInsets.zero),
                          ),
                      onPressed: enabled
                          ? () {
                              bContext.read<GetPositionBloc>().add(
                                GetPositionEvent.get(),
                              );
                            }
                          : null,
                      label: Text(
                        LocaleKeys.profilePage_setYourLocation.tr(),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
                          fontSize: 16.sp,
                        ),
                      ),
                      icon: BlocBuilder<GetPositionBloc, GetPositionState>(
                        builder: (context, state) {
                          if (state is GetPositionStateLoading) {
                            return SizedBox(
                              width: 20.w,
                              height: 20.h,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            );
                          } else if (state is GetPositionStateInitial) {
                            return Icon(
                              (positionEntity.lat != "none" &&
                                      positionEntity.long != "none")
                                  ? Icons.check
                                  : Icons.location_on,
                              color: Colors.white,
                            );
                          } else if (state is GetPositionStateGot) {
                            return Icon(
                              (positionEntity.lat != "none" &&
                                      positionEntity.long != "none")
                                  ? Icons.check
                                  : Icons.location_on,
                              color: Colors.white,
                            );
                          } else {
                            return Icon(
                              (positionEntity.lat != "none" &&
                                      positionEntity.long != "none")
                                  ? Icons.check
                                  : Icons.location_on,
                              color: Colors.white,
                            );
                          }
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        SizedBox(
          width: 40.w,
          height: 40.h,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                enabled = !enabled;
              });
              widget.onEnabledChanged(enabled);
            },
            style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              backgroundColor: WidgetStatePropertyAll(Colors.transparent),
              shadowColor: WidgetStatePropertyAll(Colors.transparent),
              padding: WidgetStatePropertyAll(EdgeInsets.zero),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  side: Theme.of(context).defaultBorderSide.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),
            child:
                Container(
                  width: 40.w,
                  height: 40.h,
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Icon(
                      Icons.edit_outlined,
                      size: 20.sp,
                      color: Theme.of(context).textTheme.labelLarge?.color,
                    ),
                  ),
                ).asGlass(
                  frosted: true,
                  blurX: 18,
                  blurY: 18,
                  tintColor: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.9),
                  clipBorderRadius: BorderRadius.circular(12.r),
                  border: Theme.of(context).defaultBorderSide.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
