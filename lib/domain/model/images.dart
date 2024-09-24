
import 'package:freezed_annotation/freezed_annotation.dart';

part 'images.freezed.dart';

@freezed
class Images with _$Images{
  const factory Images({
    required String xs,
    required String sm,
    required String md,
    required String lg,
  }) = _Images;
}