import 'package:bookly_app/featuers/home/presentaion/view/home_screen.dart';
import 'package:bookly_app/featuers/splash/presentaion/view/spalsh_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeView = "/homeView";
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeScreen(),
    ),
  ]);
}
