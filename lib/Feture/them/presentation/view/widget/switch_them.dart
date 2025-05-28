import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madsolutionproject/Feture/them/presentation/manger/theme_cubit.dart';

Widget buildThemeSwitchTile(BuildContext context) {
  return BlocBuilder<ThemeCubit, ThemeState>(
    builder: (context, state) {
      final isDark = state is ThemeLoaded ? state.isDark : false;
      final theme = Theme.of(context);

      return AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutQuint,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors:
                isDark
                    ? [Colors.grey[850]!, Colors.grey[900]!]
                    : [Colors.blue[50]!, Colors.white],
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color:
                  isDark
                      ? Colors.black.withOpacity(0.3)
                      : Colors.blue.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 1,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              splashColor:
                  isDark
                      ? Colors.amber.withOpacity(0.2)
                      : Colors.blue.withOpacity(0.2),
              highlightColor: Colors.transparent,
              onTap: () => context.read<ThemeCubit>().toggleTheme(),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 600),
                      transitionBuilder: (child, animation) {
                        return RotationTransition(
                          turns: Tween<double>(
                            begin: 0.5,
                            end: 1,
                          ).animate(animation),
                          child: FadeTransition(
                            opacity: animation,
                            child: ScaleTransition(
                              scale: animation,
                              child: child,
                            ),
                          ),
                        );
                      },
                      child: Icon(
                        isDark ? Icons.nightlight_round : Icons.wb_sunny,
                        key: ValueKey<bool>(isDark),
                        color: isDark ? Colors.amber[300] : Colors.blue[600],
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Theme',
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color:
                                  isDark ? Colors.amber[100] : Colors.blue[800],
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            isDark ? 'Dark Mode' : 'Light Mode',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color:
                                  isDark
                                      ? Colors.grey[400]
                                      : Colors.blueGrey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.scale(
                      scale: 1.2,
                      child: Switch(
                        value: isDark,
                        onChanged:
                            (value) => context.read<ThemeCubit>().toggleTheme(),
                        activeTrackColor: Colors.amber.withOpacity(0.4),
                        activeColor: Colors.amber[300],
                        inactiveTrackColor: Colors.blueGrey.withOpacity(0.3),
                        inactiveThumbColor: Colors.blue[600],
                        thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
                          (states) => Icon(
                            isDark ? Icons.dark_mode : Icons.light_mode,
                            color: isDark ? Colors.grey[900] : Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
