class FormatterHelper {
  static String formatEnumName(Enum enumValue) {
    final name = enumValue.name;
    if (name.isEmpty) return name;
    return name[0].toUpperCase() + name.substring(1);
  }
}
