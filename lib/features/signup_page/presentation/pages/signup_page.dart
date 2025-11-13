import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:hosta_provider/config/app/app_preferences.dart';
import 'package:hosta_provider/config/theme/app_theme.dart';

import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import 'package:hosta_provider/core/util/helper/helper.dart';
import 'package:hosta_provider/features/signup_page/data/models/city_model.dart';
import 'package:hosta_provider/features/signup_page/data/models/country_model.dart';
import 'package:hosta_provider/features/signup_page/data/models/signup_model.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/city_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/country_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/position_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/signup_error_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/signup_info_entity.dart';
import 'package:hosta_provider/features/signup_page/presentation/bloc/get_cities_bloc.dart';
import 'package:hosta_provider/features/signup_page/presentation/bloc/get_countries_bloc.dart';
import 'package:hosta_provider/features/signup_page/presentation/bloc/get_position_bloc.dart';
import 'package:hosta_provider/features/signup_page/presentation/bloc/signup_bloc_bloc.dart';
import 'package:restart/restart.dart';

import '../../../../config/route/routes_manager.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/enums/assets_type_enum.dart';
import '../../../../core/resource/assets_manager.dart';
import '../../../../core/resource/custom_widget/custom_input_field/custom_input_field.dart';
import '../../../../core/resource/validator.dart';
import '../../../../generated/locale_keys.g.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String? birthDate;
  DateTime? selectedDateOfBirth;
  List<CountryEntity?>? countryEntity;
  int? selectedCountryId;
  String? selectedCountry;
  String? selectedGovernment;
  String? selectedGovernmentId;
  List<CityEntity?>? governmentList;
  List<CountryEntity?>? countriesList;
  bool? canAccessAddress = false;
  String? acceptLanguage;
  PositionEntity? positionEntity;
  int requestLocationPermissionCounter = 0;
  SignupModel? signupModel = SignupModel();
  bool? isSignupButtonLoading = false;
  bool? isResponseHaveError = false;
  List errors = [];
  GlobalKey<FormState> formKey = GlobalKey();
  // Future<void> getLocationPermissionState() async {
  //   if ((await Permission.locationWhenInUse.serviceStatus.isEnabled)) {
  //     canAccessAddress = true;
  //   } else {
  //     canAccessAddress = false;
  //   }
  // }

  @override
  void initState() {
    requestLocationPermissionCounter = 0;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    //getLocationPermissionState();
    acceptLanguage = Helper.getCountryCode(context);
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant SignupPage oldWidget) {
    // getLocationPermissionState();
    acceptLanguage = Helper.getCountryCode(context);
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getItInstance<GetPositionBloc>()..add(GetPositionEvent.get()),
        ),
        BlocProvider(
          create: (context) =>
              getItInstance<SignupBlocBloc>()
                ..add(SignupBlocEvent.signupStartEvent()),
        ),
      ],
      child: Builder(
        builder: (context) {
          return BlocListener<GetPositionBloc, GetPositionState>(
            listener: (context, getPositionState) {
              print("getPositionState:$getPositionState");
              getPositionState.when(
                initial: () {
                  showMessage(message: "ini", context: context);
                  setState(() {
                    isSignupButtonLoading = false;
                  });
                },
                loading: () {
                  setState(() {
                    isSignupButtonLoading = true;
                  });
                },
                locationPermissionDenied: () async {
                  showMessage(
                    message: LocaleKeys.common_youMustAcceptLocationPermission
                        .tr(),
                    context: context,
                  );
                  setState(() {
                    isSignupButtonLoading = false;
                  });
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
                  setState(() {
                    isSignupButtonLoading = false;
                  });
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
                  setState(() {
                    isSignupButtonLoading = false;
                  });
                  await Geolocator.openAppSettings();
                  await Geolocator.openLocationSettings();
                },
                got: (newPositionEntity) {
                  setState(() {
                    isSignupButtonLoading = false;
                  });
                  positionEntity = newPositionEntity;
                  requestLocationPermissionCounter = 0;
                },
                error: () {
                  setState(() {
                    isSignupButtonLoading = false;
                  });
                  showMessage(
                    message: LocaleKeys.common_anErrorHasOccurs.tr(),
                    context: context,
                  );
                },
              );
            },
            child: BlocListener<SignupBlocBloc, SignupBlocState>(
              listener: (context, state) {
                state.when(
                  initial: () => isSignupButtonLoading = false,
                  signupSignedUp: (data) async {
                    isSignupButtonLoading = false;
                    print("signUpRe:$data");
                    SignupInfoEntity? signupInfoEntity = data;
                    signupInfoEntity = signupInfoEntity?.copyWith(
                      email: signupModel?.email,
                      phoneNumber: signupModel?.phone,
                    );
                    await getItInstance<AppPreferences>().setUserSignUpInfo(
                      signupEntity: signupInfoEntity,
                    );

                    context.push(RoutesPath.otpPage);
                  },
                  loading: () => isSignupButtonLoading = true,
                  error: (message) {
                    isSignupButtonLoading = false;
                    if (message is SignupErrorEntity) {
                      isResponseHaveError = true;
                      errors = [];
                      if ((message.email?.isNotEmpty) ?? false) {
                        errors.add(LocaleKeys.loginPage_thisEmailIsTaken);
                      }
                      if ((message.phone?.isNotEmpty) ?? false) {
                        errors.add(LocaleKeys.loginPage_thisPhoneIsTaken);
                      }
                      if ((message.password?.isNotEmpty) ?? false) {
                        errors.add(
                          LocaleKeys
                              .loginPage_ThePasswordFieldMustBeAtLeast8Characters,
                        );
                      }
                    }
                    showMessage(
                      message: LocaleKeys.common_error.toString(),
                      context: context,
                    );
                  },
                );
              },
              child: Scaffold(
                body: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(vertical: 50.h),
                      child: SvgPicture.asset(
                        getAssetsPath(
                          assetsName: ImagesName.loginImage,
                          assetsType: AssetsType.image,
                        ),
                      ),
                    ),
                    Form(
                      key: formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.w,
                              vertical: 20.h,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: Text(
                                LocaleKeys.loginPage_signUp.tr(),
                                style: Theme.of(context).textTheme.labelLarge
                                    ?.copyWith(
                                      fontFamily: FontConstants.fontFamily(
                                        context.locale,
                                      ),
                                    ),
                              ),
                            ),
                          ),
                          //name input field
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: CustomInputField(
                              width: 300.w,
                              isRequired: true,
                              onChanged: (value) {
                                signupModel = signupModel?.copyWith(
                                  name: value,
                                );
                              },
                              label: LocaleKeys.loginPage_name.tr(),
                              validator: (value) {
                                if (value == null ||
                                    value.toString().trim().isEmpty) {
                                  return LocaleKeys.loginPage_nameIsRequired
                                      .tr();
                                }

                                return null;
                              },
                            ),
                          ),

                          //email input field
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: CustomInputField(
                              width: 300.w,
                              isRequired: true,
                              onChanged: (value) {
                                signupModel = signupModel?.copyWith(
                                  email: value,
                                );
                              },
                              label: LocaleKeys.loginPage_email.tr(),
                              validator: (value) {
                                if (value != null &&
                                    value.toString().trim().isNotEmpty) {
                                  if (!RegExp(
                                    Validator.emailRegex,
                                  ).hasMatch(value)) {
                                    return Validator.emailExample;
                                  } else {
                                    return null;
                                  }
                                }
                                return null;
                              },
                            ),
                          ), //mobil input field
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: CustomInputField(
                              width: 300.w,
                              isRequired: true,
                              onChanged: (value) {
                                signupModel = signupModel?.copyWith(
                                  phone: "+964$value",
                                );
                              },
                              label: LocaleKeys.loginPage_mobile.tr(),
                              validator: (value) {
                                if (value == null ||
                                    value.toString().trim().isEmpty ||
                                    value.toString().trim().length < 10) {
                                  return LocaleKeys.loginPage_mobileIsRequired
                                      .tr();
                                }
                                if (!RegExp(
                                  Validator.numberRegex,
                                ).hasMatch(value)) {
                                  return LocaleKeys.loginPage_mobileIsRequired
                                      .tr();
                                }
                                return null;
                              },
                            ),
                          ),
                          //country input field
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: BlocProvider(
                              create: (context) =>
                                  getItInstance<GetCountriesBloc>()..add(
                                    GetCountriesEvent.getCountries(
                                      CountryModel(
                                        acceptLanguage: acceptLanguage,
                                      ),
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
                                              Theme.of(
                                                context,
                                              ).defaultBorderSide,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              12.r,
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 13.w,
                                                ),
                                                child: Text(
                                                  LocaleKeys.loginPage_country
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
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 12.w,
                                                  ),
                                                  child:
                                                      LinearProgressIndicator(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        got: (List<CountryEntity?>? data) {
                                          countriesList = data;
                                          return GestureDetector(
                                            onTap: () async {
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
                                                      backgroundColor:
                                                          Theme.of(context)
                                                              .scaffoldBackgroundColor
                                                              .withValues(
                                                                alpha: 0.4,
                                                              ),
                                                      title: Center(
                                                        child: Text(
                                                          LocaleKeys
                                                              .loginPage_country
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
                                                              ),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                      content: SizedBox(
                                                        width: 300.w,
                                                        height: 300.h,
                                                        child: ListView.separated(
                                                          key: ValueKey(
                                                            countriesList,
                                                          ),
                                                          itemBuilder: (context, index) {
                                                            return ListTile(
                                                              title: Text(
                                                                countriesList?[index]
                                                                        ?.name ??
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
                                                                      countriesList?[index]
                                                                          ?.id;
                                                                });
                                                                signupModel = signupModel
                                                                    ?.copyWith(
                                                                      country_id:
                                                                          countriesList?[index]
                                                                              ?.id,
                                                                    );
                                                                Navigator.pop(
                                                                  context,
                                                                );
                                                              },
                                                            );
                                                          },
                                                          separatorBuilder:
                                                              (
                                                                context,
                                                                index,
                                                              ) =>
                                                                  const Divider(
                                                                    height: 1,
                                                                  ),
                                                          itemCount:
                                                              countriesList
                                                                  ?.length ??
                                                              1,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            child: AbsorbPointer(
                                              child: CustomInputField(
                                                key: ValueKey(selectedCountry),
                                                width: 300.w,
                                                isRequired: true,
                                                initialValue: selectedCountry,
                                                label: LocaleKeys
                                                    .loginPage_country
                                                    .tr(),
                                                validator: (value) {
                                                  if (value == null ||
                                                      value
                                                          .toString()
                                                          .trim()
                                                          .isEmpty) {
                                                    return LocaleKeys
                                                        .loginPage_countryIsRequired
                                                        .tr();
                                                  }

                                                  return null;
                                                },
                                              ),
                                            ),
                                          );
                                        },
                                        error: (String? message) =>
                                            CustomInputField(
                                              enabled: false,
                                              width: 300.w,
                                              label: LocaleKeys
                                                  .loginPage_country
                                                  .tr(),
                                              maxLines: 1,
                                              initialValue: LocaleKeys
                                                  .common_anErrorHasOccurs
                                                  .tr(),
                                            ),
                                        noInternet: () => CustomInputField(
                                          enabled: false,
                                          width: 300.w,
                                          label: LocaleKeys.loginPage_country
                                              .tr(),
                                          maxLines: 5,
                                          initialValue: LocaleKeys
                                              .common_noInternetPullDown
                                              .tr(),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          //city input field
                          Visibility(
                            visible: selectedCountryId != null,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.h),
                              child: BlocProvider(
                                create: (context) =>
                                    getItInstance<GetCitiesBloc>()..add(
                                      GetCitiesEvent.getCities(
                                        CityModel(
                                          country_id: selectedCountryId,
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
                                              onTap: () async {
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
                                                        backgroundColor:
                                                            Theme.of(context)
                                                                .scaffoldBackgroundColor
                                                                .withValues(
                                                                  alpha: 0.4,
                                                                ),
                                                        title: Center(
                                                          child: Text(
                                                            LocaleKeys
                                                                .loginPage_city
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
                                                                ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                        content: SizedBox(
                                                          width: 300.w,
                                                          height: 300.h,
                                                          child: ListView.separated(
                                                            key: ValueKey(
                                                              governmentList,
                                                            ),
                                                            itemBuilder: (context, index) {
                                                              return ListTile(
                                                                title: Text(
                                                                  governmentList?[index]
                                                                          ?.name ??
                                                                      "",
                                                                  style: Theme.of(context)
                                                                      .textTheme
                                                                      .labelLarge
                                                                      ?.copyWith(
                                                                        fontFamily: FontConstants.fontFamily(
                                                                          context
                                                                              .locale,
                                                                        ),
                                                                      ),
                                                                ),
                                                                onTap: () {
                                                                  setState(() {
                                                                    selectedGovernment =
                                                                        governmentList?[index]
                                                                            ?.name;
                                                                  });

                                                                  signupModel =
                                                                      signupModel?.copyWith(
                                                                        city_id:
                                                                            governmentList?[index]?.id,
                                                                      );

                                                                  Navigator.pop(
                                                                    context,
                                                                  );
                                                                },
                                                              );
                                                            },
                                                            separatorBuilder:
                                                                (
                                                                  context,
                                                                  index,
                                                                ) =>
                                                                    const Divider(
                                                                      height: 1,
                                                                    ),
                                                            itemCount:
                                                                governmentList
                                                                    ?.length ??
                                                                0,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: AbsorbPointer(
                                                child: CustomInputField(
                                                  key: ValueKey(
                                                    selectedGovernment,
                                                  ),
                                                  width: 300.w,
                                                  isRequired: true,
                                                  initialValue:
                                                      selectedGovernment,

                                                  maxLines: 1,
                                                  label: LocaleKeys
                                                      .loginPage_city
                                                      .tr(),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value
                                                            .toString()
                                                            .trim()
                                                            .isEmpty) {
                                                      return LocaleKeys
                                                          .loginPage_cityIsRequired
                                                          .tr();
                                                    }

                                                    return null;
                                                  },
                                                ),
                                              ),
                                            );
                                          },
                                          loading: () => Container(
                                            width: 300.w,
                                            height: 50.h,
                                            decoration: BoxDecoration(
                                              border: Border.fromBorderSide(
                                                Theme.of(
                                                  context,
                                                ).defaultBorderSide,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.r),
                                            ),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 13.w,
                                                  ),
                                                  child: Text(
                                                    LocaleKeys.loginPage_city
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
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 12.w,
                                                        ),
                                                    child:
                                                        LinearProgressIndicator(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          error: (String? message) =>
                                              CustomInputField(
                                                width: 300.w,
                                                label: LocaleKeys.loginPage_city
                                                    .tr(),
                                                enabled: false,
                                                maxLines: 2,
                                                initialValue: LocaleKeys
                                                    .common_anErrorHasOccurs
                                                    .tr(),
                                              ),
                                          noInternet: () => CustomInputField(
                                            enabled: false,
                                            width: 300.w,
                                            label: LocaleKeys.loginPage_city
                                                .tr(),
                                            maxLines: 5,
                                            initialValue: LocaleKeys
                                                .common_noInternetPullDown
                                                .tr(),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          //address input field
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: CustomInputField(
                              width: 300.w,
                              isRequired: true,
                              onChanged: (value) {
                                signupModel = signupModel?.copyWith(
                                  address: value,
                                );
                              },
                              label: LocaleKeys.loginPage_address.tr(),
                              validator: (value) {
                                if (value == null ||
                                    value.toString().trim().isEmpty) {
                                  return LocaleKeys.loginPage_addressIsRequired
                                      .tr();
                                }

                                return null;
                              },
                            ),
                          ),

                          //password input field
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: CustomInputField(
                              width: 300.w,
                              isRequired: true,
                              obscureText: true,
                              label: LocaleKeys.loginPage_password.tr(),
                              onChanged: (value) {
                                signupModel = signupModel?.copyWith(
                                  password: value,
                                );
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return LocaleKeys.loginPage_passwordIsRequired
                                      .tr();
                                }

                                return null;
                              },
                            ),
                          ),
                          //confirm password input field
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: CustomInputField(
                              width: 300.w,
                              isRequired: true,
                              obscureText: true,
                              label: LocaleKeys.loginPage_confirmPassword.tr(),
                              onChanged: (value) {
                                signupModel = signupModel?.copyWith(
                                  password_confirmation: value,
                                );
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return LocaleKeys.loginPage_passwordIsRequired
                                      .tr();
                                } else if (value != signupModel?.password) {
                                  return LocaleKeys
                                      .loginPage_passwordDoesNotMatch
                                      .tr();
                                }
                                return null;
                              },
                            ),
                          ),
                          // date of birth input field
                          Padding(
                            padding: EdgeInsetsGeometry.symmetric(
                              vertical: 5.h,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: DateTime(
                                    DateTime.now().year - 18,
                                  ),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(DateTime.now().year - 18),
                                ).then((selectedDate) {
                                  if (selectedDate != null) {
                                    setState(() {
                                      selectedDateOfBirth = selectedDate;
                                      birthDate = DateFormat(
                                        'yyyy-MM-dd',
                                      ).format(selectedDate);
                                    });
                                    signupModel = signupModel?.copyWith(
                                      dob: birthDate,
                                    );
                                  }
                                });
                              },
                              child: AbsorbPointer(
                                child: CustomInputField(
                                  key: ValueKey(birthDate),
                                  width: 300.w,
                                  isRequired: true,

                                  initialValue: birthDate,
                                  label: LocaleKeys.loginPage_dateOfBirth.tr(),
                                  validator: (value) {
                                    if (value == null ||
                                        value.toString().trim().isEmpty) {
                                      return LocaleKeys
                                          .loginPage_dateOfBirthIsRequired
                                          .tr();
                                    }

                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          AnimatedSwitcher(
                            duration: Duration(milliseconds: 300),
                            child: Visibility(
                              key: ValueKey(isResponseHaveError),
                              visible: isResponseHaveError ?? false,
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 20.h),
                                child: Column(
                                  children: [
                                    Text(
                                      "${LocaleKeys.loginPage_errors.tr()}:",
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
                                    for (String error in errors)
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12.w,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional.centerStart,
                                          child: Text(
                                            " * ${error.tr()}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge
                                                ?.copyWith(
                                                  fontFamily:
                                                      FontConstants.fontFamily(
                                                        context.locale,
                                                      ),
                                                ),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.h),
                            child: AnimatedSwitcher(
                              duration: Duration(milliseconds: 300),
                              child: SizedBox(
                                width: 300.w,
                                height: 50.h,
                                child: ElevatedButton(
                                  key: ValueKey(isSignupButtonLoading),
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style
                                      ?.copyWith(
                                        backgroundColor: WidgetStatePropertyAll(
                                          Theme.of(context).colorScheme.primary,
                                        ),
                                      ),
                                  onPressed: () {
                                    if ((formKey.currentState?.validate() ??
                                            false) &&
                                        !(isSignupButtonLoading ?? false)) {
                                      context.read<GetPositionBloc>().add(
                                        GetPositionEvent.get(),
                                      );
                                      signupModel = signupModel?.copyWith(
                                        lat: num.tryParse(
                                          positionEntity?.lat ?? "",
                                        ),
                                        lng: num.tryParse(
                                          positionEntity?.long ?? "",
                                        ),
                                        role: "Provider",
                                      );
                                      signupModel = signupModel?.copyWith(
                                        verify_via: "whatsapp",
                                      );
                                      context.read<SignupBlocBloc>().add(
                                        SignupBlocEvent.signupSignedInEvent(
                                          signupModel: signupModel,
                                        ),
                                      );
                                    }
                                  },
                                  child: (isSignupButtonLoading ?? false)
                                      ? Center(
                                          child: CircularProgressIndicator(
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.onPrimary,
                                          ),
                                        )
                                      : Text(
                                          LocaleKeys.loginPage_signUp.tr(),
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
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                LocaleKeys.loginPage_already_have_account.tr(),
                                style: Theme.of(context).textTheme.labelSmall
                                    ?.copyWith(
                                      fontFamily: FontConstants.fontFamily(
                                        context.locale,
                                      ),
                                    ),
                              ),
                              TextButton(
                                onPressed: () {
                                  context.goNamed(RoutesName.loginPage);
                                },
                                child: Text(
                                  LocaleKeys.loginPage_login.tr(),
                                  style: Theme.of(context).textTheme.labelMedium
                                      ?.copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: FontConstants.fontFamily(
                                          context.locale,
                                        ),
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
