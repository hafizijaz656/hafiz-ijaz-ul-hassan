import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../common_widgets/scaffold_with_navigation.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/about/presentation/about_screen.dart';
import '../features/projects/presentation/projects_screen.dart';
import '../features/experience/presentation/experience_screen.dart';
import '../features/contact/presentation/contact_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorHomeKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _shellNavigatorAboutKey = GlobalKey<NavigatorState>(debugLabel: 'about');
final _shellNavigatorProjectsKey = GlobalKey<NavigatorState>(
  debugLabel: 'projects',
);
final _shellNavigatorExperienceKey = GlobalKey<NavigatorState>(
  debugLabel: 'experience',
);
final _shellNavigatorContactKey = GlobalKey<NavigatorState>(
  debugLabel: 'contact',
);

final router = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHomeKey,
          routes: [
            GoRoute(
              path: '/',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: HomeScreen()),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorAboutKey,
          routes: [
            GoRoute(
              path: '/about',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: AboutScreen()),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorProjectsKey,
          routes: [
            GoRoute(
              path: '/projects',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: ProjectsScreen()),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorExperienceKey,
          routes: [
            GoRoute(
              path: '/experience',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: ExperienceScreen()),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorContactKey,
          routes: [
            GoRoute(
              path: '/contact',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: ContactScreen()),
            ),
          ],
        ),
      ],
    ),
  ],
);
