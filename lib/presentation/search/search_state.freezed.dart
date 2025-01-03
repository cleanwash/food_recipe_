// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchState _$SearchStateFromJson(Map<String, dynamic> json) {
  return _SearchState.fromJson(json);
}

/// @nodoc
mixin _$SearchState {
  List<Recipe> get recipes => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get serachTitle => throw _privateConstructorUsedError;
  String get resultsCount => throw _privateConstructorUsedError;

  /// Serializes this SearchState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<Recipe> recipes,
      bool isLoading,
      String serachTitle,
      String resultsCount});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? isLoading = null,
    Object? serachTitle = null,
    Object? resultsCount = null,
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      serachTitle: null == serachTitle
          ? _value.serachTitle
          : serachTitle // ignore: cast_nullable_to_non_nullable
              as String,
      resultsCount: null == resultsCount
          ? _value.resultsCount
          : resultsCount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Recipe> recipes,
      bool isLoading,
      String serachTitle,
      String resultsCount});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? isLoading = null,
    Object? serachTitle = null,
    Object? resultsCount = null,
  }) {
    return _then(_$SearchStateImpl(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      serachTitle: null == serachTitle
          ? _value.serachTitle
          : serachTitle // ignore: cast_nullable_to_non_nullable
              as String,
      resultsCount: null == resultsCount
          ? _value.resultsCount
          : resultsCount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchStateImpl implements _SearchState {
  _$SearchStateImpl(
      {final List<Recipe> recipes = const [],
      this.isLoading = false,
      this.serachTitle = 'Recent Search',
      this.resultsCount = ''})
      : _recipes = recipes;

  factory _$SearchStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchStateImplFromJson(json);

  final List<Recipe> _recipes;
  @override
  @JsonKey()
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String serachTitle;
  @override
  @JsonKey()
  final String resultsCount;

  @override
  String toString() {
    return 'SearchState(recipes: $recipes, isLoading: $isLoading, serachTitle: $serachTitle, resultsCount: $resultsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.serachTitle, serachTitle) ||
                other.serachTitle == serachTitle) &&
            (identical(other.resultsCount, resultsCount) ||
                other.resultsCount == resultsCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recipes),
      isLoading,
      serachTitle,
      resultsCount);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchStateImplToJson(
      this,
    );
  }
}

abstract class _SearchState implements SearchState {
  factory _SearchState(
      {final List<Recipe> recipes,
      final bool isLoading,
      final String serachTitle,
      final String resultsCount}) = _$SearchStateImpl;

  factory _SearchState.fromJson(Map<String, dynamic> json) =
      _$SearchStateImpl.fromJson;

  @override
  List<Recipe> get recipes;
  @override
  bool get isLoading;
  @override
  String get serachTitle;
  @override
  String get resultsCount;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
