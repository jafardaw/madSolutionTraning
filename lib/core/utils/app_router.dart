import 'package:go_router/go_router.dart';
import 'package:madsolutionproject/Feture/Auth/login/presentation/veiw/login_view.dart';
import 'package:madsolutionproject/Feture/Auth/login/presentation/veiw/register_view.dart';
import 'package:madsolutionproject/Feture/splash/splash_view.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'splash',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: '/register',
      name: 'register',
      builder: (context, state) => const RegisterView(),
    ),
  ],
);
