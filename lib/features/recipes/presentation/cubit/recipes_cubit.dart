import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/recipe_entity.dart';
import '../../domain/repositories/recipes_repository.dart';

part 'recipes_state.dart';

@injectable
class RecipesCubit extends Cubit<RecipesState> {
  final RecipesRepository _repository;

  RecipesCubit(this._repository) : super(const RecipesInitial());

  final List<RecipeEntity> _allRecipes = [];
  List<RecipeEntity> _filteredRecipes = [];
  int _currentPage = 0;
  static const int _pageSize = 20;
  bool _hasMoreData = true;
  String _searchQuery = '';
  String? _selectedCuisine;
  String? _selectedDifficulty;
  RecipesSortType _sortType = RecipesSortType.none;

  Future<void> fetchRecipes({bool refresh = false}) async {
    if (refresh) {
      _currentPage = 0;
      _allRecipes.clear();
      _filteredRecipes.clear();
      _hasMoreData = true;
    }

    if (!_hasMoreData && !refresh) return;

    try {
      if (_currentPage == 0) {
        emit(const RecipesLoading());
      } else {
        emit(
          RecipesSuccess(
            recipes: _filteredRecipes,
            hasMore: _hasMoreData,
            isLoadingMore: true,
          ),
        );
      }

      final recipes = await _repository.getRecipes(
        page: _currentPage,
        limit: _pageSize,
      );

      if (recipes.length < _pageSize) {
        _hasMoreData = false;
      }

      _allRecipes.addAll(recipes);
      _currentPage++;

      _applyFiltersAndSort();

      emit(
        RecipesSuccess(
          recipes: _filteredRecipes,
          hasMore: _hasMoreData,
          isLoadingMore: false,
        ),
      );
    } catch (e) {
      emit(RecipesError(e.toString()));
    }
  }

  void searchRecipes(String query) {
    _searchQuery = query.toLowerCase();
    _applyFiltersAndSort();
    emit(
      RecipesSuccess(
        recipes: _filteredRecipes,
        hasMore: _hasMoreData,
        isLoadingMore: false,
      ),
    );
  }

  void filterByCuisine(String? cuisine) {
    _selectedCuisine = cuisine;
    _applyFiltersAndSort();
    emit(
      RecipesSuccess(
        recipes: _filteredRecipes,
        hasMore: _hasMoreData,
        isLoadingMore: false,
      ),
    );
  }

  void filterByDifficulty(String? difficulty) {
    _selectedDifficulty = difficulty;
    _applyFiltersAndSort();
    emit(
      RecipesSuccess(
        recipes: _filteredRecipes,
        hasMore: _hasMoreData,
        isLoadingMore: false,
      ),
    );
  }

  void sortRecipes(RecipesSortType sortType) {
    _sortType = sortType;
    _applyFiltersAndSort();
    emit(
      RecipesSuccess(
        recipes: _filteredRecipes,
        hasMore: _hasMoreData,
        isLoadingMore: false,
      ),
    );
  }

  void _applyFiltersAndSort() {
    _filteredRecipes = _allRecipes.where((recipe) {
      final matchesSearch =
          _searchQuery.isEmpty ||
          recipe.name.toLowerCase().contains(_searchQuery);
      final matchesCuisine =
          _selectedCuisine == null || recipe.cuisine == _selectedCuisine;
      final matchesDifficulty =
          _selectedDifficulty == null ||
          recipe.difficulty == _selectedDifficulty;

      return matchesSearch && matchesCuisine && matchesDifficulty;
    }).toList();

    // Apply sorting
    switch (_sortType) {
      case RecipesSortType.ratingAsc:
        _filteredRecipes.sort((a, b) => a.rating.compareTo(b.rating));
        break;
      case RecipesSortType.ratingDesc:
        _filteredRecipes.sort((a, b) => b.rating.compareTo(a.rating));
        break;
      case RecipesSortType.caloriesAsc:
        _filteredRecipes.sort(
          (a, b) => a.caloriesPerServing.compareTo(b.caloriesPerServing),
        );
        break;
      case RecipesSortType.caloriesDesc:
        _filteredRecipes.sort(
          (a, b) => b.caloriesPerServing.compareTo(a.caloriesPerServing),
        );
        break;
      case RecipesSortType.none:
        break;
    }
  }

  List<String> get availableCuisines {
    return _allRecipes.map((recipe) => recipe.cuisine).toSet().toList()..sort();
  }

  List<String> get availableDifficulties {
    return _allRecipes.map((recipe) => recipe.difficulty).toSet().toList()
      ..sort();
  }
}
