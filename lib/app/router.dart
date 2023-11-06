import 'package:driver/constants/constants.dart';
import 'package:driver/features/features.dart';
import 'package:driver/locator/locator.dart';
import 'package:driver/services/service.dart';
import 'package:go_router/go_router.dart';


final router = GoRouter(
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
    ),
    // ShellRoute(routes: routes)
  ],
  // redirect: (context, state) async {
  //   final accessToken =
  //       await locator<SecureStorageService>().read(PreferenceKeys.accessToken);
  //   final isLoggingIn = state.path == LoginScreen.path;
  //
  //   if (accessToken.isEmpty) return isLoggingIn ? null : LoginScreen.path;
  //
  //   if (isLoggingIn) return HomeScreen.path;
  //
  //   return null;
  // },
);
