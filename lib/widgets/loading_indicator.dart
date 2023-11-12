import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.colorScheme.onBackground.withOpacity(0.4),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: context.colorScheme.background,
            borderRadius: BorderRadius.circular(KRadius.r8.size),
          ),
          child: Padding(
            padding: Paddings.a18.size,
            child: const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
