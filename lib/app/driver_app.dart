import 'package:driver/app/router.dart';
import 'package:driver/app/themes/themes.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/features/features.dart';
import 'package:driver/generated/l10n.dart';
import 'package:driver/locator/locator.dart';
import 'package:driver/services/local_notification_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class DriverApp extends StatefulWidget {
  const DriverApp({super.key});

  @override
  State<DriverApp> createState() => _DriverAppState();
}

class _DriverAppState extends State<DriverApp> {
  _DriverAppState() {
    FirebaseMessaging.onMessage.listen((event) {
      LocalNotificationService.showNotification(event);
    });
    FirebaseMessaging.onBackgroundMessage(
      (message) => LocalNotificationService.showNotification(message),
    );
  }

  @override
  void initState() {
    super.initState();
    LocalNotificationService.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(
          create: (context) => locator.get<LoginCubit>()..init(),
        ),
        BlocProvider<HomeCubit>(
          create: (context) => locator.get<HomeCubit>()..init(),
        ),
        BlocProvider<CheckInCubit>(
          create: (context) => locator.get<CheckInCubit>()..init(),
        ),
        BlocProvider<ScheduleCubit>(
          create: (context) => locator.get<ScheduleCubit>()..init(),
        ),
        BlocProvider<TripCubit>(
          create: (context) => locator.get<TripCubit>()..init(),
        ),
        BlocProvider<MessageCubit>(
          create: (context) => locator.get<MessageCubit>()..init(),
        ),
        BlocProvider<PermissionCubit>(
          create: (context) => PermissionCubit(),
        ),
      ],
      child: MaterialApp.router(
        title: appName,
        theme: lightTheme,
        themeMode: ThemeMode.light,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
