import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import '/config/theme/app_theme.dart';
import '/core/util/helper/helper.dart';
import '/features/signup_page/domain/entities/city_entity.dart';

import '../../../../core/constants/font_constants.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../core/resource/custom_widget/custom_input_field/custom_input_field.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../signup_page/data/models/city_model.dart';

import '../../../signup_page/domain/entities/country_entity.dart';
import '../../../signup_page/presentation/bloc/get_cities_bloc.dart';

class CityField extends StatefulWidget {
  final ValueChanged<String?>? onCityIdChanged;
  final String? initialCityName;
  final int? selectedCountryId;

  const CityField({
    super.key,
    this.onCityIdChanged,
    this.initialCityName,
    this.selectedCountryId,
  });

  @override
  State<CityField> createState() => _CityFieldState();
}

class _CityFieldState extends State<CityField> {
  String? acceptLanguage;
  String? selectedGovernment;
  int? selectedCityId;
  bool enabled = false;
  List<CityEntity?>? governmentList;
  List<CountryEntity?>? countriesList;

  @override
  Widget build(BuildContext context) {
    acceptLanguage = Helper.getCountryCode(context);
    return //city input field
    Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: BlocProvider(
        create: (context) => getItInstance<GetCitiesBloc>()
          ..add(
            GetCitiesEvent.getCities(
              CityModel(
                country_id: widget.selectedCountryId,
                acceptLanguage: acceptLanguage,
              ),
            ),
          ),
        child: BlocBuilder<GetCitiesBloc, GetCitiesState>(
          builder: (context, state) {
            return AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: SizedBox(
                child: state.when(
                  initial: () => SizedBox(),
                  got: (data) {
                    governmentList = data;
                    return GestureDetector(
                      onTap: (enabled && widget.selectedCountryId != null)
                          ? () async {
                              await showDialog(
                                context: context,
                                barrierDismissible: true,
                                builder: (context) {
                                  return BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 2,
                                      sigmaY: 2,
                                    ),
                                    child: AlertDialog(
                                      backgroundColor: Theme.of(context)
                                          .scaffoldBackgroundColor
                                          .withValues(alpha: 0.4),
                                      title: Center(
                                        child: Text(
                                          LocaleKeys.loginPage_city.tr(),
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
                                      ),
                                      content: SizedBox(
                                        width: 300.w,
                                        height: 300.h,
                                        child: ListView.separated(
                                          key: ValueKey(governmentList),
                                          itemBuilder: (context, index) {
                                            return ListTile(
                                              title: Text(
                                                governmentList?[index]?.name ??
                                                    "",
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
                                              onTap: () {
                                                setState(() {
                                                  selectedGovernment =
                                                      governmentList?[index]
                                                          ?.name;
                                                });

                                                widget.onCityIdChanged?.call(
                                                  governmentList?[index]?.id
                                                      .toString(),
                                                );

                                                Navigator.pop(context);
                                              },
                                            );
                                          },
                                          separatorBuilder: (context, index) =>
                                              const Divider(height: 1),
                                          itemCount:
                                              governmentList?.length ?? 0,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            }
                          : null,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 4.w,
                              vertical: 4.h,
                            ),
                            child: Icon(
                              Icons.public,
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
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.w,
                              vertical: 8.h,
                            ),
                            child: AbsorbPointer(
                              child: CustomInputField(
                                key: ValueKey(selectedGovernment),
                                width: 200.w,
                                enabled: enabled,
                                fillColor: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer
                                    .withValues(alpha: 0.3),
                                isRequired: true,
                                initialValue:
                                    selectedGovernment ??
                                    widget.initialCityName,

                                maxLines: 1,
                                label: LocaleKeys.loginPage_city.tr(),
                                validator: (value) {
                                  if (value == null ||
                                      value.toString().trim().isEmpty) {
                                    return LocaleKeys.loginPage_cityIsRequired
                                        .tr();
                                  }

                                  return null;
                                },
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
                              },
                              style: Theme.of(context).elevatedButtonTheme.style
                                  ?.copyWith(
                                    backgroundColor: WidgetStatePropertyAll(
                                      Colors.transparent,
                                    ),
                                    shadowColor: WidgetStatePropertyAll(
                                      Colors.transparent,
                                    ),
                                    padding: WidgetStatePropertyAll(
                                      EdgeInsets.zero,
                                    ),
                                    shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                        side: Theme.of(context)
                                            .defaultBorderSide
                                            .copyWith(
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.primary,
                                            ),
                                        borderRadius: BorderRadius.circular(
                                          12.r,
                                        ),
                                      ),
                                    ),
                                  ),
                              child:
                                  Container(
                                    width: 40.w,
                                    height: 40.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4.w,
                                      vertical: 4.h,
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Icon(
                                        Icons.edit_outlined,
                                        size: 20.sp,
                                        color: Theme.of(
                                          context,
                                        ).textTheme.labelLarge?.color,
                                      ),
                                    ),
                                  ).asGlass(
                                    frosted: true,
                                    blurX: 18,
                                    blurY: 18,
                                    tintColor: Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .withValues(alpha: 0.9),
                                    clipBorderRadius: BorderRadius.circular(
                                      12.r,
                                    ),
                                    border: Theme.of(context).defaultBorderSide
                                        .copyWith(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.primary,
                                        ),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  loading: () => Container(
                    width: 300.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      border: Border.fromBorderSide(
                        Theme.of(context).defaultBorderSide,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 13.w),
                          child: Text(
                            LocaleKeys.loginPage_city.tr(),
                            style: Theme.of(context).textTheme.labelLarge
                                ?.copyWith(
                                  fontFamily: FontConstants.fontFamily(
                                    context.locale,
                                  ),
                                ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            child: LinearProgressIndicator(),
                          ),
                        ),
                      ],
                    ),
                  ),

                  error: (String? message) => CustomInputField(
                    width: 300.w,
                    label: LocaleKeys.loginPage_city.tr(),
                    enabled: false,
                    maxLines: 2,
                    initialValue: LocaleKeys.common_anErrorHasOccurs.tr(),
                  ),
                  noInternet: () => CustomInputField(
                    enabled: false,
                    width: 300.w,
                    label: LocaleKeys.loginPage_city.tr(),
                    maxLines: 5,
                    initialValue: LocaleKeys.common_noInternetPullDown.tr(),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
