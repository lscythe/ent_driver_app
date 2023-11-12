import 'package:driver/app/themes/themes.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:driver/features/home/cubit/home_cubit.dart';
import 'package:driver/features/home/widget/bottom_navigation_bar.dart';
import 'package:driver/features/home/widget/logout_dialog.dart';
import 'package:driver/generated/assets.gen.dart';
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
    return BlocConsumer<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor:
              context.isDarkMode ? KColors.charcoal : KColors.antiFlashGray,
          appBar: _appBar(context),
          body: _buildChild(),
          bottomNavigationBar: const KBottomNavigationBar(),
        );
      },
      listener: _blocListener,
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
          child: _child[state.index],
        ),
      ),
    );
  }

  void _blocListener(BuildContext context, HomeState state) {
    final message = switch (state.homeError) {
      HomeError.notCheckIn => context.localization.notCheckIn,
      HomeError.none => null,
    };

    if (message != null) {
      context.scaffoldMessage.showSnackBar(_errorSnackBar(message));
    }
  }

  SnackBar _errorSnackBar(String message) => SnackBar(content: Text(message));
}
