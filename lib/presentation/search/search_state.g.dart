// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchStateImpl _$$SearchStateImplFromJson(Map<String, dynamic> json) =>
    _$SearchStateImpl(
      recipes: (json['recipes'] as List<dynamic>?)
              ?.map((e) => Recipe.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      serachTitle: json['serachTitle'] as String? ?? 'Recent Search',
      resultsCount: json['resultsCount'] as String? ?? '',
    );

Map<String, dynamic> _$$SearchStateImplToJson(_$SearchStateImpl instance) =>
    <String, dynamic>{
      'recipes': instance.recipes,
      'isLoading': instance.isLoading,
      'serachTitle': instance.serachTitle,
      'resultsCount': instance.resultsCount,
    };
