import 'package:food_recipe/domain/model/recipe.dart';
import 'package:food_recipe/domain/repository/recipe_repository.dart';

class SearchRecipesUseCase {
  final RecipeRepository _recipeRepository;

  SearchRecipesUseCase({required RecipeRepository recipeRepository})
      : _recipeRepository = recipeRepository;

  Future<List<Recipe>> execute(String query) async {
    final results = (await _recipeRepository.getRecipes())
        .where((e) => e.name.toLowerCase().contains(query.toLowerCase()));
    return results.toList();
  }
}
