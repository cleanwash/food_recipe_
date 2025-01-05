import 'package:flutter/material.dart';
import 'package:food_recipe/domain/use_case/get_categories_use_cse.dart';
import 'package:food_recipe/domain/use_case/get_dishes_by_category_use_case.dart';
import 'package:food_recipe/presentation/home/home_state.dart';

class HomeViewModel with ChangeNotifier {
  final GetCategoriesUseCse _getCategoriesUseCse;
  final GetDishesByCategoryUseCase _getDishesByCategoryUseCase;

  HomeViewModel(
      {required GetCategoriesUseCse getCategoriesUseCse,
      required GetDishesByCategoryUseCase getDishesByCategoryUseCase})
      : _getCategoriesUseCse = getCategoriesUseCse,
        _getDishesByCategoryUseCase = getDishesByCategoryUseCase {
    _fetchCategories();
  }

  HomeState get state => _state;

  HomeState _state = HomeState();

  void _fetchCategories() async {
    _state = state.copyWith(
        categories: await _getCategoriesUseCse.execute(),
        selectedCategory: 'All');
    notifyListeners();

    await _fetchDishesCategory('All');
    notifyListeners();
  }

  Future<void> _fetchDishesCategory(String category) async {
    final dishes = await _getDishesByCategoryUseCase.execute(category);
    _state = state.copyWith(dishes: dishes);
    notifyListeners();
  }

  void onSelectCategory(String category) async {
    _state = state.copyWith(selectedCategory: category);
    notifyListeners();

    await _fetchDishesCategory(category);
  }
}
