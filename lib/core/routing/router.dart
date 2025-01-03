import 'package:food_recipe/core/routing/route_paths.dart';
import 'package:food_recipe/main.dart';
import 'package:food_recipe/presentation/home/screen/home_root.dart';
import 'package:food_recipe/presentation/main/main_screen.dart';
import 'package:food_recipe/presentation/notifications/notifications_screen.dart';
import 'package:food_recipe/presentation/profie/profile_screen.dart';
import 'package:food_recipe/presentation/saved_recipes/screen/saved_recipes_root.dart';
import 'package:food_recipe/presentation/search/screen/search_root.dart';
import 'package:food_recipe/presentation/sign_in/sign_in_screen.dart';
import 'package:food_recipe/presentation/sing_up/sign_up_screen.dart';
import 'package:food_recipe/presentation/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: RoutePaths.splash,
  routes: [
    GoRoute(
      path: RoutePaths.test,
      builder: (context, state) => MyHomePage(),
    ),
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
        onTapSignIn: () => context.go(RoutePaths.home),
      ),
    ),
    GoRoute(
      path: RoutePaths.search,
      builder: (context, state) => SearchRoot(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScreen(
            body: navigationShell,
            currentPageIndex: navigationShell.currentIndex,
            onChangeIndex: (index) {
              navigationShell.goBranch(
                index,
                initialLocation: index == navigationShell.currentIndex,
              );
            });
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.home,
              builder: (context, state) => HomeRoot(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.savedRecipes,
              builder: (context, state) => SavedRecipesRoot(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.notifications,
              builder: (context, state) => NotificationsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.profile,
              builder: (context, state) => ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
