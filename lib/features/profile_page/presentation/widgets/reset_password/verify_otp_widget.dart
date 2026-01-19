import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:go_router/go_router.dart';
import '/features/profile_page/data/models/reset_password/verify_otp_model.dart';
import '/features/profile_page/domain/entities/reset_password/verify_otp_entity.dart';
import '/features/profile_page/presentation/bloc/reset_password_bloc.dart';
import 'package:pinput/pinput.dart';

import '../../../../../config/app/app_preferences.dart';
import '../../../../../config/route/routes_manager.dart';
import '../../../../../core/constants/font_constants.dart';
import '../../../../../core/dependencies_injection.dart';
import '../../../../../core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../../../login_page/domain/entities/login_state_entity.dart';
import '../../../../login_page/presentation/bloc/login_bloc_bloc.dart';
import '../../../data/models/reset_password/resend_reset_password_otp_model.dart';

class VerifyOtpWidget extends StatefulWidget {
  final String? identifier;
  final ValueChanged<VerifyOtpEntity?>? onVerified;
  final ValueChanged<void>? onResent;
  final VerifyOtpModel? otpModel;
  final ValueChanged<String?>? onTokenChanged;
  const VerifyOtpWidget({
    super.key,
    this.identifier,
    this.onVerified,
    this.otpModel,
    this.onResent,
    this.onTokenChanged,
  });

  @override
  State<VerifyOtpWidget> createState() => _VerifyOtpWidgetState();
}

class _VerifyOtpWidgetState extends State<VerifyOtpWidget> {
  TextEditingController otpController = TextEditingController();
  VerifyOtpModel? otpModel = VerifyOtpModel();
  Duration duration = const Duration(seconds: 60);
  bool isTimerCompleted = false;
  @override
  void initState() {
    otpModel = widget.otpModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getItInstance<ResetPasswordBloc>()..add(ResetPasswordEvent.started()),
      child: BlocListener<ResetPasswordBloc, ResetPasswordState>(
        listener: (context, state) {
          print("ResetPasswordState Listener: ${state}");
          state.maybeWhen(
            initial: () {},
            error: (e) {
              print("Error in VerifyOtpWidget: ${e}");
              showMessage(
                message: LocaleKeys.common_error.tr(),
                context: context,
              );
            },
            loading: () {},
            verifyOtpSuccess: (data) {
              if (widget.onVerified != null) {
                widget.onVerified!(data);
              }
              if (widget.onTokenChanged != null) {
                widget.onTokenChanged!(data?.reset_token);
              }
            },
            unauthenticated: (error) async {
              await getItInstance<AppPreferences>().setUserInfo(
                loginStateEntity: LoginStateEntity(),
              );
              if (context.mounted) {
                context.goNamed(RoutesPath.loginPage);
              }
            },
            resentResetPasswordOtpSuccess: () {
              showMessage(
                message: LocaleKeys.common_success.tr(),
                context: context,
              );
            },
            orElse: () {},
          );
        },
        child: Scaffold(
          body: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
                child: Center(
                  child: Icon(
                    Icons.verified_user,
                    size: 150.sp,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Text(
                    LocaleKeys.otpPage_verification.tr(),
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                      fontSize: 32.sp,
                    ),
                  ),
                ),
              ),

              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                  child: Text(
                    otpModel?.reset_via == "whatsapp"
                        ? LocaleKeys.otpPage_enterTheCodeSentToTheNumber.tr()
                        : LocaleKeys.profilePage_enterTheOtpSentToYourEmail
                              .tr(),
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                      fontSize: 14.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                  child: Text(
                    widget.identifier ?? "",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                      fontSize: 14.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.h),
                child: Center(
                  child: Pinput(
                    length: 6,
                    onChanged: (value) {
                      otpModel = otpModel?.copyWith(otp: value);
                    },
                    controller: otpController,
                    defaultPinTheme: PinTheme(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.h),
                child: Center(
                  child: BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
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
                            context.read<ResetPasswordBloc>().add(
                              ResetPasswordEvent.verifyOtp(
                                verifyOtpModel: otpModel,
                              ),
                            );
                          },
                          child: Text(
                            LocaleKeys.otpPage_verify.tr(),
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.otpPage_didntReceiveCode.tr(),
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                  ),
                  if (isTimerCompleted)
                    Builder(
                      builder: (context) {
                        return TextButton(
                          onPressed: () {
                            print(
                              "Resend OTP pressed: ${otpModel?.user_id}, ${otpModel?.reset_via}",
                            );
                            context.read<ResetPasswordBloc>().add(
                              ResetPasswordEvent.resentResetPasswordOtp(
                                resendResetPasswordOtpModel:
                                    ResendResetPasswordOtpModel(
                                      user_id: otpModel?.user_id,
                                      reset_via: otpModel?.reset_via,
                                    ),
                              ),
                            );
                            setState(() {
                              isTimerCompleted = false;
                            });
                          },
                          child: Text(
                            LocaleKeys.otpPage_resend.tr(),
                            style: Theme.of(context).textTheme.labelMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: FontConstants.fontFamily(
                                    context.locale,
                                  ),
                                  decoration: TextDecoration.underline,
                                ),
                          ),
                        );
                      },
                    ),
                  !isTimerCompleted
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              child: Text(
                                LocaleKeys.otpPage_resendIn.tr(),
                                style: Theme.of(context).textTheme.labelSmall
                                    ?.copyWith(
                                      fontFamily: FontConstants.fontFamily(
                                        context.locale,
                                      ),
                                    ),
                              ),
                            ),
                            TimerCountdown(
                              enableDescriptions: false,
                              format: CountDownTimerFormat.secondsOnly,
                              endTime: DateTime.now().add(duration),
                              onEnd: () {
                                setState(() {
                                  isTimerCompleted = true;
                                });
                              },
                              timeTextStyle: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                    fontFamily: FontConstants.fontFamily(
                                      context.locale,
                                    ),
                                  ),
                            ),
                          ],
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
