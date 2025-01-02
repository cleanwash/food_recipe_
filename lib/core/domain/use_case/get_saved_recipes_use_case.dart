import 'package:food_recipe/core/domain/model/recipe.dart';
import 'package:food_recipe/core/domain/repository/book_mark_repository.dart';
import 'package:food_recipe/core/domain/repository/recipe_repository.dart';

class GetSavedRecipesUseCase {
  final RecipeRepository _recipeRepository;
  final BookMarkRepository _bookMarkRepository;

  GetSavedRecipesUseCase(
      {required RecipeRepository recipeRepository,
      required BookMarkRepository bookMarkRepository})
      : _recipeRepository = recipeRepository,
        _bookMarkRepository = bookMarkRepository;

  Future<List<Recipe>> execute() async {
    final ids = await _bookMarkRepository.getBookmarkIds();
    final recipes = await _recipeRepository.getRecipes();
    return recipes.where((e) => ids.contains(e.id)).toList();
  }
}
