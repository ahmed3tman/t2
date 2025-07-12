import '../entities/recipe_entity.dart';

abstract class RecipesRepository {
  Future<List<RecipeEntity>> getRecipes({
    required int page,
    required int limit,
  });
}
