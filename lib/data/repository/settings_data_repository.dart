import 'package:injectable/injectable.dart';
import 'package:test_superhero/data/source/sp_source.dart';
import 'package:test_superhero/domain/model/enum/theme_type.dart';
import 'package:test_superhero/domain/repository/settings_repository.dart';

@LazySingleton(as: SettingsRepository)
class SettingsDataRepository extends SettingsRepository {
  final SpSource _spSource;

  SettingsDataRepository(this._spSource);

  @override
  ThemeType getThemeMode() {
    return _spSource.getThemeMode();
  }

  @override
  Future<void> setThemeMode(ThemeType type) async {
    await _spSource.setThemeMode(type);
  }
}
