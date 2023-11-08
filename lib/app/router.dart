import 'package:driver/constants/constants.dart';
import 'package:driver/features/features.dart';
import 'package:driver/locator/locator.dart';
import 'package:driver/services/service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "shellRoute");

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: CheckInScreen.path,
  routes: [
    GoRoute(
      path: LoginScreen.path,
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => HomeScreen(navigationShell),
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorKey,
          initialLocation: CheckInScreen.path,
          routes: [
            GoRoute(
              path: CheckInScreen.path,
              name: CheckInScreen.name,
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: CheckInScreen()),
            ),
            GoRoute(
              path: ScheduleScreen.path,
              name: ScheduleScreen.name,
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: ScheduleScreen()),
            ),
            GoRoute(
              path: TripScreen.path,
              name: TripScreen.name,
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: TripScreen()),
            ),
            GoRoute(
              path: MessageScreen.path,
              name: MessageScreen.name,
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: MessageScreen()),
            ),
          ],
        ),
      ],
    ),
  ],
  redirect: (context, state) async {
    final accessToken =
        await locator<SecureStorageService>().read(PreferenceKeys.accessToken);
    final isLoggingIn = state.path == LoginScreen.path;

    if (accessToken.isEmpty) return isLoggingIn ? null : LoginScreen.path;

    if (isLoggingIn) return CheckInScreen.path;

    return null;
  },
);
