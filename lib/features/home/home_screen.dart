import 'package:driver/app/themes/themes.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:driver/generated/assets.gen.dart';
import 'package:driver/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  static const String path = "/";
  static const String name = "home_screen";

  final List<Widget> _child = [
    const CheckInScreen(),
    const ScheduleScreen(),
    const TripScreen(),
    const MessageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<HomeCubit, HomeState>(listener: _homeListener),
        BlocListener<CheckInCubit, CheckInState>(listener: _checkInListener),
      ],
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Stack(
            children: [
              Scaffold(
                backgroundColor: context.isDarkMode
                    ? KColors.charcoal
                    : KColors.antiFlashGray,
                appBar: _appBar(context),
                body: _buildChild(),
                bottomNavigationBar: const KBottomNavigationBar(),
              ),
              if (state.state == PageState.loading)
                const LoadingIndicator()
              else
                Container(),
            ],
          );
        },
      ),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      leading: Assets.images.appLogo2.image(scale: 3.5),
      title: Text(
        context.localization.appName.toUpperCase(),
        style: context.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () => showDialog(
            context: context,
            builder: (context) => const LogoutDialog(),
          ),
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
          left: KSize.s6.size,
          right: KSize.s6.size,
          top: KSize.s6.size,
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

  void _homeListener(BuildContext context, HomeState state) {
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


  }

  void _checkInListener(BuildContext context, CheckInState state) {
    context.read<HomeCubit>().updateState(
          state.state,
          hasCheckIn: state.hasCheckIn,
          errorMessage: state.errorMessage,
        );
  }

  SnackBar _errorSnackBar(String message) => SnackBar(content: Text(message));
}
