import 'package:flutter/material.dart';
import 'package:food_recipe/data/data_source/local/local_recent_search_recipe_data_source_impl.dart';
import 'package:food_recipe/data/data_source/remote/remote_recipe_data_source_impl.dart';
import 'package:food_recipe/data/repository/mock_recent_search_repository_impl.dart';
import 'package:food_recipe/data/repository/mock_recipe_repository_impl.dart';
import 'package:food_recipe/domain/use_case/search_recipes_use_case.dart';
import 'package:food_recipe/presentation/search/screen/search_screen.dart';
import 'package:food_recipe/presentation/search/search_view_model.dart';

final _recentSearchRecipeRepository = MockRecentSearchRepositoryImpl(
    recipeDataSource: LocalRecentSearchRecipeDataSourceImpl());

class SearchRoot extends StatelessWidget {
  const SearchRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = SearchViewModel(
      recentSearchRecipeRepository: _recentSearchRecipeRepository,
      searchRecipesUseCase: SearchRecipesUseCase(
        recipeRepository: MockRecipeRepositoryImpl(
          recipeDataSource: RemoteRecipeDataSourceImpl(),
        ),
      ),
    );
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) {
        return SearchScreen(
          state: viewModel.state,
          onChanged: (query) => viewModel.searchRecipes(query),
        );
      },
    );
  }
}
