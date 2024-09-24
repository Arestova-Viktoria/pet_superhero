import 'package:injectable/injectable.dart';
import 'package:test_superhero/data/source/rest_source.dart';
import 'package:test_superhero/domain/model/superhero.dart';
import 'package:test_superhero/domain/repository/superhero_repository.dart';

@LazySingleton(as: SuperheroRepository)
class SuperheroDataRepository extends SuperheroRepository {
  final RestSource _restSource;

  SuperheroDataRepository(
    this._restSource,
  );

  @override
  Future<Superhero> getHelaInfo() {
    return _restSource.getHelaSuperhero();
  }

  @override
  Future<List<Superhero>> getAllSuperheroesInfo() {
    return _restSource.getAllSuperheroes();
  }
}
