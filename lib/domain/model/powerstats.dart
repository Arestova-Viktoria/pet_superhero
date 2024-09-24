import 'package:freezed_annotation/freezed_annotation.dart';

part 'powerstats.freezed.dart';

@freezed
class Powerstats with _$Powerstats{
  const factory Powerstats({
    required int intelligence,
    required int strength,
    required int speed,
    required int durability,
    required int power,
    required int combat,
  }) = _Powerstats;

}
