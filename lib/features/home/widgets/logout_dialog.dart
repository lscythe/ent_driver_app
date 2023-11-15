import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) => AlertDialog(
        icon: const Icon(AppIcons.logout),
        surfaceTintColor: Colors.transparent,
        title: Text(
          context.localization.logoutTitle,
          style: context.textTheme.titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        content: Text(context.localization.logoutDesc),
        actions: [
          TextButton(
            onPressed: context.pop,
            child: Text(
              context.localization.no,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.secondary,
              ),
            ),
          ),
          TextButton(
            onPressed: () async {
              await context.read<HomeCubit>().logout().whenComplete(() {
                context.dismiss();
                context.go(LoginScreen.path);
              });
            },
            child: Text(
              context.localization.yes,
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
