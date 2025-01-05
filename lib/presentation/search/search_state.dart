import 'package:food_recipe/domain/filter/filter_state.dart';
import 'package:food_recipe/domain/model/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    @Default([]) List<Recipe> recipes,
    @Default(false) bool isLoading,
    @Default('Recent Search') String searchTitle,
    @Default('') String resultsCount,
    @Default(FilterState(time: 'All', rate: 1, category: 'All'))
    FilterState filterState,
    @Default('') String query,
  }) = _SearchState;
}
