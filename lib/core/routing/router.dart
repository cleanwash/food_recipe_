import 'package:food_recipe/core/routing/route_paths.dart';
import 'package:food_recipe/presentation/saved_recipes/screen/saved_recipes_root.dart';
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
      builder: (context, state) => SavedRecipesRoot(),
    ),
  ],
);
