import 'package:flutter/material.dart';
import 'package:food_recipe/core/di/di_setup.dart';
import 'package:food_recipe/core/routing/route_paths.dart';
import 'package:food_recipe/presentation/home/home_view_model.dart';
import 'package:food_recipe/presentation/home/screen/home_screen.dart';
import 'package:go_router/go_router.dart';

class HomeRoot extends StatelessWidget {
  const HomeRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt.call<HomeViewModel>();
    return ListenableBuilder(
      builder: (context, widget) {
        return HomeScreen(
            name: 'Jega',
            onTapSearchField: () => context.push(RoutePaths.search),
            onSelectCategory: viewModel.onSelectCategory,
            state: viewModel.state);
      },
      listenable: viewModel,
    );
  }
}
