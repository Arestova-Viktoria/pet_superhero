import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_superhero/data/dto/appearance/appearance_dto.dart';
import 'package:test_superhero/data/dto/images/images_dto.dart';
import 'package:test_superhero/data/dto/powerstats/powerstats_dto.dart';
import 'package:test_superhero/domain/model/appearance.dart';
import 'package:test_superhero/domain/model/images.dart';
import 'package:test_superhero/domain/model/powerstats.dart';
import 'package:test_superhero/domain/model/superhero.dart';

part 'superhero_dto.freezed.dart';
part 'superhero_dto.g.dart';

@freezed
class SuperheroDto with _$SuperheroDto {
  const factory SuperheroDto({
    required int id,
    required String name,
    required PowerstatsDto powerstats,
    required AppearanceDto appearance,
    required ImagesDto images,
  }) = _SuperheroDto;

  const SuperheroDto._(); //для обр к полям

  Superhero toDomain() => Superhero(
        id: id,
        name: name,
        powerstats: powerstats.toDomain(),
        appearance: appearance.toDomain(),
        images: images.toDomain(),
      );

  factory SuperheroDto.fromJson(Map<String, dynamic> json) =>
      _$SuperheroDtoFromJson(json);
}
