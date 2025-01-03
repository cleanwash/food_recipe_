import 'package:food_recipe/domain/data_source/local_storage.dart';
import 'package:food_recipe/domain/model/recipe.dart';
import 'package:food_recipe/domain/repository/recent_search_recipe_repository.dart';

class MockRecentSearchRepositoryImpl implements RecentSearchRecipeRepository {
  final LocalStorage _localStorage;

  MockRecentSearchRepositoryImpl({required LocalStorage localStorage})
      : _localStorage = localStorage;

  @override
  Future<List<Recipe>> getRecentRecipes() async {
    try {
      final json = await _localStorage.load();
      return (json['recipes'] as Iterable)
          .map((e) => Recipe.fromJson(e))
          .toList();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<void> updateRecentSearchRecipes(List<Recipe> recipes) async {
    await _localStorage.save({'recipes': recipes.map((e) => e.toJson())});
  }
}
