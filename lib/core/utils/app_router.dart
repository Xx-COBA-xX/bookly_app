import 'package:bookly_app/featuers/home/presentaion/view/book_details_view.dart';
import 'package:bookly_app/featuers/home/presentaion/view/home_screen.dart';
import 'package:bookly_app/featuers/search/presentaion/view/search_view.dart';
import 'package:bookly_app/featuers/splash/presentaion/view/spalsh_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeView = "/homeView";
  static const String kBookDetailsView = "/bookDetailsView";
  static const String kSearchView = "/searchView";
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => const BookDetailsScreen(),
    ),
  ]);
}
