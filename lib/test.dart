import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madsolutionproject/Feture/them/presentation/manger/theme_cubit.dart';
import 'package:madsolutionproject/Feture/them/presentation/view/widget/switch_them.dart';

class ThemeSwitcherPage extends StatelessWidget {
  const ThemeSwitcherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('إعدادات المظهر')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [buildThemeSwitchTile(context)]),
      ),
    );
  }
}
