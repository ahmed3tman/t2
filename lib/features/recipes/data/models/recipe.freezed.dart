// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Recipe _$RecipeFromJson(Map<String, dynamic> json) {
  return _Recipe.fromJson(json);
}

/// @nodoc
mixin _$Recipe {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get ingredients => throw _privateConstructorUsedError;
  List<String> get instructions => throw _privateConstructorUsedError;
  int get prepTimeMinutes => throw _privateConstructorUsedError;
  int get cookTimeMinutes => throw _privateConstructorUsedError;
  int get servings => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  String get cuisine => throw _privateConstructorUsedError;
  int get caloriesPerServing => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  List<String> get mealType => throw _privateConstructorUsedError;

  /// Serializes this Recipe to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipeCopyWith<Recipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res, Recipe>;
  @useResult
  $Res call(
      {int id,
      String name,
      List<String> ingredients,
      List<String> instructions,
      int prepTimeMinutes,
      int cookTimeMinutes,
      int servings,
      String difficulty,
      String cuisine,
      int caloriesPerServing,
      List<String> tags,
      int userId,
      String image,
      double rating,
      int reviewCount,
      List<String> mealType});
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res, $Val extends Recipe>
    implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ingredients = null,
    Object? instructions = null,
    Object? prepTimeMinutes = null,
    Object? cookTimeMinutes = null,
    Object? servings = null,
    Object? difficulty = null,
    Object? cuisine = null,
    Object? caloriesPerServing = null,
    Object? tags = null,
    Object? userId = null,
    Object? image = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? mealType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      prepTimeMinutes: null == prepTimeMinutes
          ? _value.prepTimeMinutes
          : prepTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      cookTimeMinutes: null == cookTimeMinutes
          ? _value.cookTimeMinutes
          : cookTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      cuisine: null == cuisine
          ? _value.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String,
      caloriesPerServing: null == caloriesPerServing
          ? _value.caloriesPerServing
          : caloriesPerServing // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeImplCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$$RecipeImplCopyWith(
          _$RecipeImpl value, $Res Function(_$RecipeImpl) then) =
      __$$RecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      List<String> ingredients,
      List<String> instructions,
      int prepTimeMinutes,
      int cookTimeMinutes,
      int servings,
      String difficulty,
      String cuisine,
      int caloriesPerServing,
      List<String> tags,
      int userId,
      String image,
      double rating,
      int reviewCount,
      List<String> mealType});
}

/// @nodoc
class __$$RecipeImplCopyWithImpl<$Res>
    extends _$RecipeCopyWithImpl<$Res, _$RecipeImpl>
    implements _$$RecipeImplCopyWith<$Res> {
  __$$RecipeImplCopyWithImpl(
      _$RecipeImpl _value, $Res Function(_$RecipeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ingredients = null,
    Object? instructions = null,
    Object? prepTimeMinutes = null,
    Object? cookTimeMinutes = null,
    Object? servings = null,
    Object? difficulty = null,
    Object? cuisine = null,
    Object? caloriesPerServing = null,
    Object? tags = null,
    Object? userId = null,
    Object? image = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? mealType = null,
  }) {
    return _then(_$RecipeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: null == instructions
          ? _value._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      prepTimeMinutes: null == prepTimeMinutes
          ? _value.prepTimeMinutes
          : prepTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      cookTimeMinutes: null == cookTimeMinutes
          ? _value.cookTimeMinutes
          : cookTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      cuisine: null == cuisine
          ? _value.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String,
      caloriesPerServing: null == caloriesPerServing
          ? _value.caloriesPerServing
          : caloriesPerServing // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      mealType: null == mealType
          ? _value._mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeImpl implements _Recipe {
  const _$RecipeImpl(
      {required this.id,
      required this.name,
      required final List<String> ingredients,
      required final List<String> instructions,
      required this.prepTimeMinutes,
      required this.cookTimeMinutes,
      required this.servings,
      required this.difficulty,
      required this.cuisine,
      required this.caloriesPerServing,
      required final List<String> tags,
      required this.userId,
      required this.image,
      required this.rating,
      required this.reviewCount,
      required final List<String> mealType})
      : _ingredients = ingredients,
        _instructions = instructions,
        _tags = tags,
        _mealType = mealType;

  factory _$RecipeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<String> _ingredients;
  @override
  List<String> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<String> _instructions;
  @override
  List<String> get instructions {
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructions);
  }

  @override
  final int prepTimeMinutes;
  @override
  final int cookTimeMinutes;
  @override
  final int servings;
  @override
  final String difficulty;
  @override
  final String cuisine;
  @override
  final int caloriesPerServing;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final int userId;
  @override
  final String image;
  @override
  final double rating;
  @override
  final int reviewCount;
  final List<String> _mealType;
  @override
  List<String> get mealType {
    if (_mealType is EqualUnmodifiableListView) return _mealType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealType);
  }

  @override
  String toString() {
    return 'Recipe(id: $id, name: $name, ingredients: $ingredients, instructions: $instructions, prepTimeMinutes: $prepTimeMinutes, cookTimeMinutes: $cookTimeMinutes, servings: $servings, difficulty: $difficulty, cuisine: $cuisine, caloriesPerServing: $caloriesPerServing, tags: $tags, userId: $userId, image: $image, rating: $rating, reviewCount: $reviewCount, mealType: $mealType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions) &&
            (identical(other.prepTimeMinutes, prepTimeMinutes) ||
                other.prepTimeMinutes == prepTimeMinutes) &&
            (identical(other.cookTimeMinutes, cookTimeMinutes) ||
                other.cookTimeMinutes == cookTimeMinutes) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.cuisine, cuisine) || other.cuisine == cuisine) &&
            (identical(other.caloriesPerServing, caloriesPerServing) ||
                other.caloriesPerServing == caloriesPerServing) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            const DeepCollectionEquality().equals(other._mealType, _mealType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_instructions),
      prepTimeMinutes,
      cookTimeMinutes,
      servings,
      difficulty,
      cuisine,
      caloriesPerServing,
      const DeepCollectionEquality().hash(_tags),
      userId,
      image,
      rating,
      reviewCount,
      const DeepCollectionEquality().hash(_mealType));

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeImplCopyWith<_$RecipeImpl> get copyWith =>
      __$$RecipeImplCopyWithImpl<_$RecipeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeImplToJson(
      this,
    );
  }
}

