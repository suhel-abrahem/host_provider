import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '/config/app/app_preferences.dart';
import '/core/constants/font_constants.dart';
import '/core/dependencies_injection.dart';
import '/core/resource/custom_widget/custom_input_field/custom_input_field.dart';
import '/core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import '/features/login_page/domain/entities/login_state_entity.dart';
import '/features/profile_page/data/models/reset_password/request_reset_password_model.dart';
import '/features/profile_page/domain/entities/reset_password/request_reset_password_entity.dart';
import '/features/profile_page/presentation/bloc/reset_password_bloc.dart';
import '/generated/locale_keys.g.dart';

import '../../../../../config/route/routes_manager.dart';
import '../../../../../core/resource/validator.dart';

class RequestPasswordResetWidget extends StatefulWidget {
  final ValueChanged<RequestResetPasswordEntity?>? onChanged;
  final ValueChanged<String?>? onIdentifierChanged;
  final ValueChanged<String?>? onResentViaCallback;
  const RequestPasswordResetWidget({
    super.key,
    this.onChanged,
    this.onIdentifierChanged,
    this.onResentViaCallback,
  });

  @override
  State<RequestPasswordResetWidget> createState() =>
      _RequestPasswordResetWidgetState();
}

class _RequestPasswordResetWidgetState
    extends State<RequestPasswordResetWidget> {
  RequestResetPasswordModel? requestResetPasswordModel =
      RequestResetPasswordModel(restVia: "whatsapp");
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ResetPasswordBloc>(
      create: (context) =>
          getItInstance<ResetPasswordBloc>()..add(ResetPasswordEvent.started()),
      child: BlocListener<ResetPasswordBloc, ResetPasswordState>(
        listener: (context, state) {
          print("ResetPasswordState Listener: $state");
          state.when(
            initial: () {},
            loading: () {},
            requestResetPasswordSuccess: (requestResetPasswordEntity) {
              if (widget.onChanged != null) {
                widget.onChanged!(requestResetPasswordEntity);
              }
            },
            verifyOtpSuccess: (verifyOtpEntity) {},
            resetPasswordSuccess: () {},
            error: (error) {
              showMessage(
                message: LocaleKeys.common_error.tr(),
                context: context,
              );
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
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.symmetric(vertical: 50.h),
                child: Center(child: Icon(Icons.lock_reset, size: 260.sp)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  LocaleKeys
                      .profilePage_enterYourEmailOrPhoneToResetYourPassword
                      .tr(),
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: CustomInputField(
                  width: 300.w,
                  isRequired: true,

                  label: LocaleKeys.loginPage_emailOrPhone.tr(),
                  validator: (value) {
                    String? login = value?.trim();
                    if (login == null || login.isEmpty) {
                      return LocaleKeys.loginPage_emailOrPhoneIsRequired.tr();
                    }
                    if (RegExp(Validator.numberRegex).hasMatch(login)) {
                      requestResetPasswordModel = requestResetPasswordModel
                          ?.copyWith(restVia: "whatsapp");
                      if (widget.onResentViaCallback != null) {
                        widget.onResentViaCallback!("whatsapp");
                      }
                      if (login.length < 10) {
                        return Validator.phoneExample;
                      }
                    }
                    if (RegExp(Validator.stringRegex).hasMatch(login)) {
                      requestResetPasswordModel = requestResetPasswordModel
                          ?.copyWith(restVia: "email");
                      if (widget.onResentViaCallback != null) {
                        widget.onResentViaCallback!("email");
                      }
                      if (!RegExp(Validator.emailRegex).hasMatch(login)) {
                        return Validator.emailExample;
                      }
                    }
                    return null;
                  },
                  onChanged: (newValue) {
                    String? value = newValue?.trim();
                    requestResetPasswordModel = requestResetPasswordModel
                        ?.copyWith(
                          identifier:
                              RegExp(
                                Validator.numberRegex,
                              ).hasMatch(value ?? "")
                              ? "+964${value.toString().trim()}"
                              : value.toString().trim(),
                        );
                    if (widget.onIdentifierChanged != null) {
                      widget.onIdentifierChanged!(
                        requestResetPasswordModel?.identifier,
                      );
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                child: Builder(
                  builder: (context) {
                    return ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          context.read<ResetPasswordBloc>().add(
                            ResetPasswordEvent.requestResetPassword(
                              requestResetPasswordModel:
                                  requestResetPasswordModel,
                            ),
                          );
                        } else {
                          // Show validation errors
                          showMessage(
                            message: LocaleKeys.profilePage_identifierIsRequired
                                .tr(),
                            context: context,
                          );
                        }
                      },
                      child: Text(
                        LocaleKeys.profilePage_resetPassword.tr(),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
