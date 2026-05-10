import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '/config/route/routes_manager.dart';
import '/core/dependencies_injection.dart';
import '/core/resource/main_page/main_page.dart';
import '/core/util/helper/helper.dart';
import '/features/otp_page/presentation/pages/otp_page_page.dart';
import '/features/profile_page/data/models/reset_password/reset_password_model.dart';
import '/features/profile_page/data/models/reset_password/verify_otp_model.dart';
import '/features/profile_page/presentation/bloc/reset_password_bloc.dart';
import '/features/profile_page/presentation/widgets/reset_password/request_password_reset_widget.dart';
import '/features/profile_page/presentation/widgets/reset_password/reset_password_widget.dart';
import '/features/profile_page/presentation/widgets/reset_password/verify_otp_widget.dart';
import '/generated/locale_keys.g.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  String? pageTitle;

  int currentIndex = 0;
  VerifyOtpModel? verifyOtpModel = VerifyOtpModel();
  String? resetToken;
  String? identifier;
  String? resentVia;
  @override
  void initState() {
    pageTitle = LocaleKeys.profilePage_requestPasswordReset.tr();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      Builder(
        builder: (context) {
          return RequestPasswordResetWidget(
            onIdentifierChanged: (value) {
              setState(() {
                identifier = value;
              });
            },
            onChanged: (value) {
              setState(() {
                currentIndex = 1;

                verifyOtpModel = VerifyOtpModel(
                  reset_via: resentVia,
                  user_id: value?.user_id,
                  acceptLanguage: Helper.getCountryCode(context),
                );
              });
            },
            onResentViaCallback: (value) {
              resentVia = value;
            },
          );
        },
      ),
      VerifyOtpWidget(
        identifier: identifier,
        otpModel: verifyOtpModel,
        onVerified: (value) {
          setState(() {
            currentIndex = 2;
            pageTitle = LocaleKeys.profilePage_resetPassword.tr();
            verifyOtpModel = verifyOtpModel;
            resetToken = value?.reset_token;
          });
        },
      ),
      ResetPasswordWidget(
        resetToken: resetToken,
        onReset: (value) {
          context.go(RoutesPath.loginPage);
        },
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle ?? ""),
        centerTitle: true,
        leading: BackButton(
          color: Theme.of(context).textTheme.labelLarge?.color,
          onPressed: () {
            if (context.canPop()) context.pop();
          },
        ),
      ),
      body: AnimatedSwitcher(
        duration: 600.ms,
        transitionBuilder: (child, animation) {
          final slide = Tween<Offset>(
            begin: const Offset(0.2, 0),
            end: Offset.zero,
          ).animate(animation);
          return SlideTransition(
            position: slide,
            child: FadeTransition(opacity: animation, child: child),
          );
        },
        child: pages[currentIndex],
      ),
    );
  }
}
