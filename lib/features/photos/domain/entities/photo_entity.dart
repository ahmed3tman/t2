import 'package:equatable/equatable.dart';

class PhotoEntity extends Equatable {
  final String url;
  final String? author;

  const PhotoEntity({
    required this.url,
    this.author,
  });

  @override
  List<Object?> get props => [url, author];
}
