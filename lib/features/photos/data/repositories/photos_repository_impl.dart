import 'package:injectable/injectable.dart';

import '../../domain/entities/photo_entity.dart';
import '../../domain/repositories/photos_repository.dart';
import '../datasources/photos_remote_data_source.dart';

@Injectable(as: PhotosRepository)
class PhotosRepositoryImpl implements PhotosRepository {
  final PhotosRemoteDataSource _remoteDataSource;

  PhotosRepositoryImpl(this._remoteDataSource);

  @override
  Future<PhotoEntity> getDogImage() async {
    try {
      final dogImage = await _remoteDataSource.fetchDogImage();
      return PhotoEntity(url: dogImage.message);
    } catch (e) {
      throw Exception('Failed to get dog image: $e');
    }
  }

  @override
  Future<PhotoEntity> getCatImage() async {
    try {
      final url = await _remoteDataSource.fetchCatImage();
      return PhotoEntity(url: url);
    } catch (e) {
      throw Exception('Failed to get cat image: $e');
    }
  }

  @override
  Future<PhotoEntity> getCatGif() async {
    try {
      final url = await _remoteDataSource.fetchCatGif();
      return PhotoEntity(url: url);
    } catch (e) {
      throw Exception('Failed to get cat GIF: $e');
    }
  }

  @override
  Future<PhotoEntity> getUnsplashImage() async {
    try {
      final url = await _remoteDataSource.fetchUnsplashImage();
      return PhotoEntity(url: url);
    } catch (e) {
      throw Exception('Failed to get Unsplash image: $e');
    }
  }
}
