import 'dart:convert';

import '../../features/login_page/domain/entities/login_state_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/constants/language_constant.dart';
import '../../core/constants/shared_preferences_keys.dart';
import '../../features/signup_page/domain/entities/signup_info_entity.dart';

class AppPreferences {
  late final SharedPreferences _sharedPreferences;
  AppPreferences(SharedPreferences sharedPreferences)
    : _sharedPreferences = sharedPreferences;
  setLanguage({String? languageCode}) {
    _sharedPreferences.setString(
      SharedPreferencesKeys.appLanguageKey,
      languageCode ?? LanguageConstant.en,
    );
  }

  String? getLanguage() {
    return _sharedPreferences.getString(SharedPreferencesKeys.appLanguageKey);
  }

  setAppTheme({bool? isDarkTheme}) {
    _sharedPreferences.setBool(
      SharedPreferencesKeys.appThemeKey,
      isDarkTheme ?? false,
    );
  }

  bool? getAppTheme() {
    return _sharedPreferences.getBool(SharedPreferencesKeys.appThemeKey);
  }

  setDataLocale({required List<String?>? data, required String? key}) {
    _sharedPreferences.setStringList(
      key ?? "",
      (data ?? [""]).whereType<String>().toList(),
    );
  }

  List<String?>? getDataLocale({String? key}) {
    return _sharedPreferences.getStringList(key ?? "");
  }

  bool? isFirstUse() {
    return _sharedPreferences.getBool(SharedPreferencesKeys.isFirstUseKey) ??
        false;
  }

  setFirstUse({required bool isFirstUse}) {
    _sharedPreferences.setBool(SharedPreferencesKeys.isFirstUseKey, isFirstUse);
  }

  setUserInfo({required LoginStateEntity? loginStateEntity}) async {
    await _sharedPreferences.setString(
      SharedPreferencesKeys.loginStateKey,
      jsonEncode(loginStateEntity),
    );
  }

  LoginStateEntity? getUserInfo() {
    String? jsonString = _sharedPreferences.getString(
      SharedPreferencesKeys.loginStateKey,
    );
    return LoginStateEntity.fromJson(jsonDecode(jsonString ?? "{}"));
  }

  setUserSignUpInfo({required SignupInfoEntity? signupEntity}) async {
    await _sharedPreferences.setString(
      SharedPreferencesKeys.signupInfoKey,
      jsonEncode(signupEntity),
    );
  }

  SignupInfoEntity? getSignupInfo() {
    String? stringJson = _sharedPreferences.getString(
      SharedPreferencesKeys.signupInfoKey,
    );
    return SignupInfoEntity.fromJson(jsonDecode(stringJson ?? ""));
  }
}
