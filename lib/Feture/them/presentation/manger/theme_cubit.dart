import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:madsolutionproject/Feture/them/repo/theme_repository.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final ThemeRepository repository;

  ThemeCubit({required this.repository}) : super(ThemeInitial()) {
    loadCurrentTheme();
  }

  void loadCurrentTheme() {
    final isDark = repository.getCurrentTheme();
    emit(ThemeLoaded(isDark));
  }

  Future<void> toggleTheme() async {
    final currentState = state;
    if (currentState is ThemeLoaded) {
      final newTheme = !currentState.isDark;
      await repository.changeTheme(newTheme);
      emit(ThemeLoaded(newTheme));
    }
  }
}
