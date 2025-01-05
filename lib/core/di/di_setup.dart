import 'package:food_recipe/data/data_source/local/default_local_storage.dart';
import 'package:food_recipe/data/data_source/remote/remote_recipe_data_source_impl.dart';
import 'package:food_recipe/data/repository/mock_bookmar_repository_impl.dart';
import 'package:food_recipe/data/repository/mock_recent_search_repository_impl.dart';
import 'package:food_recipe/data/repository/mock_recipe_repository_impl.dart';
import 'package:food_recipe/domain/data_source/local_storage.dart';
import 'package:food_recipe/domain/data_source/recipe_data_source.dart';
import 'package:food_recipe/domain/repository/book_mark_repository.dart';
import 'package:food_recipe/domain/repository/recent_search_recipe_repository.dart';
import 'package:food_recipe/domain/repository/recipe_repository.dart';
import 'package:food_recipe/domain/use_case/get_categories_use_cse.dart';
import 'package:food_recipe/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:food_recipe/domain/use_case/search_recipes_use_case.dart';
import 'package:food_recipe/presentation/home/home_view_model.dart';
import 'package:food_recipe/presentation/saved_recipes/saved_recipes_view_model.dart';
import 'package:food_recipe/presentation/search/search_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
//usecase, repository -> singleton , viewModel -> factory로 하기
void diSetup() {
  //saved_recipes_root
  getIt.registerSingleton<RecipeDataSource>(RemoteRecipeDataSourceImpl());
  getIt.registerSingleton<RecipeRepository>(
    MockRecipeRepositoryImpl(recipeDataSource: getIt()),
  );
  getIt.registerSingleton<BookMarkRepository>(MockBookmarRepositoryImpl());
  getIt.registerSingleton<GetSavedRecipesUseCase>(
    GetSavedRecipesUseCase(
        recipeRepository: getIt(), bookMarkRepository: getIt()),
  );
  getIt.registerFactory<SavedRecipesViewModel>(
    () => SavedRecipesViewModel(getSavedRecipesUseCase: getIt()),
  );

//search_root
  getIt.registerSingleton<LocalStorage>(DefaultLocalStorage());
  getIt.registerSingleton<RecentSearchRecipeRepository>(
      MockRecentSearchRepositoryImpl(localStorage: getIt()));
  getIt.registerSingleton(
      SearchRecipesUseCase(recipeRepository: getIt(), localStorage: getIt()));

  getIt.registerFactory<SearchViewModel>(() => SearchViewModel(
      recentSearchRecipeRepository: getIt(), searchRecipesUseCase: getIt()));

  //home_view_model

  getIt.registerSingleton<GetCategoriesUseCse>(
      GetCategoriesUseCse(recipeRepository: getIt()));

  getIt.registerFactory<HomeViewModel>(
    () => HomeViewModel(getCategoriesUseCse: getIt()),
  );
}
