import '../enums/assets_type_enum.dart';

String get assetsPath {
  return 'assets/';
}

String get lottiesPath {
  return 'lotties/';
}

String get imagePath {
  return "images/";
}

String get iconPath {
  return "icons/";
}

class LottiesName {
  static const String noInternet = "no_Internet.json";
  static const String error = "error.json";
  static const String noData = "no_data.json";
  static const String unAuthorized = "no_connection.json";
}

class ImagesName {
  static String loginImage = 'loginImage.svg';
}

class IconsName {}

String getAssetsPath({
  required String assetsName,
  required AssetsType assetsType,
}) {
  String output = '';
  switch (assetsType) {
    case AssetsType.lotties:
      output = '$assetsPath$lottiesPath$assetsName';
    case AssetsType.image:
      output = '$assetsPath$imagePath$assetsName';
    case AssetsType.icon:
      output = '$assetsPath$iconPath$assetsName';
  }
  return output;
}
