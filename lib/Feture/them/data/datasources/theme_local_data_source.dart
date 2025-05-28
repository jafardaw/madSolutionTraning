import 'package:hive/hive.dart';

abstract class ThemeLocalDataSource {
  bool getTheme();
  Future<void> saveTheme(bool isDark);
}

class ThemeLocalDataSourceImpl implements ThemeLocalDataSource {
  static const String _boxName = 'theme_preferences';
  static const String _key = 'isDarkMode';

  @override
  bool getTheme() {
    final box = Hive.box<bool>(_boxName);
    return box.get(_key, defaultValue: false) ?? false;
  }

  @override
  Future<void> saveTheme(bool isDark) async {
    final box = Hive.box<bool>(_boxName);
    await box.put(_key, isDark);
  }
}
