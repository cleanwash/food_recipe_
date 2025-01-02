import 'package:flutter/material.dart';
import 'package:food_recipe/core/routing/route_paths.dart';
import 'package:food_recipe/data/repository/mock_bookmar_repository_impl.dart';
import 'package:food_recipe/data/repository/mock_recipe_repository_impl.dart';
import 'package:food_recipe/domain/model/recipe.dart';
import 'package:food_recipe/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:food_recipe/presentation/saved_recipes/saved_recipes_screen.dart';
import 'package:food_recipe/presentation/sign_in/sign_in_screen.dart';
import 'package:food_recipe/presentation/sing_up/sign_up_screen.dart';
import 'package:food_recipe/presentation/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: RoutePaths.splash,
  routes: [
    GoRoute(
      path: RoutePaths.signUp,
      builder: (context, state) => SignUpScreen(
        onTapSignIn: () => context.go(RoutePaths.signIn),
      ),
    ),
    GoRoute(
      path: RoutePaths.splash,
      builder: (context, state) => SplashScreen(
        onTapStartCooking: () => context.go(RoutePaths.signIn),
      ),
    ),
    GoRoute(
      path: RoutePaths.signIn,
      builder: (context, state) => SignInScreen(
        onTapSignUp: () => context.go(RoutePaths.signUp),
        onTapSignIn: () => context.go(RoutePaths.savedRecipes),
      ),
    ),
    GoRoute(
      path: RoutePaths.savedRecipes,
      builder: (context, state) => FutureBuilder<List<Recipe>>(
        future: GetSavedRecipesUseCase(
                recipeRepository: MockRecipeRepositoryImpl(),
                bookMarkRepository: MockBookmarRepositoryImpl())
            .execute(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          final recipes = snapshot.data!;

          return SavedRecipesScreen(
            recipes: recipes,
          );
        },
      ),
    )
  ],
);
