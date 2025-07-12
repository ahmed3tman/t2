import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:share_plus/share_plus.dart';

import '../../domain/entities/recipe_entity.dart';

class RecipeDetailScreen extends StatelessWidget {
  final RecipeEntity recipe;

  const RecipeDetailScreen({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(
                imageUrl: recipe.image,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  child: const Center(
                    child: Icon(Icons.image_not_supported, size: 64),
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {
                  Share.share(
                    'Check out this recipe: ${recipe.name}\n\n'
                    'Ingredients: ${recipe.ingredients.join(', ')}\n\n'
                    'Rating: ${recipe.rating}/5',
                  );
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.name,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _buildInfoChip(context, Icons.access_time, '${recipe.prepTimeMinutes + recipe.cookTimeMinutes} min'),
                      _buildInfoChip(context, Icons.people, '${recipe.servings} servings'),
                      _buildInfoChip(context, Icons.local_fire_department, '${recipe.caloriesPerServing} cal'),
                      _buildInfoChip(context, Icons.speed, recipe.difficulty),
                      _buildInfoChip(context, Icons.restaurant, recipe.cuisine),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text(
                        '${recipe.rating.toStringAsFixed(1)} (${recipe.reviewCount} reviews)',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Meal Types',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: recipe.mealType
                        .map((type) => Chip(
                              label: Text(type),
                              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                            ))
                        .toList(),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Tags',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: recipe.tags
                        .map((tag) => Chip(
                              label: Text(tag),
                              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                            ))
                        .toList(),
                  ),
                  const SizedBox(height: 24),
                  ExpansionTile(
                    title: Text(
                      'Ingredients (${recipe.ingredients.length})',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    initiallyExpanded: true,
                    children: recipe.ingredients
                        .map((ingredient) => ListTile(
                              leading: const Icon(Icons.check_circle_outline),
                              title: Text(ingredient),
                              dense: true,
                            ))
                        .toList(),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Instructions',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: Theme.of(context).colorScheme.copyWith(
                        primary: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    child: Stepper(
                      physics: const NeverScrollableScrollPhysics(),
                      controlsBuilder: (context, details) => const SizedBox.shrink(),
                      steps: recipe.instructions
                          .asMap()
                          .entries
                          .map((entry) => Step(
                                title: Text('Step ${entry.key + 1}'),
                                content: Text(entry.value),
                                isActive: true,
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoChip(BuildContext context, IconData icon, String label) {
    return Chip(
      avatar: Icon(icon, size: 16),
      label: Text(label),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
    );
  }
}
