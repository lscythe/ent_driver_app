import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/build_context_ext.dart';
import 'package:driver/features/features.dart';
import 'package:driver/generated/assets.gen.dart';
import 'package:driver/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionScreen extends StatefulWidget {
  const PermissionScreen({super.key});

  static const String path = "/permission";
  static const String name = "permission_screen";

  @override
  State<PermissionScreen> createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> with WidgetsBindingObserver {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
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
      context.read<PermissionCubit>().checkPermission();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PermissionCubit, PermissionState>(
      builder: (context, state) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Assets.images.location.image(scale: 4),
                      Text(
                        context.localization.locationPermissionTitle,
                        style: context.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spaces.h12.size,
                      Text(
                        context.localization.locationPermissionDesc,
                        textAlign: TextAlign.center,
                        style: context.textTheme.bodyMedium,
                      ),
                      Spaces.h18.size,
                    ],
                  ),
                ),
              ),
              KElevatedButton(
                label: state.isPermissionPermanentlyDenied
                    ? context.localization.openSetting
                    : context.localization.allow,
                mainAxisSize: MainAxisSize.max,
                onPressed: () async {
                  if (!state.isPermissionPermanentlyDenied) {
                    context.read<PermissionCubit>().requestPermission();
                  } else {
                    openAppSettings();
                  }
                },
              ),
            ],
          ),
        ),
      ),
      listener: (context, state) {
        if (state.isPermissionGranted) {
          context.go(HomeScreen.path);
        }
      },
    );
  }
}
