import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_superhero/domain/model/powerstats.dart';

part 'powerstats_dto.freezed.dart';
part 'powerstats_dto.g.dart';

@freezed
class PowerstatsDto with _$PowerstatsDto {
  const factory PowerstatsDto({
    required int intelligence,
    required int strength,
    required int speed,
    required int durability,
    required int power,
    required int combat,
  }) = _PowerstatsDto;

  const PowerstatsDto._();

  Powerstats toDomain() => Powerstats(
    intelligence: intelligence,
    strength: strength,
    speed: speed,
    durability: durability,
    power: power,
    combat: combat,
  );

  factory PowerstatsDto.fromJson(Map<String, dynamic> json) =>
      _$PowerstatsDtoFromJson(json);
}
