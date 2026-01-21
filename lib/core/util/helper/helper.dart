import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../constants/font_constants.dart';

import '../../../generated/locale_keys.g.dart';
import '../../constants/language_constant.dart';

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
        : context.locale.languageCode;
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

      case 'cancelled':
      case 'rejected':
        return Theme.of(context).colorScheme.error;
      default:
        return Theme.of(context).colorScheme.error;
    }
  }

  static String? getStatusName(String? status) {
    switch (status?.toLowerCase()) {
      case 'pending':
        return LocaleKeys.bookingPage_pending.tr();
      case 'confirmed':
        return LocaleKeys.bookingPage_accepted.tr();
      case 'in_progress':
        return LocaleKeys.bookingPage_inProgress.tr();
      case 'completed':
        return LocaleKeys.bookingPage_completed.tr();
      case 'cancelled':
        return LocaleKeys.bookingPage_canceled.tr();
      case "rejected":
        return LocaleKeys.bookingPage_rejected.tr();
      default:
        return null;
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

  static String formatPrice(int? price) {
    if (price == null) return "0";
    return price
        .toStringAsFixed(0)
        .replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]},',
        );
  }

  static double? monthNumberFromName(String? monthNumber) {
    double? month = double.tryParse(monthNumber ?? '');
    if (month == null) {
      return null;
    } else if (month < 1) {
      return 0;
    }
    return (month) - 1;
  }

  static bool isDateNew(DateTime? dateToCheck) {
    DateTime beforeHour = DateTime.now().subtract(const Duration(hours: 1));
    if (dateToCheck == null) return false;
    return dateToCheck.isAfter(beforeHour);
  }

  static bool isDateToday(DateTime? dateToCheck) {
    DateTime now = DateTime.now();
    if (dateToCheck == null) return false;
    return dateToCheck.day == now.day &&
        dateToCheck.month == now.month &&
        dateToCheck.year == now.year;
  }
}
