import 'package:test_superhero/domain/model/enum/theme_type.dart';

abstract class SettingsRepository {
  Future<void> setThemeMode(ThemeType type);
  ThemeType getThemeMode();
}
