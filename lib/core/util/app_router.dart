import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/login_view.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/register_view.dart';
import 'package:madsolutionproject/Feture/figma/RoleSelectionScreen/presentation/view/widget/roleselection_screen.dart';
import 'package:madsolutionproject/Feture/figma/auth/login/presentation/view/login_view_figma.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/detailes_view.dart';
import 'package:madsolutionproject/Feture/profile/presentation/view/profile_view.dart';
import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/home_view.dart';
import 'package:madsolutionproject/Feture/root_page/presentation/views/root_page.dart';
import 'package:madsolutionproject/Feture/figma/splashfigma/presentation/view/splash_view_figma.dart';

class AppRoutes {
  // Private constructor to prevent instantiation
  AppRoutes._();

  // Route paths
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String rootPage = '/root_page';
  static const String homeView = '/home_view';
  static const String profileView = '/profile_view';
  static const String detailsView = '/details_view';
  static const String splashViewFigma = '/splash_view_figma';
  static const String roleSelectionScreen = '/roleselection_screen';
  static const String loginViewFigma = '/login_view_figma';

  // Get the GoRouter configuration
  static GoRouter get router => _router;

  // Actual router configuration
  static final _router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(
        path: splash,
        name: splash,
        builder: (context, state) => const SplashViewFigma(),
      ),
      GoRoute(
        path: login,
        name: login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: register,
        name: register,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: rootPage,
        name: rootPage,
        builder: (context, state) => const RootPage(),
      ),
      GoRoute(
        path: homeView,
        name: homeView,
        builder:
            (context, state) =>
                const HomeView(), // Fixed from RegisterView to HomeView
      ),
      GoRoute(
        path: profileView,
        name: profileView,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: detailsView,
        name: detailsView,
        builder: (context, state) {
          final productModel = state.extra as ProductModel;
          return DetailesView(productModel: productModel);
        },
      ),
      GoRoute(
        path: splashViewFigma,
        name: splashViewFigma,
        builder: (context, state) => const SplashViewFigma(),
      ),
      GoRoute(
        path: roleSelectionScreen,
        name: roleSelectionScreen,
        builder: (context, state) => const RoleSelectionScreen(),
      ),
      GoRoute(
        path: loginViewFigma,
        name: loginViewFigma,
        builder: (context, state) => const LoginViewFigma(),
      ),
    ],
  );

  static void pushNamed(
    BuildContext context,
    String routeName, {
    Object? extra,
  }) {
    GoRouter.of(context).pushNamed(routeName, extra: extra);
  }

  static void goNamed(BuildContext context, String routeName, {Object? extra}) {
    GoRouter.of(context).goNamed(routeName, extra: extra);
  }
}
