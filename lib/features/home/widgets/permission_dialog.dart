import 'package:driver/extensions/build_context_ext.dart';
import 'package:driver/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PermissionDialog extends StatefulWidget {
  const PermissionDialog({
    super.key,
    required this.onCloseTap,
    required this.onConfirmTap,
  });

  final VoidCallback onCloseTap;
  final VoidCallback onConfirmTap;

  @override
  State<PermissionDialog> createState() => _PermissionDialogState();
}

class _PermissionDialogState extends State<PermissionDialog>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    context.read<HomeCubit>().updatePermissionDialogState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.resumed) {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) => AlertDialog(
        surfaceTintColor: context.colorScheme.background,
        icon: const Icon(Icons.location_on_outlined),
        iconColor: context.colorScheme.primary,
        title: Text(context.localization.updateLocationSetting),
        content: Text(
          "${context.localization.locationPermissionDesc} ${context.localization.alwaysLocation}",
        ),
        actions: [
          TextButton(
            onPressed: widget.onCloseTap,
            child: Text(
              context.localization.nowNowLocation,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.secondary,
              ),
            ),
          ),
          TextButton(
            onPressed: widget.onConfirmTap,
            child: Text(
              context.localization.openSetting,
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
