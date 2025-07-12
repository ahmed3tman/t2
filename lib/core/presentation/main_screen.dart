import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/photos/data/models/dog_image.dart';
import '../../features/photos/presentation/cubit/photos_cubit.dart';
import '../../features/photos/presentation/screens/photo_screen.dart';
import '../../features/recipes/presentation/cubit/recipes_cubit.dart';
import '../../features/recipes/presentation/screens/recipes_screen.dart';
import '../di/injection.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    BlocProvider(
      create: (context) => getIt<RecipesCubit>()..fetchRecipes(),
      child: const RecipesScreen(),
    ),
    BlocProvider(
      create: (context) => getIt<PhotosCubit>()..fetchPhoto(PhotoSource.dog),
      child: const PhotoScreen(title: 'Dog Photos', source: PhotoSource.dog),
    ),
    BlocProvider(
      create: (context) => getIt<PhotosCubit>()..fetchPhoto(PhotoSource.cat),
      child: const PhotoScreen(title: 'Cat Photos', source: PhotoSource.cat),
    ),
    BlocProvider(
      create: (context) => getIt<PhotosCubit>()..fetchPhoto(PhotoSource.catGif),
      child: const PhotoScreen(title: 'Cat GIFs', source: PhotoSource.catGif),
    ),
    BlocProvider(
      create: (context) =>
          getIt<PhotosCubit>()..fetchPhoto(PhotoSource.unsplash),
      child: const PhotoScreen(
        title: 'Unsplash Photos',
        source: PhotoSource.unsplash,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.pets), label: 'Dog'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Cat'),
          BottomNavigationBarItem(icon: Icon(Icons.gif), label: 'Cat GIF'),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'Unsplash'),
        ],
      ),
    );
  }
}
