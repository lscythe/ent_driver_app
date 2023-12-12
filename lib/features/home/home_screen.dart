import 'package:driver/app/themes/themes.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:driver/generated/assets.gen.dart';
import 'package:driver/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String path = "/";
  static const String name = "home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool hasCheckIn = false;
  bool isPermissionDialogShown = false;
  bool isLocationServiceDialogShown = false;

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
      ],
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) => Stack(
          children: [
            Scaffold(
              backgroundColor: KColors.antiFlashGray,
              appBar: _appBar(context),
              body: _buildChild(),
              bottomNavigationBar: _buildBottomNavBar(),
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

  Widget _buildBottomNavBar() => BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) => Material(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(KRadius.r32.size),
              topRight: Radius.circular(KRadius.r32.size),
            ),
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(AppIcons.checkIn),
                  label: context.localization.checkIn,
                  tooltip: context.localization.checkIn,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(AppIcons.schedule),
                  label: context.localization.schedule,
                  tooltip: context.localization.schedule,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    AppIcons.trip,
                    color: hasCheckIn
                        ? state.index != 2
                            ? context.colorScheme.secondary
                            : context.colorScheme.onPrimary
                        : KColors.davyGray,
                  ),
                  label: context.localization.trip,
                  tooltip: context.localization.trip,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(AppIcons.message),
                  label: context.localization.message,
                  tooltip: context.localization.message,
                ),
              ],
              currentIndex: state.index,
              onTap: context.read<HomeCubit>().onNavigationChanged,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              backgroundColor: context.colorScheme.primary,
              unselectedItemColor: context.colorScheme.secondary,
              selectedItemColor: context.colorScheme.onPrimary,
            ),
          ),);

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

    if (!state.isPermissionGranted && !isPermissionDialogShown) {
      await requestPermission(state);
    }

    if ((!state.isLocationServiceEnabled && state.isPermissionGranted) &&
        !isLocationServiceDialogShown) {
      await requestLocationService(state);
    }

    setState(() {
      hasCheckIn = state.hasCheckIn;
    });
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

  Future<void> requestPermission(HomeState state) async {
    setState(() {
      isPermissionDialogShown = !isPermissionDialogShown;
    });
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => PermissionDialog(
        onCloseTap: () {
          context.pop();
          setState(() {
            isPermissionDialogShown = !isPermissionDialogShown;
          });
        },
        onConfirmTap: () {
          context.pop();
          Permission.locationAlways.request();
        },
      ),
    );
  }

  Future<void> requestLocationService(HomeState state) async {
    setState(() {
      isLocationServiceDialogShown = !isLocationServiceDialogShown;
    });
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => LocationServiceDialog(
        onCloseTap: () {
          context.pop();
          setState(() {
            isLocationServiceDialogShown = !isLocationServiceDialogShown;
          });
        },
        onConfirmTap: () {
          context.pop();
          Geolocator.openLocationSettings();
        },
      ),
    );
  }
}
