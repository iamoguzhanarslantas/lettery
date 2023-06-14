import 'package:go_router/go_router.dart';
import 'package:lettery/src/home/home.dart' show HomePage;


final GoRouter router = GoRouter(
  initialLocation: HomePage.routeName,
  routes: <RouteBase>[
    GoRoute(
      path: HomePage.routeName,
      builder: (context, state) => const HomePage(),
    ),
  ],
);