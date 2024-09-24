enum ThemeType {
  light,
  dark,
}

extension ThemeTypeExtension on ThemeType {
  String get toStringTheme {
    return switch (this) {
        ThemeType.dark => 'Темная тема',
        ThemeType.light => 'Светлая тема',
      };
  }
}
