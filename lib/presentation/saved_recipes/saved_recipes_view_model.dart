import 'package:flutter/material.dart';
import 'package:food_recipe/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:food_recipe/presentation/saved_recipes/saved_recipes_state.dart';

class SavedRecipesViewModel with ChangeNotifier {
  final GetSavedRecipesUseCase _getSavedRecipesUseCase;

  SavedRecipesViewModel(
      {required GetSavedRecipesUseCase getSavedRecipesUseCase})
      : _getSavedRecipesUseCase = getSavedRecipesUseCase {
    _loadRecipeData();
  }

//상태
  SavedRecipesState _state = SavedRecipesState();
  SavedRecipesState get state => _state;

  //상태

  void _loadRecipeData() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();
    _state = state.copyWith(
        recipes: await _getSavedRecipesUseCase.execute(), isLoading: false);
    notifyListeners();
  }
}
