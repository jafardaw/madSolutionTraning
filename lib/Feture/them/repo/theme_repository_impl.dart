import 'package:madsolutionproject/Feture/them/data/datasources/theme_local_data_source.dart';
import 'package:madsolutionproject/Feture/them/repo/theme_repository.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeLocalDataSource localDataSource;

  ThemeRepositoryImpl({required this.localDataSource});

  @override
  bool getCurrentTheme() {
    return localDataSource.getTheme();
  }

  @override
  Future<void> changeTheme(bool isDark) async {
    await localDataSource.saveTheme(isDark);
  }
}
