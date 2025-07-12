import '../entities/photo_entity.dart';

abstract class PhotosRepository {
  Future<PhotoEntity> getDogImage();
  Future<PhotoEntity> getCatImage();
  Future<PhotoEntity> getCatGif();
  Future<PhotoEntity> getUnsplashImage();
}
