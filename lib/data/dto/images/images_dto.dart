import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_superhero/domain/model/images.dart';

part 'images_dto.freezed.dart';
part 'images_dto.g.dart';

@freezed
class ImagesDto with _$ImagesDto {
  const factory ImagesDto({
    required String xs,
    required String sm,
    required String md,
    required String lg,
  }) = _ImagesDto;

  const ImagesDto._();

  Images toDomain() => Images(
        xs: xs,
        sm: sm,
        md: md,
        lg: lg,
      );

  factory ImagesDto.fromJson(Map<String, dynamic> json) => _$ImagesDtoFromJson(json);
}
