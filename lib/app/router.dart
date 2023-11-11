import 'package:driver/constants/constants.dart';
import 'package:driver/features/features.dart';
import 'package:driver/locator/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => HomeScreen(child),
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
  redirect: (context, state) async {
    final accessToken = await locator<FlutterSecureStorage>()
            .read(key: PreferenceKeys.accessToken) ??
        "";
    final lastLoggedIn =
        locator<SharedPreferences>().getInt(PreferenceKeys.lastLogin);
    final isLoggingIn = state.path == LoginScreen.path;

    if (lastLoggedIn != null) {
      final formattedLastLoggedIn =
          DateTime.fromMillisecondsSinceEpoch(lastLoggedIn);
      final isExpired =
          DateTime.now().difference(formattedLastLoggedIn).inHours >= 24;

      if (accessToken.isNotEmpty && isExpired) {
        return isLoggingIn ? null : LoginScreen.path;
      }
    }

    if (accessToken.isEmpty) return isLoggingIn ? null : LoginScreen.path;

    if (isLoggingIn) return CheckInScreen.path;

    return null;
  },
);
