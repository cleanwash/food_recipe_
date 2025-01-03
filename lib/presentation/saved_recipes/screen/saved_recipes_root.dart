import 'package:flutter/material.dart';
import 'package:food_recipe/data/data_source/remote/remote_recipe_data_source_impl.dart';
import 'package:food_recipe/data/repository/mock_bookmar_repository_impl.dart';
import 'package:food_recipe/data/repository/mock_recipe_repository_impl.dart';
import 'package:food_recipe/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:food_recipe/presentation/saved_recipes/saved_recipes_screen.dart';
import 'package:food_recipe/presentation/saved_recipes/saved_recipes_view_model.dart';

final _getSavedRecipeUseCase = GetSavedRecipesUseCase(
    recipeRepository: MockRecipeRepositoryImpl(
        recipeDataSource: RemoteRecipeDataSourceImpl()),
    bookMarkRepository: MockBookmarRepositoryImpl());

class SavedRecipesRoot extends StatelessWidget {
  const SavedRecipesRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel =
        SavedRecipesViewModel(getSavedRecipesUseCase: _getSavedRecipeUseCase);
    return ListenableBuilder(
        listenable: viewModel,
        builder: (contex, widget) {
          final state = viewModel.state;
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          return SavedRecipesScreen(recipes: state.recipes);
        });
  }
}
