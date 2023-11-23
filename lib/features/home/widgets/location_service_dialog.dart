import 'package:driver/extensions/build_context_ext.dart';
import 'package:driver/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationServiceDialog extends StatelessWidget {
  const LocationServiceDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) => AlertDialog(
        surfaceTintColor: context.colorScheme.background,
        icon: const Icon(Icons.location_on_outlined),
        iconColor: context.colorScheme.primary,
        title: Text(
          !state.isPermissionGranted
              ? context.localization.updateLocationSetting
              : context.localization.enableLocationTitle,
        ),
        content: Text(
          !state.isPermissionGranted
              ? context.localization.locationPermissionDesc
              : context.localization.locationDialogDesc,
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(false),
            child: Text(
              context.localization.nowNowLocation,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.secondary,
              ),
            ),
          ),
          TextButton(
            onPressed: () async {
              bool? status;
              if (!state.isPermissionGranted) {
                status = await openAppSettings();
              } else {
                status = await Geolocator.openLocationSettings();
              }

              context.pop(status ?? false);
            },
            child: Text(
              !state.isPermissionGranted
                  ? context.localization.openSetting
                  : context.localization.enable,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
