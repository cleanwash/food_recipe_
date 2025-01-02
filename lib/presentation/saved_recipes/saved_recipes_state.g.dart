// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_recipes_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavedRecipesStateImpl _$$SavedRecipesStateImplFromJson(
        Map<String, dynamic> json) =>
    _$SavedRecipesStateImpl(
      recipes: (json['recipes'] as List<dynamic>?)
              ?.map((e) => Recipe.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$SavedRecipesStateImplToJson(
        _$SavedRecipesStateImpl instance) =>
    <String, dynamic>{
      'recipes': instance.recipes,
      'isLoading': instance.isLoading,
    };
