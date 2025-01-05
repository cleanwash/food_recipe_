import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/components/dish_card.dart';
import 'package:food_recipe/core/presentation/components/recipe_category_selector.dart';
import 'package:food_recipe/core/presentation/components/search_input_field.dart';
import 'package:food_recipe/presentation/home/home_state.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/text_styles.dart';

class HomeScreen extends StatelessWidget {
  final String name;
  final void Function() onTapSearchField;
  final void Function(String category) onSelectCategory;
  final HomeState state;

  const HomeScreen({
    super.key,
    required this.name,
    required this.onTapSearchField,
    required this.state,
    required this.onSelectCategory,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello $name', style: TextStyles.largeTextBold),
                        SizedBox(height: 5),
                        Text('What are you cokking Today',
                            style: TextStyles.smallerTextRegular
                                .copyWith(color: ColorStyles.gray3)),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorStyles.secondary40,
                      ),
                      child: Image.asset('assets/image/face.png'),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: onTapSearchField,
                        child: IgnorePointer(
                          child: SearchInputField(
                            placeholder: 'Search Recipe',
                            isReadOnly: true,
                          ),
                        ),
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
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, bottom: 10),
            child: RecipeCategorySelector(
              categories: state.categories,
              onSelectCategory: onSelectCategory,
              selectedCategory: state.selectedCategory,
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: state.dishes
                    .map((e) => Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: DishCard(
                            recipe: e,
                            isFavorite: true,
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
