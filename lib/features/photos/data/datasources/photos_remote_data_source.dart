import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../models/dog_image.dart';

abstract class PhotosRemoteDataSource {
  Future<DogImage> fetchDogImage();
  Future<String> fetchCatImage();
  Future<String> fetchCatGif();
  Future<String> fetchUnsplashImage();
}

@Injectable(as: PhotosRemoteDataSource)
class PhotosRemoteDataSourceImpl implements PhotosRemoteDataSource {
  final Dio _dio;

  PhotosRemoteDataSourceImpl(this._dio);

  @override
  Future<DogImage> fetchDogImage() async {
    try {
      final response = await _dio.get(
        'https://dog.ceo/api/breeds/image/random',
      );
      return DogImage.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception('Failed to fetch dog image: ${e.message}');
    }
  }

  @override
  Future<String> fetchCatImage() async {
    try {
      // For direct image URLs, we return the full URL
      return 'https://cataas.com/cat?timestamp=${DateTime.now().millisecondsSinceEpoch}';
    } catch (e) {
      throw Exception('Failed to fetch cat image: $e');
    }
  }

  @override
  Future<String> fetchCatGif() async {
    try {
      return 'https://cataas.com/cat/gif?timestamp=${DateTime.now().millisecondsSinceEpoch}';
    } catch (e) {
      throw Exception('Failed to fetch cat GIF: $e');
    }
  }

  @override
  Future<String> fetchUnsplashImage() async {
    try {
      return 'https://source.unsplash.com/800x600/?nature&timestamp=${DateTime.now().millisecondsSinceEpoch}';
    } catch (e) {
      throw Exception('Failed to fetch Unsplash image: $e');
    }
  }
}
