// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_flutter/hive_flutter.dart' as _i986;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pet_recipe_explorer/core/di/injection.dart' as _i693;
import 'package:pet_recipe_explorer/core/theme/theme_cubit.dart' as _i538;
import 'package:pet_recipe_explorer/features/photos/data/datasources/photos_remote_data_source.dart'
    as _i8;
import 'package:pet_recipe_explorer/features/photos/data/repositories/photos_repository_impl.dart'
    as _i155;
import 'package:pet_recipe_explorer/features/photos/domain/repositories/photos_repository.dart'
    as _i871;
import 'package:pet_recipe_explorer/features/photos/presentation/cubit/photos_cubit.dart'
    as _i221;
import 'package:pet_recipe_explorer/features/recipes/data/datasources/recipes_remote_data_source.dart'
    as _i503;
import 'package:pet_recipe_explorer/features/recipes/data/repositories/recipes_repository_impl.dart'
    as _i238;
import 'package:pet_recipe_explorer/features/recipes/domain/repositories/recipes_repository.dart'
    as _i772;
import 'package:pet_recipe_explorer/features/recipes/presentation/cubit/recipes_cubit.dart'
    as _i891;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i538.ThemeCubit>(() => _i538.ThemeCubit());
    gh.singleton<_i361.Dio>(() => registerModule.dio);
    await gh.singletonAsync<_i986.Box<dynamic>>(
      () => registerModule.box,
      preResolve: true,
    );
    gh.factory<_i503.RecipesRemoteDataSource>(
        () => _i503.RecipesRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i8.PhotosRemoteDataSource>(
        () => _i8.PhotosRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i772.RecipesRepository>(
        () => _i238.RecipesRepositoryImpl(gh<_i503.RecipesRemoteDataSource>()));
    gh.factory<_i891.RecipesCubit>(
        () => _i891.RecipesCubit(gh<_i772.RecipesRepository>()));
    gh.factory<_i871.PhotosRepository>(
        () => _i155.PhotosRepositoryImpl(gh<_i8.PhotosRemoteDataSource>()));
    gh.factory<_i221.PhotosCubit>(
        () => _i221.PhotosCubit(gh<_i871.PhotosRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i693.RegisterModule {}
