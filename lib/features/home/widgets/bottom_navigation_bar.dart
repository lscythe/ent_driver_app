import 'package:driver/app/themes/themes.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KBottomNavigationBar extends StatelessWidget {
  const KBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) => previous.index != current.index,
      builder: (context, state) {
        return Material(
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
                  color: state.hasCheckIn
                      ? context.colorScheme.secondary
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
        );
      },
    );
  }
}
