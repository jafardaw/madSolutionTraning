import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:madsolutionproject/Feture/cart/presentation/manger/cart_cubit.dart';
import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';
import 'package:madsolutionproject/Feture/them/presentation/manger/theme_cubit.dart';
import 'package:madsolutionproject/core/util/app_router.dart';
import 'package:madsolutionproject/core/util/hive_helper.dart';
import 'package:madsolutionproject/core/util/service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(ProductModelAdapter());

  await HiveHelper.init();
  await HiveHelper.initThem();
  await di.init();

  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 720),
      splitScreenMode: true,
      builder: (context, child) => child!,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CartCubit()),
        BlocProvider(
          create: (context) => di.getIt<ThemeCubit>()..loadCurrentTheme,
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          final isDark = state is ThemeLoaded ? state.isDark : false;

          return MaterialApp.router(
            theme: ThemeData(
              fontFamily: 'Calibri',
              brightness: Brightness.light,
            ),
            darkTheme: ThemeData(
              fontFamily: 'Calibri',
              brightness: Brightness.dark,
            ),
            themeMode: ThemeMode.dark,
            // isDark ? ThemeMode.dark : ThemeMode.light,
            debugShowCheckedModeBanner: false,
            title: 'MAD Solution',
            routerConfig: router,
          );
        },
      ),
    );
  }
}
