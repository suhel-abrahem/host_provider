import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '/core/constants/font_constants.dart';
import '/core/dependencies_injection.dart';
import '/core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import '/features/profile_page/data/models/reset_password/reset_password_model.dart';
import '/features/profile_page/data/models/reset_password/verify_otp_model.dart';
import '/features/profile_page/domain/entities/reset_password/verify_otp_entity.dart';
import '/features/profile_page/presentation/bloc/reset_password_bloc.dart';
import '/generated/locale_keys.g.dart';

import '../../../../../config/app/app_preferences.dart';
import '../../../../../config/route/routes_manager.dart';
import '../../../../../core/resource/custom_widget/custom_input_field/custom_input_field.dart';
import '../../../../login_page/domain/entities/login_state_entity.dart';

class ResetPasswordWidget extends StatelessWidget {
  final ValueChanged<void>? onReset;
  final String? resetToken;

  const ResetPasswordWidget({super.key, this.onReset, this.resetToken});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    ResetPasswordModel? resetPasswordModel = ResetPasswordModel(
      resetToken: resetToken,
    );
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: ListView(
        children: [
          Center(child: Icon(Icons.lock_reset, size: 260)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              LocaleKeys.profilePage_resetPassword.tr(),
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontFamily: FontConstants.fontFamily(context.locale),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child: CustomInputField(
              width: 300.w,
              isRequired: true,
              obscureText: true,
              label: LocaleKeys.loginPage_password.tr(),
              onChanged: (value) {
                resetPasswordModel = resetPasswordModel?.copyWith(
                  password: value,
                );
              },
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
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomInputField(
              width: 300.w,
              isRequired: true,
              obscureText: true,
              label: LocaleKeys.loginPage_confirmPassword.tr(),
              onChanged: (value) {
                resetPasswordModel = resetPasswordModel?.copyWith(
                  confirmPassword: value,
                );
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return LocaleKeys.loginPage_passwordIsRequired.tr();
                } else if (value != resetPasswordModel?.password) {
                  return LocaleKeys.loginPage_passwordDoesNotMatch.tr();
                }
                return null;
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child: BlocProvider<ResetPasswordBloc>(
              create: (context) =>
                  getItInstance<ResetPasswordBloc>()
                    ..add(ResetPasswordEventStarted()),
              child: BlocListener<ResetPasswordBloc, ResetPasswordState>(
                listener: (context, state) {
                  print("ResetPasswordState Listener: $state");
                  state.when(
                    initial: () {},
                    loading: () {},
                    requestResetPasswordSuccess:
                        (requestResetPasswordEntity) {},
                    verifyOtpSuccess: (verifyOtpEntity) {},
                    resetPasswordSuccess: () {
                      if (onReset != null) {
                        onReset!(null);
                      }
                    },
                    error: (error) {
                      showMessage(message: error, context: context);
                    },
                    noInternet: () {},
                    unauthenticated: (error) async {
                      await getItInstance<AppPreferences>().setUserInfo(
                        loginStateEntity: LoginStateEntity(),
                      );
                      if (context.mounted) {
                        context.goNamed(RoutesPath.loginPage);
                      }
                    },
                    resentResetPasswordOtpSuccess: () {},
                  );
                },
                child: Builder(
                  builder: (context) {
                    return ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          print('resetPasswordModel: $resetPasswordModel');
                          context.read<ResetPasswordBloc>().add(
                            ResetPasswordEvent.resetPassword(
                              resetPasswordModel: resetPasswordModel,
                            ),
                          );
                        } else {
                          showMessage(
                            message: LocaleKeys
                                .profilePage_theNewPasswordAndConfirmNewPasswordFieldsDoNotMatch
                                .tr(),
                            context: context,
                          );
                        }
                      },
                      child: BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
                        builder: (context, state) {
                          if (state is ResetPasswordStateLoading) {
                            return SizedBox(
                              width: 20.w,
                              height: 20.h,
                              child: const CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            );
                          }
                          return Text(
                            LocaleKeys.profilePage_resetPassword.tr(),
                            style: Theme.of(context).textTheme.labelLarge
                                ?.copyWith(
                                  fontFamily: FontConstants.fontFamily(
                                    context.locale,
                                  ),
                                ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
