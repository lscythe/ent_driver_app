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

class _PermissionScreenState extends State<PermissionScreen>
    with WidgetsBindingObserver {
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
                      Icon(
                        Icons.location_on_outlined,
                        color: context.colorScheme.primary,
                        size: 36,
                      ),
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
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(KRadius.r16.size),
                        ),
                        child: Assets.images.locationTracking.image(scale: 1.5),
                      ),
                    ],
                  ),
                ),
              ),
              KElevatedButton(
                label: state.isPermissionPermanentlyDenied &&
                        !state.isPermissionAlwaysGranted
                    ? context.localization.openSetting
                    : context.localization.allow,
                mainAxisSize: MainAxisSize.max,
                onPressed: () async {
                  if (!state.isPermissionPermanentlyDenied &&
                      !state.isPermissionAlwaysGranted) {
                    openAppSettings();
                  } else {
                    context.read<PermissionCubit>().requestPermission();
                  }
                },
              ),
              Spaces.h16.size,
              KElevatedButton(
                backgroundColor: context.colorScheme.secondary,
                label: context.localization.notNow,
                mainAxisSize: MainAxisSize.max,
                onPressed: () => context.go(HomeScreen.path),
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
