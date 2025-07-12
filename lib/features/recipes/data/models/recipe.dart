import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
class Recipe with _$Recipe {
  const factory Recipe({
    required int id,
    required String name,
    required List<String> ingredients,
    required List<String> instructions,
    required int prepTimeMinutes,
    required int cookTimeMinutes,
    required int servings,
    required String difficulty,
    required String cuisine,
    required int caloriesPerServing,
    required List<String> tags,
    required int userId,
    required String image,
    required double rating,
    required int reviewCount,
    required List<String> mealType,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}

@freezed
class RecipesResponse with _$RecipesResponse {
  const factory RecipesResponse({
    required List<Recipe> recipes,
    required int total,
    required int skip,
    required int limit,
  }) = _RecipesResponse;

  factory RecipesResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipesResponseFromJson(json);
}
