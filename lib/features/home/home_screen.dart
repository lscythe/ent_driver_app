import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/home/cubit/home_cubit.dart';
import 'package:driver/generated/assets.gen.dart';
import 'package:driver/locator/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.child, {super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(context),
        body: child,
        bottomNavigationBar: _bottomNavigationBar(context));
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      leading: Assets.images.appLogo2.image(scale: 3.5),
      title: Text(
        "Scheduling System".toUpperCase(),
        style: context.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            AppIcons.logout,
          ),
        ),
      ],
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BlocProvider(
      create: (context) => locator.get<HomeCubit>(),
      child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) => previous.index != current.index,
        builder: (context, state) {
          return BottomNavigationBar(
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
                icon: Icon(AppIcons.trip,),
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
            onTap: (value) {
              if (state.index != value) {
                context.read<HomeCubit>().onNavigationChanged(value);
                context.go(state.path);
              }
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: context.colorScheme.primary,
            unselectedItemColor: context.colorScheme.secondary,
            selectedItemColor: context.colorScheme.onPrimary,
          );
        },
      ),
    );
  }
}
