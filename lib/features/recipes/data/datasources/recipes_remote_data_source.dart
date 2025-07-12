import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../models/recipe.dart';

abstract class RecipesRemoteDataSource {
  Future<RecipesResponse> fetchRecipes({required int limit, required int skip});
}

@Injectable(as: RecipesRemoteDataSource)
class RecipesRemoteDataSourceImpl implements RecipesRemoteDataSource {
  final Dio _dio;

  RecipesRemoteDataSourceImpl(this._dio);

  @override
  Future<RecipesResponse> fetchRecipes({
    required int limit,
    required int skip,
  }) async {
    try {
      final response = await _dio.get(
        'https://dummyjson.com/recipes',
        queryParameters: {'limit': limit, 'skip': skip},
      );

      return RecipesResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception('Failed to fetch recipes: ${e.message}');
    }
  }
}
