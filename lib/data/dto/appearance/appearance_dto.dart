import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_superhero/domain/model/appearance.dart';

part 'appearance_dto.freezed.dart';
part 'appearance_dto.g.dart';

@freezed
class AppearanceDto with _$AppearanceDto {
  const factory AppearanceDto({
    required String gender,
    required String? race,
    required List<String> height,
    required List<String> weight,
    required String eyeColor,
    required String hairColor,
  }) = _AppearanceDto;

  const AppearanceDto._();

  Appearance toDomain() => Appearance(
    gender: gender,
    race: race ?? '',
    height: height,
    weight: weight,
    eyeColor: eyeColor,
    hairColor: hairColor,
  );

  factory AppearanceDto.fromJson(Map<String, dynamic> json) =>
      _$AppearanceDtoFromJson(json);
}
