import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madsolutionproject/Feture/cart/presentation/manger/cart_cubit.dart';
import 'package:madsolutionproject/core/utils/app_router.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: MaterialApp.router(
        theme: ThemeData(fontFamily: 'Calibri'),
        debugShowCheckedModeBanner: false,

        title: 'MAD Solution',

        routerConfig: router,
      ),
    );
  }
}
