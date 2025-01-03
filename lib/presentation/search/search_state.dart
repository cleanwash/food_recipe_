import 'package:food_recipe/domain/model/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';
part 'search_state.g.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    @Default([]) List<Recipe> recipes,
    @Default(false) bool isLoading,
    @Default('Recent Search') String serachTitle,
    @Default('') String resultsCount,
  }) = _SearchState;

  factory SearchState.fromJson(Map<String, dynamic> json) =>
      _$SearchStateFromJson(json);
}
