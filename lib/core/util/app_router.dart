import 'package:go_router/go_router.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/login_view.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/register_view.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/detailes_view.dart';
import 'package:madsolutionproject/Feture/profile/presentation/view/profile_view.dart';
import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/home_view.dart';
import 'package:madsolutionproject/Feture/root_page/presentation/views/root_page.dart';
import 'package:madsolutionproject/Feture/splash/splash_view.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'splash',
      builder: (context, state) => SplashView(),
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
      path: '/root_page',
      name: 'root_page',
      builder: (context, state) => const RootPage(),
    ),
    GoRoute(
      path: '/home_view',
      name: 'home_view',
      builder: (context, state) => const RegisterView(),
    ),
    GoRoute(
      path: '/profile_view',
      name: 'profile_view',
      builder: (context, state) => const ProfileView(),
    ),
    GoRoute(
      path: '/detailes_view',
      name: 'detailes_view',
      builder: (context, state) {
        final productModel = state.extra as ProductModel;

        return DetailesView(productModel: productModel);
      },
    ),
  ],
);
