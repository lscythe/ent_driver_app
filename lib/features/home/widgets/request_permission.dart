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
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.localization.permissionNeeded,
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                _getPermissionRational(
                  state.permissionStatus.item1,
                  context,
                ),
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              KElevatedButton(label: "Allow"),
            ],
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
}
