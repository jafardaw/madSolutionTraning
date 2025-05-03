import 'package:go_router/go_router.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/login_view.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/register_view.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/home_view.dart';
import 'package:madsolutionproject/Feture/splash/splash_view.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'splash',
      builder: (context, state) => const HomeView(),
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
    GoRoute(
      path: '/home_view',
      name: 'home_view',
      builder: (context, state) => const RegisterView(),
    ),
  ],
);
