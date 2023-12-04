import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:processo_badaro/pages/home_page.dart';
import 'package:processo_badaro/widgets/bottom_bar.dart';

import '../pages/splash_page.dart';

enum RoutePath {
  root(path: '/'),
  splashPage(path: '/splash'),
  homePage(path: '/home');

  const RoutePath({required this.path});

  final String path;
}

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'rootNav');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RoutePath.homePage.path,
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          const CustomBottomNavigationBar(),
      branches: [
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RoutePath.homePage.path,
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RoutePath.splashPage.path,
              builder: (context, state) => const SplashPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(seconds: 0),
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
