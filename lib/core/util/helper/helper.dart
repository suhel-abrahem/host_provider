import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosta_provider/core/constants/font_constants.dart';

import '../../../config/route/routes_manager.dart';

import '../../../generated/locale_keys.g.dart';
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
    required BuildContext context,
    String label = '',
    bool isRequired = true,
    TextStyle? labelStyle,
    bool readText = false,
  }) {
    return RichText(
      text: TextSpan(
        text: label,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          color: readText ? Theme.of(context).colorScheme.error : null,
          fontFamily: FontConstants.fontFamily(context.locale),
        ),

        children: [
          if (isRequired && label.isNotEmpty)
            TextSpan(
              text: " *",
              style: Theme.of(context).inputDecorationTheme.errorStyle,
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

  static String? getDayById(int? dayId) {
    switch (dayId) {
      case 0:
        return LocaleKeys.profilePage_sunday;
      case 1:
        return LocaleKeys.profilePage_monday;
      case 2:
        return LocaleKeys.profilePage_tuesday;
      case 3:
        return LocaleKeys.profilePage_wednesday;
      case 4:
        return LocaleKeys.profilePage_thursday;
      case 5:
        return LocaleKeys.profilePage_friday;
      case 6:
        return LocaleKeys.profilePage_saturday;
      default:
        return null;
    }
  }
}
