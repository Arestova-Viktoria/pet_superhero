import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_superhero/domain/model/superhero.dart';
import 'package:test_superhero/domain/repository/superhero_repository.dart';

part 'superheroes_cubit.freezed.dart';

@injectable
class SuperheroesCubit extends Cubit<SuperheroesCubitState> {
  final SuperheroRepository _superheroRepository;

  SuperheroesCubit(this._superheroRepository)
      : super(const SuperheroesCubitState.loading());

  Future<void> getAllSuperheroesInfo() async {
    try {
      final superheroes = await _superheroRepository.getAllSuperheroesInfo();
      emit(SuperheroesCubitState.ready(superheroes));
    } catch (error) {
      emit(SuperheroesCubitState.error(error.toString()));
    }
  }
}

@freezed
class SuperheroesCubitState with _$SuperheroesCubitState {
  const factory SuperheroesCubitState.loading() = _Loading;

  const factory SuperheroesCubitState.ready(List<Superhero> superheroes) = _Ready;

  const factory SuperheroesCubitState.error(String error) = _Error;
}
