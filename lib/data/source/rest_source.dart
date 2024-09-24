import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:test_superhero/data/dto/superhero/superhero_dto.dart';
import 'package:test_superhero/domain/model/superhero.dart';

@singleton
class RestSource {
  String get _helaRoute => '/id/321.json';
  String get _allSuperheroesRoute => '/all.json';

  final Dio _dio;

  RestSource._(this._dio);

  @factoryMethod
  static RestSource create() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://akabab.github.io/superhero-api/api/',
        receiveTimeout: const Duration(seconds: 40),
        sendTimeout: const Duration(seconds: 40),
        connectTimeout: const Duration(seconds: 40),
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );
    return RestSource._(dio);
  }

  Future<Superhero> getHelaSuperhero() async {
    final data = await _dio.get(_helaRoute).then(
          (value) => value.data,
        );
    return SuperheroDto.fromJson(data).toDomain();
  }

  Future<List<Superhero>> getAllSuperheroes() async {
    final data = await _dio.get(_allSuperheroesRoute).then(
          (value) => value.data as List,
        );

    List<Superhero> superheroes = data
        .map(
          (e) => SuperheroDto.fromJson(e).toDomain(),
        )
        .toList();

    return superheroes;
  }
}