abstract class _Recipe implements Recipe {
  const factory _Recipe(
      {required final int id,
      required final String name,
      required final List<String> ingredients,
      required final List<String> instructions,
      required final int prepTimeMinutes,
      required final int cookTimeMinutes,
      required final int servings,
      required final String difficulty,
      required final String cuisine,
      required final int caloriesPerServing,
      required final List<String> tags,
      required final int userId,
      required final String image,
      required final double rating,
      required final int reviewCount,
      required final List<String> mealType}) = _$RecipeImpl;

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$RecipeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<String> get ingredients;
  @override
  List<String> get instructions;
  @override
  int get prepTimeMinutes;
  @override
  int get cookTimeMinutes;
  @override
  int get servings;
  @override
  String get difficulty;
  @override
  String get cuisine;
  @override
  int get caloriesPerServing;
  @override
  List<String> get tags;
  @override
  int get userId;
  @override
  String get image;
  @override
  double get rating;
  @override
  int get reviewCount;
  @override
  List<String> get mealType;

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeImplCopyWith<_$RecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecipesResponse _$RecipesResponseFromJson(Map<String, dynamic> json) {
  return _RecipesResponse.fromJson(json);
}

/// @nodoc
mixin _$RecipesResponse {
  List<Recipe> get recipes => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this RecipesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecipesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipesResponseCopyWith<RecipesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesResponseCopyWith<$Res> {
  factory $RecipesResponseCopyWith(
          RecipesResponse value, $Res Function(RecipesResponse) then) =
      _$RecipesResponseCopyWithImpl<$Res, RecipesResponse>;
  @useResult
  $Res call({List<Recipe> recipes, int total, int skip, int limit});
}

/// @nodoc
class _$RecipesResponseCopyWithImpl<$Res, $Val extends RecipesResponse>
    implements $RecipesResponseCopyWith<$Res> {
  _$RecipesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipesResponseImplCopyWith<$Res>
    implements $RecipesResponseCopyWith<$Res> {
  factory _$$RecipesResponseImplCopyWith(_$RecipesResponseImpl value,
          $Res Function(_$RecipesResponseImpl) then) =
      __$$RecipesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Recipe> recipes, int total, int skip, int limit});
}

/// @nodoc
class __$$RecipesResponseImplCopyWithImpl<$Res>
    extends _$RecipesResponseCopyWithImpl<$Res, _$RecipesResponseImpl>
    implements _$$RecipesResponseImplCopyWith<$Res> {
  __$$RecipesResponseImplCopyWithImpl(
      _$RecipesResponseImpl _value, $Res Function(_$RecipesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_$RecipesResponseImpl(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipesResponseImpl implements _RecipesResponse {
  const _$RecipesResponseImpl(
      {required final List<Recipe> recipes,
      required this.total,
      required this.skip,
      required this.limit})
      : _recipes = recipes;

  factory _$RecipesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipesResponseImplFromJson(json);

  final List<Recipe> _recipes;
  @override
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  final int total;
  @override
  final int skip;
  @override
  final int limit;

  @override
  String toString() {
    return 'RecipesResponse(recipes: $recipes, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesResponseImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_recipes), total, skip, limit);

  /// Create a copy of RecipesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipesResponseImplCopyWith<_$RecipesResponseImpl> get copyWith =>
      __$$RecipesResponseImplCopyWithImpl<_$RecipesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipesResponseImplToJson(
      this,
    );
  }
}

abstract class _RecipesResponse implements RecipesResponse {
  const factory _RecipesResponse(
      {required final List<Recipe> recipes,
      required final int total,
      required final int skip,
      required final int limit}) = _$RecipesResponseImpl;

  factory _RecipesResponse.fromJson(Map<String, dynamic> json) =
      _$RecipesResponseImpl.fromJson;

  @override
  List<Recipe> get recipes;
  @override
  int get total;
  @override
  int get skip;
  @override
  int get limit;

  /// Create a copy of RecipesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipesResponseImplCopyWith<_$RecipesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
