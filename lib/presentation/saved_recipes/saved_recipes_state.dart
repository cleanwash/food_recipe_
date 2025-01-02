import 'package:food_recipe/domain/model/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_recipes_state.freezed.dart';
part 'saved_recipes_state.g.dart';

@freezed
class SavedRecipesState with _$SavedRecipesState {
  factory SavedRecipesState(
      {@Default([]) List<Recipe> recipes,
      @Default(false) bool isLoading}) = _SavedRecipesState;

  factory SavedRecipesState.fromJson(Map<String, dynamic> json) =>
      _$SavedRecipesStateFromJson(json);
}
