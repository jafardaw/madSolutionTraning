import 'package:flutter/material.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Home Screen'),
        centerTitle: true,
      ),
      body: const HomeViewBody(),
    );
  }
}
