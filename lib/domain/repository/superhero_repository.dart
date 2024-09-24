import 'package:test_superhero/domain/model/superhero.dart';

abstract class SuperheroRepository {
  Future<Superhero> getHelaInfo();
  Future<List<Superhero>> getAllSuperheroesInfo();
}
