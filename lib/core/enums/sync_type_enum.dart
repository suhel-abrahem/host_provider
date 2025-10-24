enum SyncTypeEnum {
  always,
  oneHour,
  oneDay,
  oneWeek,
  oneMonth,
  oneYear,
  never,
  custom
}

extension SyncTypeEnumExtension on SyncTypeEnum {
  String get formattedValue {
    // Get the name of the enum value
    String value = name;

    // Add space before each uppercase letter except the first one
    String formatted =
        value.replaceAllMapped(RegExp(r'([A-Z])'), (Match match) {
      return ' ${match.group(0)}';
    });

    // Capitalize the first letter
    return formatted[0].toUpperCase() + formatted.substring(1);
  }
}
