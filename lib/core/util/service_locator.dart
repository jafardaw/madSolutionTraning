// lib/core/dependency_injection.dart
import 'package:get_it/get_it.dart';
import 'package:madsolutionproject/Feture/them/data/datasources/theme_local_data_source.dart';
import 'package:madsolutionproject/Feture/them/repo/theme_repository_impl.dart';
import 'package:madsolutionproject/Feture/them/repo/theme_repository.dart';
import 'package:madsolutionproject/Feture/them/presentation/manger/theme_cubit.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerLazySingleton<ThemeLocalDataSource>(
    () => ThemeLocalDataSourceImpl(),
  );

  getIt.registerLazySingleton<ThemeRepository>(
    () => ThemeRepositoryImpl(localDataSource: getIt()),
  );

  getIt.registerFactory<ThemeCubit>(() => ThemeCubit(repository: getIt()));
}
