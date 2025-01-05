import 'package:flutter/material.dart';
import 'package:food_recipe/domain/filter/filter_state.dart';
import 'package:food_recipe/domain/repository/recent_search_recipe_repository.dart';
import 'package:food_recipe/domain/use_case/search_recipes_use_case.dart';
import 'package:food_recipe/presentation/search/search_state.dart';

class SearchViewModel with ChangeNotifier {
  final RecentSearchRecipeRepository _recentSearchRecipeRepository;
  final SearchRecipesUseCase _searchRecipesUseCase;

  SearchState _state = SearchState();
  SearchState get state => _state;

  SearchViewModel(
      {required RecentSearchRecipeRepository recentSearchRecipeRepository,
      required SearchRecipesUseCase searchRecipesUseCase})
      : _recentSearchRecipeRepository = recentSearchRecipeRepository,
        _searchRecipesUseCase = searchRecipesUseCase {
    _loadRecentRecipes();
  }

  void _loadRecentRecipes() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();
    _state = state.copyWith(
        recipes: await _recentSearchRecipeRepository.getRecentRecipes(),
        isLoading: false);
    notifyListeners();
  }

  Future<void> searchRecipes(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final recipes =
        await _searchRecipesUseCase.execute(query, state.filterState);
    _state = state.copyWith(
        recipes: recipes,
        isLoading: false,
        searchTitle: 'Seearch Result',
        query: query,
        resultsCount: '${recipes.length} results');
    notifyListeners();
  }

  void onChangeFilter(FilterState filterState) async {
    _state = state.copyWith(filterState: filterState);
    await searchRecipes(state.query);
    notifyListeners();
    print(state.toString());
  }
}
