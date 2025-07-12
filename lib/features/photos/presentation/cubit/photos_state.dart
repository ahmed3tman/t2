part of 'photos_cubit.dart';

abstract class PhotosState extends Equatable {
  const PhotosState();

  @override
  List<Object?> get props => [];
}

class PhotosInitial extends PhotosState {
  const PhotosInitial();
}

class PhotosLoading extends PhotosState {
  const PhotosLoading();
}

class PhotosSuccess extends PhotosState {
  final PhotoEntity photo;
  final PhotoSource source;

  const PhotosSuccess({
    required this.photo,
    required this.source,
  });

  @override
  List<Object?> get props => [photo, source];
}

class PhotosError extends PhotosState {
  final String message;

  const PhotosError(this.message);

  @override
  List<Object?> get props => [message];
}
