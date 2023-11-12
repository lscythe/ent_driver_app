import 'package:driver/app/router.dart';
import 'package:driver/app/themes/themes.dart';
import 'package:driver/features/checkin/cubit/checkin_cubit.dart';
import 'package:driver/features/home/cubit/home_cubit.dart';
import 'package:driver/features/login/cubit/login_cubit.dart';
import 'package:driver/generated/l10n.dart';
import 'package:driver/locator/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class DriverApp extends StatelessWidget {
  const DriverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<LoginCubit>(
            create: (context) => locator.get<LoginCubit>(),
          ),
          BlocProvider<HomeCubit>(
            create: (context) => locator.get<HomeCubit>(),
          ),
          BlocProvider<CheckInCubit>(
            create: (context) => locator.get<CheckInCubit>()..init(),
          ),
        ],
        child: MaterialApp.router(
          title: "Driver",
          theme: lightTheme,
          darkTheme: darkTheme,
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
        ));
  }
}
