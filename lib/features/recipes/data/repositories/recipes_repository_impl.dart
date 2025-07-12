import 'package:injectable/injectable.dart';

import '../../domain/entities/recipe_entity.dart';
import '../../domain/repositories/recipes_repository.dart';
import '../datasources/recipes_remote_data_source.dart';

@Injectable(as: RecipesRepository)
class RecipesRepositoryImpl implements RecipesRepository {
  final RecipesRemoteDataSource _remoteDataSource;

  RecipesRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<RecipeEntity>> getRecipes({
    required int page,
    required int limit,
  }) async {
    try {
      final skip = page * limit;
      final response = await _remoteDataSource.fetchRecipes(
        limit: limit,
        skip: skip,
      );

      return response.recipes
          .map(
            (recipe) => RecipeEntity(
              id: recipe.id,
              name: recipe.name,
              ingredients: recipe.ingredients,
              instructions: recipe.instructions,
              prepTimeMinutes: recipe.prepTimeMinutes,
              cookTimeMinutes: recipe.cookTimeMinutes,
              servings: recipe.servings,
              difficulty: recipe.difficulty,
              cuisine: recipe.cuisine,
              caloriesPerServing: recipe.caloriesPerServing,
              tags: recipe.tags,
              userId: recipe.userId,
              image: recipe.image,
              rating: recipe.rating,
              reviewCount: recipe.reviewCount,
              mealType: recipe.mealType,
            ),
          )
          .toList();
    } catch (e) {
      throw Exception('Failed to get recipes: $e');
    }
  }
}
