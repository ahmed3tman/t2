import 'package:freezed_annotation/freezed_annotation.dart';

part 'dog_image.freezed.dart';
part 'dog_image.g.dart';

@freezed
class DogImage with _$DogImage {
  const factory DogImage({required String message, required String status}) =
      _DogImage;

  factory DogImage.fromJson(Map<String, dynamic> json) =>
      _$DogImageFromJson(json);
}

enum PhotoSource { dog, cat, catGif, unsplash }
