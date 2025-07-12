import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../data/models/dog_image.dart';
import '../cubit/photos_cubit.dart';

class PhotoScreen extends StatelessWidget {
  final String title;
  final PhotoSource source;

  const PhotoScreen({
    super.key,
    required this.title,
    required this.source,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: BlocBuilder<PhotosCubit, PhotosState>(
        builder: (context, state) {
          if (state is PhotosLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PhotosError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    size: 64,
                    color: Theme.of(context).colorScheme.error,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Error loading photo',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(state.message),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<PhotosCubit>().fetchPhoto(source);
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          } else if (state is PhotosSuccess) {
            return Stack(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: CachedNetworkImage(
                        imageUrl: state.photo.url,
                        fit: BoxFit.contain,
                        placeholder: (context, url) => Container(
                          height: 300,
                          color: Theme.of(context).colorScheme.surfaceContainerHighest,
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          height: 300,
                          color: Theme.of(context).colorScheme.surfaceContainerHighest,
                          child: const Center(
                            child: Icon(
                              Icons.error,
                              size: 48,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (state.photo.author != null)
                  Positioned(
                    bottom: 32,
                    right: 32,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        'Photo by ${state.photo.author}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                Positioned(
                  bottom: 32,
                  left: 32,
                  child: FloatingActionButton(
                    onPressed: () {
                      context.read<PhotosCubit>().fetchPhoto(source);
                    },
                    child: const Icon(Icons.refresh),
                  ),
                ),
              ],
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
