import 'package:injectable/injectable.dart';
import 'package:test_superhero/data/source/sp_source.dart';
import 'package:test_superhero/domain/repository/locale_repository.dart';

@LazySingleton(as: LocaleRepository)
class LocaleDataRepository extends LocaleRepository {
  final SpSource _spSource;

  LocaleDataRepository(this._spSource);

  @override
  String? getLocale() {
    return _spSource.getLocale();
  }

  @override
  Future<void> setLocale(String locale) {
    return _spSource.setLocale(locale);
  }
}
