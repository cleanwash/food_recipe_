import 'package:food_recipe/core/domain/model/recipe_ingredient.dart';

class Recipe {
  final int id;
  final String category;
  final String name;
  final String image;
  final String chef;
  final String time;
  final double rating;
  final List<RecipeIngredient> ingredients;

  Recipe({
    required this.id,
    required this.category,
    required this.name,
    required this.image,
    required this.chef,
    required this.time,
    required this.rating,
    required this.ingredients,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      category: json['category'],
      name: json['name'],
      image: json['image'],
      chef: json['chef'],
      time: json['time'],
      rating: json['rating'].toDouble(),
      ingredients: (json['ingredients'] as List)
          .map((i) => RecipeIngredient.fromJson(i))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category': category,
      'name': name,
      'image': image,
      'chef': chef,
      'time': time,
      'rating': rating,
      'ingredients': ingredients.map((i) => i.toJson()).toList(),
    };
  }
}
