import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import '/config/theme/app_theme.dart';
import '/core/util/helper/helper.dart';

import '../../../../core/constants/font_constants.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../core/resource/custom_widget/custom_input_field/custom_input_field.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../signup_page/data/models/country_model.dart';
import '../../../signup_page/domain/entities/country_entity.dart';
import '../../../signup_page/presentation/bloc/get_countries_bloc.dart';

class CountryField extends StatefulWidget {
  final ValueChanged<String?>? onCountryIdChanged;
  final String? initialCountryName;
  const CountryField({
    super.key,
    this.onCountryIdChanged,
    this.initialCountryName,
  });

  @override
  State<CountryField> createState() => _CountryFieldState();
}

class _CountryFieldState extends State<CountryField> {
  String? acceptLanguage;
  String? selectedCountry;
  int? selectedCountryId;
  bool enabled = false;
  List<CountryEntity?>? countriesList;

  @override
  Widget build(BuildContext context) {
    acceptLanguage = Helper.getCountryCode(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: BlocProvider(
        create: (context) => getItInstance<GetCountriesBloc>()
          ..add(
            GetCountriesEvent.getCountries(
              CountryModel(acceptLanguage: acceptLanguage),
            ),
          ),
        child: BlocBuilder<GetCountriesBloc, GetCountriesState>(
          builder: (context, state) {
            return AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: SizedBox(
                key: ValueKey(state),
                child: state.when(
                  initial: () => SizedBox(),
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
                            LocaleKeys.loginPage_country.tr(),
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
                  got: (List<CountryEntity?>? data) {
                    countriesList = data;
                    return GestureDetector(
                      onTap: enabled
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
                                          LocaleKeys.loginPage_country.tr(),
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
                                          key: ValueKey(countriesList),
                                          itemBuilder: (context, index) {
                                            return ListTile(
                                              title: Text(
                                                countriesList?[index]?.name ??
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
                                                  selectedCountry =
                                                      countriesList?[index]
                                                          ?.name;
                                                  selectedCountryId =
                                                      countriesList?[index]?.id;
                                                });
                                                if (widget.onCountryIdChanged !=
                                                    null) {
                                                  widget.onCountryIdChanged!(
                                                    selectedCountryId
                                                        .toString(),
                                                  );
                                                }
                                                Navigator.pop(context);
                                              },
                                            );
                                          },
                                          separatorBuilder: (context, index) =>
                                              const Divider(height: 1),
                                          itemCount: countriesList?.length ?? 1,
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
                                key: ValueKey(selectedCountry),
                                width: 200.w,
                                enabled: enabled,
                                fillColor: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer
                                    .withValues(alpha: 0.3),
                                initialValue:
                                    selectedCountry ??
                                    widget.initialCountryName ??
                                    "",
                                maxLines: 1,
                                isRequired: true,

                                label: LocaleKeys.loginPage_country.tr(),
                                validator: (value) {
                                  if (value == null ||
                                      value.toString().trim().isEmpty) {
                                    return LocaleKeys
                                        .loginPage_countryIsRequired
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
                  error: (String? message) => CustomInputField(
                    enabled: false,
                    width: 300.w,
                    label: LocaleKeys.loginPage_country.tr(),
                    maxLines: 1,
                    initialValue: LocaleKeys.common_anErrorHasOccurs.tr(),
                  ),
                  noInternet: () => CustomInputField(
                    enabled: false,
                    width: 300.w,
                    label: LocaleKeys.loginPage_country.tr(),
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
