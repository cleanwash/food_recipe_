import 'package:food_recipe/domain/data_source/recipe_data_source.dart';
import 'package:food_recipe/domain/model/recipe.dart';
import 'package:food_recipe/domain/repository/recent_search_recipe_repository.dart';

class MockRecentSearchRepositoryImpl implements RecentSearchRecipeRepository {
  final RecipeDataSource _recipeDataSource;

  MockRecentSearchRepositoryImpl({required RecipeDataSource recipeDataSource})
      : _recipeDataSource = recipeDataSource;
  @override
  Future<List<Recipe>> getRecentRecipes() async {
    final recipes = await _recipeDataSource.getRecipes();
    return recipes.map((e) => Recipe.fromJson(e)).toList();
  }

  @override
  Future<void> updateRecentSearchRecipes(List<Recipe> recipes) {
    // TODO: implement updateRecentSearchRecipes
    throw UnimplementedError();
  }
}
