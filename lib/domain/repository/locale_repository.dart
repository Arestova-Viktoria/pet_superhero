
abstract class LocaleRepository {
  Future<void> setLocale(String locale);
  String? getLocale();
}
