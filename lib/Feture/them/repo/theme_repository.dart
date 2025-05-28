abstract class ThemeRepository {
  bool getCurrentTheme();
  Future<void> changeTheme(bool isDark);
}
