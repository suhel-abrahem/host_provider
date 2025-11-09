import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosta_provider/core/constants/font_constants.dart';

import '../../../config/route/routes_manager.dart';

import '../../constants/language_constant.dart';
import '../../resource/color_manager.dart';

class Helper {
  static Locale getLocaleByCode(String languageCode) {
    switch (languageCode) {
      case 'ar':
        return LanguageConstant.arLoacle;
      case 'en':
        return LanguageConstant.enLoacle;
      case 'fa':
        return LanguageConstant.faLocale;
      default:
        return LanguageConstant.enLoacle;
    }
  }

  static String getLanguageName(String languageCode) {
    switch (languageCode) {
      case 'ar':
        return LanguageConstant.supportedLanguagesNames[0];
      case 'en':
        return LanguageConstant.supportedLanguagesNames[1];
      case 'fa':
        return LanguageConstant.supportedLanguagesNames[2];
      default:
        return LanguageConstant.supportedLanguagesNames[1];
    }
  }

  static Locale getLocaleByName(String languageName) {
    switch (languageName) {
      case LanguageConstant.arName:
        return LanguageConstant.arLoacle;
      case LanguageConstant.enName:
        return LanguageConstant.enLoacle;
      case LanguageConstant.faName:
        return LanguageConstant.faLocale;
      default:
        return LanguageConstant.enLoacle;
    }
  }

  static String? getCountryCode(BuildContext context) {
    return context.locale == LanguageConstant.faLocale
        ? "ku"
        : context.locale.countryCode;
  }

  static RichText labelText({
    String label = '',
    bool isRequired = true,
    TextStyle? labelStyle,
    bool readText = false,
  }) {
    return RichText(
      text: TextSpan(
        text: label,
        style:
            labelStyle ??
            (navigatorKey.currentContext != null
                ? (readText
                          ? Theme.of(
                              navigatorKey.currentContext!,
                            ).textTheme.labelLarge?.copyWith(
                              color: Theme.of(
                                navigatorKey.currentContext!,
                              ).colorScheme.error,
                              fontFamily: FontConstants.fontFamily(
                                navigatorKey.currentContext?.locale,
                              ),
                            )
                          : Theme.of(
                              navigatorKey.currentContext!,
                            ).textTheme.labelLarge)
                      ?.copyWith(
                        fontFamily: FontConstants.fontFamily(
                          navigatorKey.currentContext?.locale,
                        ),
                      )
                : TextStyle(
                    fontFamily: FontConstants.fontFamily(
                      navigatorKey.currentContext?.locale,
                    ),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: ColorManager.textColor,
                  )),
        children: [
          if (isRequired && label.isNotEmpty)
            TextSpan(
              text: " *",
              style: navigatorKey.currentContext != null
                  ? Theme.of(
                      navigatorKey.currentContext!,
                    ).inputDecorationTheme.errorStyle
                  : const TextStyle(color: ColorManager.error),
            ),
        ],
      ),
    );
  }

  static Color? getColorByStatus(String? status, BuildContext context) {
    switch (status?.toLowerCase()) {
      case 'pending':
        return Colors.orange;
      case 'confirmed':
        return Theme.of(context).colorScheme.primary;
      case 'in_progress':
        return Theme.of(context).colorScheme.primary;
      case 'completed':
        return Colors.green;

      case 'canceled':
        return Theme.of(context).colorScheme.error;
      default:
        return Theme.of(context).colorScheme.error;
    }
  }
}
