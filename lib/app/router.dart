import 'package:driver/data/repositories/auth_repository.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:driver/locator/locator.dart';
import 'package:driver/models/models.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

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
      builder: (context, state) => const HomeScreen(),
      redirect: (context, state) async {
        final accessToken = await locator<AuthRepository>().accessToken();
        final lastLoggedIn = locator<AuthRepository>().lastLogin();

        final isLoggingIn = state.path == LoginScreen.path;

        final isLocationAccessGranted =
            await Permission.location.status.isGranted;

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

        if (!isLocationAccessGranted) return PermissionScreen.path;

        return null;
      },
    ),
    GoRoute(
      path: TripFormDetail.path,
      name: TripFormDetail.name,
      builder: (context, state) {
        final ListTripFormResponse? data = state.extra as ListTripFormResponse?;
        return TripFormDetail(
          isEdit: data != null,
          response: data,
        );
      },
    ),
    GoRoute(
      path: PermissionScreen.path,
      name: PermissionScreen.name,
      builder: (context, state) => const PermissionScreen(),
    ),
  ],
);
