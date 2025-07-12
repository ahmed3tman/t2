import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pet_recipe_explorer/core/theme/theme_cubit.dart';
import 'package:pet_recipe_explorer/core/di/injection.dart';
import '../cubit/recipes_cubit.dart';
import '../widgets/recipe_card.dart';
import '../widgets/recipe_filters.dart';
import '../widgets/recipe_search_bar.dart';
import '../widgets/recipe_shimmer.dart';
import 'recipe_detail_screen.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({super.key});

  @override
  State<RecipesScreen> createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.9) {
      context.read<RecipesCubit>().fetchRecipes();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
            onSelected: (value) {
              final themeCubit = getIt<ThemeCubit>();
              switch (value) {
                case 'theme':
                  themeCubit.toggleTheme();
                  break;
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'theme',
                child: ListTile(
                  leading: Icon(Icons.brightness_6),
                  title: Text('Toggle Theme'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          const RecipeSearchBar(),
          const RecipeFilters(),
          Expanded(
            child: BlocBuilder<RecipesCubit, RecipesState>(
              builder: (context, state) {
                if (state is RecipesLoading) {
                  return const RecipeShimmer();
                } else if (state is RecipesError) {
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
                          'Error loading recipes',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(height: 8),
                        Text(state.message),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            context.read<RecipesCubit>().fetchRecipes(refresh: true);
                          },
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  );
                } else if (state is RecipesSuccess) {
                  return RefreshIndicator(
                    onRefresh: () {
                      return context.read<RecipesCubit>().fetchRecipes(refresh: true);
                    },
                    child: ListView.builder(
                      controller: _scrollController,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: state.recipes.length + (state.hasMore ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index == state.recipes.length) {
                          return const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                        }

                        final recipe = state.recipes[index];
                        return RecipeCard(
                          recipe: recipe,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RecipeDetailScreen(recipe: recipe),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}
