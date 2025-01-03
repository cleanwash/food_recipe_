import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/components/recipe_grid_item.dart';
import 'package:food_recipe/core/presentation/components/search_input_field.dart';
import 'package:food_recipe/presentation/search/search_state.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/text_styles.dart';

class SearchScreen extends StatelessWidget {
  final SearchState state;
  final void Function(String query)? onChanged;

  const SearchScreen({
    super.key,
    required this.state,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Search recipes',
            style: TextStyles.mediumTextBold,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 17),
              Row(
                children: [
                  Expanded(
                    child: SearchInputField(
                      placeholder: 'Search Recipe',
                      onChanged: onChanged,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorStyles.primary100,
                    ),
                    child: Icon(
                      Icons.tune,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(state.serachTitle, style: TextStyles.normalTextBold),
                  Spacer(),
                  Text(state.resultsCount,
                      style: TextStyles.smallerTextRegular.copyWith(
                        color: ColorStyles.gray3,
                      ))
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: state.isLoading
                    ? Center(child: CircularProgressIndicator())
                    : GridView.builder(
                        itemCount: state.recipes.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15,
                        ),
                        itemBuilder: (context, index) {
                          final recipe = state.recipes[index];
                          return RecipeGridItem(recipe: recipe);
                        },
                      ),
              ),
            ],
          ),
        ));
  }
}
