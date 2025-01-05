import 'package:flutter/material.dart';
import 'package:food_recipe/core/di/di_setup.dart';
import 'package:food_recipe/presentation/saved_recipes/saved_recipes_screen.dart';
import 'package:food_recipe/presentation/saved_recipes/saved_recipes_view_model.dart';

// final _getSavedRecipeUseCase = GetSavedRecipesUseCase(
//     recipeRepository: MockRecipeRepositoryImpl(
//         recipeDataSource: RemoteRecipeDataSourceImpl()),
//     bookMarkRepository: MockBookmarRepositoryImpl());

class SavedRecipesRoot extends StatelessWidget {
  const SavedRecipesRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<SavedRecipesViewModel>();
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
