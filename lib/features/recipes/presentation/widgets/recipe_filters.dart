import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/recipes_cubit.dart';

class RecipeFilters extends StatelessWidget {
  const RecipeFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipesCubit, RecipesState>(
      builder: (context, state) {
        if (state is! RecipesSuccess) return const SizedBox.shrink();

        final cubit = context.read<RecipesCubit>();
        final cuisines = cubit.availableCuisines;
        final difficulties = cubit.availableDifficulties;

        return Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // Cuisine filter
                      PopupMenuButton<String>(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.restaurant, size: 16),
                              const SizedBox(width: 4),
                              const Text('Cuisine'),
                              const SizedBox(width: 4),
                              Icon(Icons.arrow_drop_down, size: 16),
                            ],
                          ),
                        ),
                        onSelected: (cuisine) {
                          cubit.filterByCuisine(
                            cuisine == 'All' ? null : cuisine,
                          );
                        },
                        itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: 'All',
                            child: Text('All Cuisines'),
                          ),
                          ...cuisines.map(
                            (cuisine) => PopupMenuItem(
                              value: cuisine,
                              child: Text(cuisine),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 8),
                      // Difficulty filter
                      PopupMenuButton<String>(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.speed, size: 16),
                              const SizedBox(width: 4),
                              const Text('Difficulty'),
                              const SizedBox(width: 4),
                              Icon(Icons.arrow_drop_down, size: 16),
                            ],
                          ),
                        ),
                        onSelected: (difficulty) {
                          cubit.filterByDifficulty(
                            difficulty == 'All' ? null : difficulty,
                          );
                        },
                        itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: 'All',
                            child: Text('All Difficulties'),
                          ),
                          ...difficulties.map(
                            (difficulty) => PopupMenuItem(
                              value: difficulty,
                              child: Text(difficulty),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Sort button
              PopupMenuButton<RecipesSortType>(
                icon: const Icon(Icons.sort),
                onSelected: (sortType) {
                  cubit.sortRecipes(sortType);
                },
                itemBuilder: (context) => const [
                  PopupMenuItem(
                    value: RecipesSortType.none,
                    child: Text('Default'),
                  ),
                  PopupMenuItem(
                    value: RecipesSortType.ratingDesc,
                    child: Text('Rating (High to Low)'),
                  ),
                  PopupMenuItem(
                    value: RecipesSortType.ratingAsc,
                    child: Text('Rating (Low to High)'),
                  ),
                  PopupMenuItem(
                    value: RecipesSortType.caloriesAsc,
                    child: Text('Calories (Low to High)'),
                  ),
                  PopupMenuItem(
                    value: RecipesSortType.caloriesDesc,
                    child: Text('Calories (High to Low)'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
