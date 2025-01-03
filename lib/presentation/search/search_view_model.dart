import 'package:flutter/material.dart';
import 'package:food_recipe/domain/repository/recent_search_recipe_repository.dart';
import 'package:food_recipe/presentation/search/search_state.dart';

class SearchViewModel with ChangeNotifier {
  final RecentSearchRecipeRepository _recentSearchRecipeRepository;

  SearchState _state = SearchState();
  SearchState get state => _state;

  SearchViewModel(
      {required RecentSearchRecipeRepository recentSearchRecipeRepository})
      : _recentSearchRecipeRepository = recentSearchRecipeRepository {
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
}
