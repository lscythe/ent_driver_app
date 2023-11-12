import 'package:driver/data/repositories/auth_repository.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:driver/locator/locator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: HomeScreen.path,
  routes: [
    GoRoute(
      path: LoginScreen.path,
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: HomeScreen.path,
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),
  ],
  redirect: (context, state) async {
    final accessToken = await locator<AuthRepository>().accessToken();
    final lastLoggedIn = locator<AuthRepository>().lastLogin();

    final isLoggingIn = state.path == LoginScreen.path;

    if (!lastLoggedIn.isZero) {
      final formattedLastLoggedIn =
          DateTime.fromMillisecondsSinceEpoch(lastLoggedIn);
      final isExpired =
          DateTime.now().difference(formattedLastLoggedIn).inHours >= 24;

      if (accessToken.isNotEmpty && isExpired) {
        return isLoggingIn ? null : LoginScreen.path;
      }
    }

    if (accessToken.isEmpty) return isLoggingIn ? null : LoginScreen.path;

    if (isLoggingIn) return HomeScreen.path;

    return null;
  },
);
