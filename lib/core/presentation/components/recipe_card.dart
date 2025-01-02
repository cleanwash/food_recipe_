import 'package:flutter/material.dart';
import 'package:food_recipe/domain/model/recipe.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/text_styles.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  const RecipeCard({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 315 / 150,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(recipe.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  child: Text(
                    recipe.name,
                    style:
                        TextStyles.smallTextBold.copyWith(color: Colors.white),
                  ),
                ),
                Text(
                  'By ${recipe.chef}',
                  style: TextStyles.smallTextBold.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Row(
              children: [
                Icon(
                  Icons.alarm,
                  color: Colors.white,
                  size: 17,
                ),
                SizedBox(width: 5),
                Text(
                  recipe.time,
                  style:
                      TextStyles.smallTextRegular.copyWith(color: Colors.white),
                ),
                SizedBox(width: 10),
                ClipOval(
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(3),
                    child: Icon(
                      Icons.bookmark_border_outlined,
                      color: ColorStyles.primary80,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
                width: 37,
                height: 16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorStyles.secondary20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: ColorStyles.rating,
                      size: 12,
                    ),
                    Text(
                      recipe.rating.toString(),
                      style: TextStyles.smallTextRegular,
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
