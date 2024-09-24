import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_superhero/domain/model/enum/theme_type.dart';

@preResolve
@singleton
class SpSource {
  static const String _localeKey = 'locale';
  static const String _themeKey = 'theme';

  final SharedPreferences _preferences;

  SpSource._(this._preferences);

  @factoryMethod
  static Future<SpSource> create() async {
    final preferences = await SharedPreferences.getInstance();
    return SpSource._(preferences);
  }

  Future<void> setLocale(String locale) async {
    await _preferences.setString(_localeKey, locale);
  }

  String? getLocale() {
    return _preferences.getString(_localeKey);
  }

  Future<void> setThemeMode(ThemeType type) async {
    await _preferences.setInt(_themeKey, type.index);
  }

  ThemeType getThemeMode() {
    final int index = _preferences.getInt(_themeKey) ?? 0;
    return ThemeType.values[index];
  }
}
