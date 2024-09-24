import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_superhero/domain/model/superhero.dart';
import 'package:test_superhero/domain/repository/superhero_repository.dart';

part 'hela_cubit.freezed.dart';

@injectable
class HelaCubit extends Cubit<HelaCubitState> {
  final SuperheroRepository _superheroRepository;

  HelaCubit(
    this._superheroRepository,
  ) : super(const HelaCubitState.loading());

  Future<void> getHelaInfo() async {
    try {
      final hela = await _superheroRepository.getHelaInfo();
      emit(HelaCubitState.ready(hela));
    } catch (error) {
      emit(HelaCubitState.error(error.toString()));
    }
  }
}

@freezed
class HelaCubitState with _$HelaCubitState {
  const factory HelaCubitState.loading() = _Loading;

  const factory HelaCubitState.ready(Superhero superhero) = _Ready;
  
  const factory HelaCubitState.error(String error) = _Error;
}
