import 'package:food_recipe/domain/repository/recipe_repository.dart';

class GetCategoriesUseCse {
  final RecipeRepository _recipeRepository;

  GetCategoriesUseCse({required RecipeRepository recipeRepository})
      : _recipeRepository = recipeRepository;

  Future<List<String>> execute() async {
    final recipes = await _recipeRepository.getRecipes();
    return [
      'All',
      ...recipes.map((e) => e.category).toSet(),
    ];
  }
}
