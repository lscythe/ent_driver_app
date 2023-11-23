import 'package:background_location/background_location.dart';
import 'package:driver/app/themes/themes.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:driver/generated/assets.gen.dart';
import 'package:driver/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String path = "/";
  static const String name = "home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool hideScreen = false;

  final List<Widget> _child = [
    const CheckInScreen(),
    const ScheduleScreen(),
    const TripScreen(),
    const MessageScreen(),
  ];

  @override
  void initState() {
    super.initState();

    context.read<HomeCubit>().init();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<HomeCubit, HomeState>(listener: _homeListener),
        BlocListener<CheckInCubit, CheckInState>(listener: _checkInListener),
        BlocListener<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state.location != null) {
              context.read<HomeCubit>().postTracking("LOCATION");
            }
          },
          listenWhen: (previous, current) =>
              previous.location != current.location,
        ),
      ],
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) => Stack(
          children: [
            Scaffold(
              backgroundColor: KColors.antiFlashGray,
              appBar: _appBar(context),
              body: _buildChild(),
              bottomNavigationBar: const KBottomNavigationBar(),
            ),
            if (state.state == PageState.loading)
              const LoadingIndicator()
            else
              Container(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      leading: InkWell(
        child: Assets.images.appLogo2.image(scale: 3.5),
      ),
      title: Text(
        context.localization.appName.toUpperCase(),
        style: context.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () async {
            final bool? isLogout = await showDialog(
              context: context,
              builder: (context) => const LogoutDialog(),
            );

            if (isLogout ?? false) {
              BackgroundLocation.stopLocationService();
              _onLogout();
            }
          },
          icon: const Icon(
            AppIcons.logout,
          ),
        ),
      ],
    );
  }

  Widget _buildChild() {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) => previous.index != current.index,
      builder: (context, state) => Padding(
        padding: EdgeInsets.only(
          left: KSize.s16.size,
          right: KSize.s16.size,
          top: KSize.s16.size,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: context.colorScheme.background,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(KRadius.r10.size),
              topRight: Radius.circular(KRadius.r10.size),
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: _child[state.index],
        ),
      ),
    );
  }

  Future<void> _homeListener(BuildContext context, HomeState state) async {
    final message = switch (state.homeError) {
      HomeError.notCheckIn => context.localization.notCheckIn,
      HomeError.none => null,
    };

    if (message != null) {
      context.scaffoldMessage.showSnackBar(_errorSnackBar(message));
      context.read<HomeCubit>().resetErrorMessage();
    }

    if (state.errorMessage?.isNotEmpty ?? false) {
      context.scaffoldMessage.showSnackBar(_errorSnackBar(state.errorMessage!));
      context.read<HomeCubit>().resetErrorMessage();
    }

    if (state.hasCheckIn) {
      BackgroundLocation.startLocationService(distanceFilter: 10);
    }

    if ((!state.isLocationServiceEnabled || !state.isPermissionGranted) &&
        !state.isDialogOpen) {
      context.read<HomeCubit>().updateDialogState();
      final bool? isEnabled = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const LocationServiceDialog(),
      );

      if (isEnabled ?? false) {
        doLastAction(state.lastAction ?? "");
      }
    }
  }

  void doLastAction(String name) {
    context.read<HomeCubit>().postTracking(name);
  }

  void _checkInListener(BuildContext context, CheckInState state) {
    context.read<HomeCubit>().updateState(
          state.state,
          hasCheckIn: state.hasCheckIn,
          errorMessage: state.errorMessage,
        );
  }

  SnackBar _errorSnackBar(String message) => SnackBar(content: Text(message));

  Future<void> _onLogout() async {
    await context.read<HomeCubit>().logout().whenComplete(
          () => context.go(LoginScreen.path),
        );
  }
}
