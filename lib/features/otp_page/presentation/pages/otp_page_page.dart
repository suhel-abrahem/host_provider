import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hosta_provider/config/app/app_preferences.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/core/enums/login_state_enum.dart';
import 'package:hosta_provider/core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import 'package:hosta_provider/core/resource/main_page/main_page.dart';
import 'package:hosta_provider/features/login_page/domain/entities/login_state_entity.dart';
import 'package:hosta_provider/features/otp_page/data/models/otp_model.dart';
import 'package:hosta_provider/features/otp_page/presentation/bloc/otp_page_bloc.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/signup_info_entity.dart';
import 'package:hosta_provider/generated/locale_keys.g.dart';
import 'package:pinput/pinput.dart';

import '../../../../config/route/routes_manager.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../login_page/presentation/bloc/login_bloc_bloc.dart';

class OtpPagePage extends StatefulWidget {
  const OtpPagePage({super.key});

  @override
  State<OtpPagePage> createState() => _OtpPagePageState();
}

class _OtpPagePageState extends State<OtpPagePage> {
  SignupInfoEntity? signupInfoEntity;
  TextEditingController otpController = TextEditingController();
  @override
  void initState() {
    signupInfoEntity = getItInstance<AppPreferences>().getSignupInfo();
    otpController.text = (signupInfoEntity?.otpEntity?.otp.toString()) ?? "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getItInstance<OtpPageBloc>()..add(OtpPageEvent.started()),
      child: BlocListener<OtpPageBloc, OtpPageState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            error: () {
              showMessage(
                message: LocaleKeys.common_error.tr(),
                context: context,
              );
            },
            loading: () {},
            verified: (data) {
              LoginStateEntity? loginStateEntity = data;
              loginStateEntity = loginStateEntity?.copyWith(
                loginStateEnum: LoginStateEnum.logined,
                created_at: DateTime.now().toString(),
              );
              getItInstance<AppPreferences>().setUserInfo(
                loginStateEntity: loginStateEntity,
              );
              context.pushNamed(RoutesName.homePage);
            },
          );
        },
        child: Scaffold(
          body: ListView(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Text(
                    LocaleKeys.otpPage_title.tr(),
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 50.h, bottom: 20.h),
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
                  padding: EdgeInsets.only(top: 20.h),
                  child: Text(
                    LocaleKeys.otpPage_enterTheCodeSentToTheNumber.tr(),
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Text(
                    signupInfoEntity?.phoneNumber ?? "",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
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
                padding: EdgeInsets.symmetric(vertical: 50.h),
                child: Center(
                  child: BlocBuilder<OtpPageBloc, OtpPageState>(
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
                          // ✅ Validation happens *on press*, not during build
                          onPressed: () {
                            context.read<OtpPageBloc>().add(
                              OtpPageEvent.verify(
                                OtpModel(
                                  otp: signupInfoEntity?.otpEntity?.otp
                                      .toString(),
                                  userId:
                                      signupInfoEntity?.signupEntity?.user_id,
                                ),
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
                  TextButton(
                    onPressed: null,
                    child: Text(
                      LocaleKeys.otpPage_resend.tr(),
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontFamily: FontConstants.fontFamily(context.locale),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
