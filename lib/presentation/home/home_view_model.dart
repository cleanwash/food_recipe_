import 'package:flutter/material.dart';
import 'package:food_recipe/domain/use_case/get_categories_use_cse.dart';
import 'package:food_recipe/presentation/home/home_state.dart';

class HomeViewModel with ChangeNotifier {
  final GetCategoriesUseCse _getCategoriesUseCse;

  HomeViewModel({required GetCategoriesUseCse getCategoriesUseCse})
      : _getCategoriesUseCse = getCategoriesUseCse {
    _fetchCategories();
  }
  HomeState get state => _state;

  HomeState _state = HomeState();

  void onSelectCategory(String category) async {
    _state = state.copyWith(selectedCategory: category);
    notifyListeners();
  }

  void _fetchCategories() async {
    _state = state.copyWith(
        categories: await _getCategoriesUseCse.execute(),
        selectedCategory: 'All');
    notifyListeners();
  }
}
