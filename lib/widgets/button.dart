import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:flutter/material.dart';

class KElevatedButton extends StatelessWidget {
  const KElevatedButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
  });

  final VoidCallback onPressed;
  final String label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: context.colorScheme.primary,
      ),
      child: Padding(
        padding: Paddings.a12.size,
        child: Row(
          children: [
            prefixIcon ?? Container(),
            Expanded(
                child: Text(
              label,
              style: context.textTheme.labelLarge?.copyWith(
                color: context.colorScheme.onPrimary,
              ),
              textAlign: prefixIcon != null && suffixIcon != null
                  ? TextAlign.start
                  : TextAlign.center,
            )),
            suffixIcon ?? Container(),
          ],
        ),
      ),
    );
  }
}
