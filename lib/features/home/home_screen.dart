import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.navigationShell, {super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        items: _navBarItems(context),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: context.colorScheme.primary,
        unselectedItemColor: context.colorScheme.secondary,
        selectedItemColor: context.colorScheme.onPrimary,
      ),
    );
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

  List<BottomNavigationBarItem> _navBarItems(BuildContext context) {
    return [
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
        icon: const Icon(AppIcons.trip),
        label: context.localization.trip,
        tooltip: context.localization.trip,
      ),
      BottomNavigationBarItem(
        icon: const Icon(AppIcons.message),
        label: context.localization.message,
        tooltip: context.localization.message,
      ),
    ];
  }
}
