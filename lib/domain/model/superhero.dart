import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_superhero/domain/model/appearance.dart';
import 'package:test_superhero/domain/model/images.dart';
import 'package:test_superhero/domain/model/powerstats.dart';

part 'superhero.freezed.dart';

@freezed
class Superhero with _$Superhero {
  const factory Superhero({
    required int id,
    required String name,
    required Powerstats powerstats,
    required Appearance appearance,
    required Images images,
  }) = _Superhero;
}
