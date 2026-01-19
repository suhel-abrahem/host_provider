import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/app/app_preferences.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../core/enums/assets_type_enum.dart';
import '../../../../core/enums/login_state_enum.dart';
import '../../../../core/resource/assets_manager.dart';
import '../../../../core/resource/custom_widget/custom_input_field/custom_input_field.dart';
import '../../../../core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';

import '../../../../core/resource/socketio_service.dart/home_socket_initializer.dart';
import '../../../../core/resource/validator.dart';
import '../../../../main.dart';
import '../../data/models/login_state_model.dart';
import '../bloc/login_bloc_bloc.dart';

import '../../../../config/route/routes_manager.dart';
import '../../../../generated/locale_keys.g.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late LoginBlocBloc bloc;
  LoginStateModel loginStateModel = LoginStateModel();
  @override
  void initState() {
    super.initState();
    bloc = getItInstance<LoginBlocBloc>();
    // Delay until after the first frame to be extra safe
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bloc.add(LoginBlocEvent.loginEventStarted());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocListener<LoginBlocBloc, LoginBlocState>(
        listener: (context, state) async {
          if (state is LoginStateError) {
            showMessage(
              message: LocaleKeys.loginPage_loginFailed.tr(),
              context: context,
            );
          } else if (state is LoginStateLoaded) {
            await getItInstance<AppPreferences>().setUserInfo(
              loginStateEntity: state.loginStateEntity?.copyWith(
                loginStateEnum: LoginStateEnum.logined,
                created_at: DateTime.now().toString(),
              ),
            );
            if (getItInstance<AppPreferences>().getUserInfo()?.loginStateEnum ==
                LoginStateEnum.logined) {
              socketService.connect();
              initHomeAndChatSocketListeners();
            }
            setState(() {
              currentPath = RoutesPath.homePage;
            });
            if (context.canPop()) {
              context.pop();
            }
            context.go(RoutesPath.homePage);
          } else if (state is LoginStateUnAuthorized) {
            context.pushNamed(RoutesName.otpPage);
          }
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
                          LocaleKeys.loginPage_login.tr(),
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                fontFamily: FontConstants.fontFamily(
                                  context.locale,
                                ),
                              ),
                        ),
                      ),
                    ),
                    //email input field
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: CustomInputField(
                        width: 300.w,
                        isRequired: true,

                        label: LocaleKeys.loginPage_emailOrPhone.tr(),
                        validator: (value) {
                          String? login = value?.trim();
                          if (login == null || login.isEmpty) {
                            return LocaleKeys.loginPage_emailOrPhoneIsRequired
                                .tr();
                          }

                          if (RegExp(Validator.numberRegex).hasMatch(login)) {
                            if (login.length < 10) {
                              return Validator.phoneExample;
                            }
                          }
                          if (RegExp(Validator.stringRegex).hasMatch(login)) {
                            if (!RegExp(Validator.emailRegex).hasMatch(login)) {
                              return Validator.emailExample;
                            }
                          }
                          return null;
                        },
                        onChanged: (newValue) {
                          String? value = newValue?.trim();
                          loginStateModel = loginStateModel.copyWith(
                            login:
                                RegExp(
                                  Validator.numberRegex,
                                ).hasMatch(value ?? "")
                                ? "+964${value.toString().trim()}"
                                : value.toString().trim(),
                          );
                        },
                      ),
                    ),
                    //password input field
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
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
                        onChanged: (value) {
                          loginStateModel = loginStateModel.copyWith(
                            password: value,
                          );
                        },
                      ),
                    ),
                    //forget password button
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: TextButton(
                          onPressed: () {
                            context.pushNamed(RoutesName.resetPasswordPage);
                          },
                          child: Text(
                            LocaleKeys.loginPage_forgotPassword.tr(),
                            style: Theme.of(context).textTheme.labelSmall
                                ?.copyWith(
                                  fontFamily: FontConstants.fontFamily(
                                    context.locale,
                                  ),
                                  decoration: TextDecoration.underline,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: BlocBuilder<LoginBlocBloc, LoginBlocState>(
                        builder: (context, state) {
                          if (state is LoginStateLoading) {
                            return SizedBox(
                              width: 300.w,
                              height: 50.h,
                              child: Center(
                                child: CircularProgressIndicator(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            );
                          }
                          return SizedBox(
                            width: 300.w,
                            height: 50.h,
                            child: ElevatedButton(
                              style: Theme.of(context).elevatedButtonTheme.style
                                  ?.copyWith(
                                    backgroundColor: WidgetStatePropertyAll(
                                      Theme.of(context).colorScheme.primary,
                                    ),
                                  ),

                              onPressed: () {
                                if (formKey.currentState?.validate() ?? false) {
                                  context.read<LoginBlocBloc>().add(
                                    LoginBlocEvent.loginUserEvent(
                                      loginStateModel: loginStateModel,
                                    ),
                                  );
                                }
                              },
                              child: Text(
                                LocaleKeys.loginPage_login.tr(),
                                style: Theme.of(context).textTheme.labelLarge
                                    ?.copyWith(
                                      fontFamily: FontConstants.fontFamily(
                                        context.locale,
                                      ),
                                    ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          LocaleKeys.loginPage_no_account.tr(),
                          style: Theme.of(context).textTheme.labelSmall
                              ?.copyWith(
                                fontFamily: FontConstants.fontFamily(
                                  context.locale,
                                ),
                              ),
                        ),
                        TextButton(
                          onPressed: () {
                            context.goNamed(RoutesName.signupPage);
                          },
                          child: Text(
                            LocaleKeys.loginPage_signUp.tr(),
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
  }
}
