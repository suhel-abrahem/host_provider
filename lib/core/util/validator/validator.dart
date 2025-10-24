class Validator {
  static const String requiredField = '*';
  static const String emailExample = 'example@example.example';
  static const String emailRegex =
      r'^[a-zA-Z0-9_\-\.%+]+@[a-zA-Z]+\.[a-zA-Z]{2,}$';
  static const String passwordRegex =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[.,!@#])[a-zA-Z0-9.,!@#]{4,}$';
  static const String numberRegex = r'^[0-9]';
  static const String stringRegex = r'^[a-zA-z]';
}
