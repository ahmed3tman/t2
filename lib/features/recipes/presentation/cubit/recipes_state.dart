part of 'recipes_cubit.dart';

enum RecipesSortType { none, ratingAsc, ratingDesc, caloriesAsc, caloriesDesc }

abstract class RecipesState extends Equatable {
  const RecipesState();

  @override
  List<Object?> get props => [];
}

class RecipesInitial extends RecipesState {
  const RecipesInitial();
}

class RecipesLoading extends RecipesState {
  const RecipesLoading();
}

class RecipesSuccess extends RecipesState {
  final List<RecipeEntity> recipes;
  final bool hasMore;
  final bool isLoadingMore;

  const RecipesSuccess({
    required this.recipes,
    required this.hasMore,
    this.isLoadingMore = false,
  });

  @override
  List<Object?> get props => [recipes, hasMore, isLoadingMore];
}

class RecipesError extends RecipesState {
  final String message;

  const RecipesError(this.message);

  @override
  List<Object?> get props => [message];
}
