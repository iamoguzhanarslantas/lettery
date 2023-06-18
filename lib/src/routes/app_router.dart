import 'package:go_router/go_router.dart';
import 'package:lettery/src/home/home.dart' show HomePage, SettingsPage;

final GoRouter router = GoRouter(
  initialLocation: SettingsPage.routeName,
  routes: <RouteBase>[
    GoRoute(
      path: HomePage.routeName,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: SettingsPage.routeName,
      builder: (context, state) => const SettingsPage(),
    ),
  ],
);
