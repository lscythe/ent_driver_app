import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:driver/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

class RequestPermission extends StatelessWidget {
  const RequestPermission({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) => Scaffold(
        backgroundColor: context.colorScheme.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  _getIcon(state.permissionStatus.item1),
                  color: context.colorScheme.primary,
                  size: 128,
                ),
                Spaces.h16.size,
                Text(
                  context.localization.permissionNeeded,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spaces.h12.size,
                Text(
                  _getPermissionRational(
                    state.permissionStatus.item1,
                    context,
                  ),
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                Spaces.h32.size,
                KElevatedButton(
                  label: "Allow",
                  mainAxisSize: MainAxisSize.max,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getPermissionRational(Permission? permission, BuildContext context) {
    if (permission == Permission.location ||
        permission == Permission.locationWhenInUse ||
        permission == Permission.locationAlways) {
      return context.localization.locationPermission;
    } else if (permission == Permission.notification) {
      return context.localization.notificationPermission;
    } else if (permission == Permission.reminders ||
        permission == Permission.scheduleExactAlarm) {
      return context.localization.alarmPermission;
    } else {
      return "";
    }
  }

  IconData _getIcon(Permission? permission) {
    if (permission == Permission.location ||
        permission == Permission.locationWhenInUse ||
        permission == Permission.locationAlways) {
      return Icons.location_off_rounded;
    } else {
      return Icons.notifications_active_rounded;
    }
  }
}
