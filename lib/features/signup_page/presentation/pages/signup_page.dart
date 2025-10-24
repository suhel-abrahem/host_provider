import 'dart:ui';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

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
  final List<String> governatesList = [
    LocaleKeys.cities_baghdad,
    LocaleKeys.cities_basra,
    LocaleKeys.cities_mosul,
    LocaleKeys.cities_erbil,
    LocaleKeys.cities_sulaymaniyah,
    LocaleKeys.cities_dohuk,
    LocaleKeys.cities_najaf,
    LocaleKeys.cities_kirkuk,
    LocaleKeys.cities_kut,
    LocaleKeys.cities_diwaniyah,
    LocaleKeys.cities_karbala,
    LocaleKeys.cities_anbar,
    LocaleKeys.cities_saladin,
    LocaleKeys.cities_babylon,
    LocaleKeys.cities_samawah,
    LocaleKeys.cities_amarah,
    LocaleKeys.cities_halabja,
    LocaleKeys.cities_nasiriyah,
  ];
  final Map<String, String> governates = {
    LocaleKeys.cities_baghdad: "baghdad",
    LocaleKeys.cities_basra: "basra",
    LocaleKeys.cities_mosul: "mosul",
    LocaleKeys.cities_erbil: "erbil",
    LocaleKeys.cities_sulaymaniyah: "sulaymaniyah",
    LocaleKeys.cities_dohuk: "dohuk",
    LocaleKeys.cities_najaf: "najaf",
    LocaleKeys.cities_kirkuk: "kirkuk",
    LocaleKeys.cities_kut: "kut",
    LocaleKeys.cities_diwaniyah: "diwaniyah",
    LocaleKeys.cities_karbala: "karbala",
    LocaleKeys.cities_anbar: "anbar",
    LocaleKeys.cities_saladin: "saladin",
    LocaleKeys.cities_babylon: "babylon",
    LocaleKeys.cities_samawah: "samawah",
    LocaleKeys.cities_amarah: "amarah",
    LocaleKeys.cities_halabja: "halabja",
    LocaleKeys.cities_nasiriyah: "nasiriyah",
  };
  String? selectedGovernate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
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

                    label: LocaleKeys.loginPage_name.tr(),
                    validator: (value) {
                      if (value == null || value.toString().trim().isEmpty) {
                        return LocaleKeys.loginPage_nameIsRequired.tr();
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

                    label: LocaleKeys.loginPage_email.tr(),
                    validator: (value) {
                      if (value == null || value.toString().trim().isEmpty) {
                        return LocaleKeys.loginPage_emailIsRequired.tr();
                      }
                      if (!RegExp(Validator.emailRegex).hasMatch(value)) {
                        return Validator.emailExample;
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

                    label: LocaleKeys.loginPage_mobile.tr(),
                    validator: (value) {
                      if (value == null ||
                          value.toString().trim().isEmpty ||
                          value.toString().trim().length < 10) {
                        return LocaleKeys.loginPage_mobileIsRequired.tr();
                      }
                      if (!RegExp(Validator.numberRegex).hasMatch(value)) {
                        return LocaleKeys.loginPage_mobileIsRequired.tr();
                      }
                      return null;
                    },
                  ),
                ),
                //city input field
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.h),
                  child: GestureDetector(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (context) {
                          return BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                            child: AlertDialog(
                              backgroundColor: Theme.of(
                                context,
                              ).scaffoldBackgroundColor.withValues(alpha: 0.4),
                              title: Center(
                                child: Text(
                                  LocaleKeys.loginPage_city.tr(),
                                  style: Theme.of(context).textTheme.labelLarge
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
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
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text(
                                        governatesList[index].tr(),
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
                                          selectedGovernate =
                                              governatesList[index].tr();
                                        });
                                        Navigator.pop(context);
                                      },
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      const Divider(height: 1),
                                  itemCount: governatesList.length,
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: AbsorbPointer(
                      child: CustomInputField(
                        key: ValueKey(selectedGovernate),
                        width: 300.w,
                        isRequired: true,
                        initialValue: selectedGovernate,
                        label: LocaleKeys.loginPage_city.tr(),
                        validator: (value) {
                          if (value == null ||
                              value.toString().trim().isEmpty) {
                            return LocaleKeys.loginPage_cityIsRequired.tr();
                          }

                          return null;
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

                    label: LocaleKeys.loginPage_address.tr(),
                    validator: (value) {
                      if (value == null || value.toString().trim().isEmpty) {
                        return LocaleKeys.loginPage_addressIsRequired.tr();
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return LocaleKeys.loginPage_passwordIsRequired.tr();
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return LocaleKeys.loginPage_passwordIsRequired.tr();
                      }

                      return null;
                    },
                  ),
                ),
                // date of birth input field
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(vertical: 5.h),
                  child: GestureDetector(
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      ).then((selectedDate) {
                        if (selectedDate != null) {
                          setState(() {
                            selectedDateOfBirth = selectedDate;
                            birthDate = DateFormat(
                              'yyyy-MM-dd',
                            ).format(selectedDate);
                          });
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
                            return LocaleKeys.loginPage_dateOfBirthIsRequired
                                .tr();
                          }

                          return null;
                        },
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: SizedBox(
                    width: 300.w,
                    height: 50.h,
                    child: ElevatedButton(
                      style: Theme.of(context).elevatedButtonTheme.style
                          ?.copyWith(
                            backgroundColor: WidgetStatePropertyAll(
                              Theme.of(context).colorScheme.primary,
                            ),
                          ),
                      onPressed: () {},
                      child: Text(
                        LocaleKeys.loginPage_signUp.tr(),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
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
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
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
    );
  }
}
