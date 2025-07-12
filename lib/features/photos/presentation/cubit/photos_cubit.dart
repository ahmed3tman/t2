import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/dog_image.dart';
import '../../domain/entities/photo_entity.dart';
import '../../domain/repositories/photos_repository.dart';

part 'photos_state.dart';

@injectable
class PhotosCubit extends Cubit<PhotosState> {
  final PhotosRepository _repository;

  PhotosCubit(this._repository) : super(const PhotosInitial());

  Future<void> fetchPhoto(PhotoSource source) async {
    try {
      emit(const PhotosLoading());

      PhotoEntity photo;
      switch (source) {
        case PhotoSource.dog:
          photo = await _repository.getDogImage();
          break;
        case PhotoSource.cat:
          photo = await _repository.getCatImage();
          break;
        case PhotoSource.catGif:
          photo = await _repository.getCatGif();
          break;
        case PhotoSource.unsplash:
          photo = await _repository.getUnsplashImage();
          break;
      }

      emit(PhotosSuccess(photo: photo, source: source));
    } catch (e) {
      emit(PhotosError(e.toString()));
    }
  }
}
