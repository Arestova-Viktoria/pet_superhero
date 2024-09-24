import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:test_superhero/domain/repository/locale_repository.dart';

@injectable
class LocaleCubit extends Cubit<String?> {
  static const List<String> locales = [
    'ru',
    'en',
    'it',
  ];

  final LocaleRepository _localeRepository;

  LocaleCubit(this._localeRepository) : super(_localeRepository.getLocale());

  Future<void> setLocale(String locale) async {
    await _localeRepository.setLocale(locale);
    emit(locale);
  }

  Future<void> nextLocale() async {
    final currentLocale = _localeRepository.getLocale();
    String newLocale = locales.first;
    if (currentLocale != null) {
      final index = locales.indexOf(currentLocale);
      if (index != locales.length - 1) {
        newLocale = locales[index + 1];
      }
    }
    await _localeRepository.setLocale(newLocale);
    emit(newLocale);
  }
}
