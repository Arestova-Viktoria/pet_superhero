import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:test_superhero/domain/model/enum/theme_type.dart';
import 'package:test_superhero/domain/repository/settings_repository.dart';


@injectable
class ThemeCubit extends Cubit<ThemeType> {
  final SettingsRepository _settingsRepository;

  ThemeCubit(
    this._settingsRepository,
  ) : super(_settingsRepository.getThemeMode());

  Future<void> setThemeMode(ThemeType type) async {
    await _settingsRepository.setThemeMode(type);
    emit(type);
  }
}
