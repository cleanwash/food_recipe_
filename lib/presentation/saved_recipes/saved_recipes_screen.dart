import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/components/recipe_card.dart';
import 'package:food_recipe/domain/model/recipe.dart';
import 'package:food_recipe/ui/text_styles.dart';

class SavedRecipesScreen extends StatelessWidget {
  final List<Recipe> recipes;
  const SavedRecipesScreen({
    super.key,
    required this.recipes,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Saved Recipes', style: TextStyles.mediumTextBold),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              return RecipeCard(recipe: recipes[index]);
            },
          ),
        ));
  }
}
