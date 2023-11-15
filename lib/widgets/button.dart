import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:flutter/material.dart';

class KElevatedButton extends StatelessWidget {
  const KElevatedButton({
    super.key,
    this.onPressed,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.borderRadius = 32.0,
    this.backgroundColor,
    this.mainAxisSize = MainAxisSize.min,
    this.bold = false,
  });

  final VoidCallback? onPressed;
  final String label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double borderRadius;
  final Color? backgroundColor;
  final MainAxisSize mainAxisSize;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    final btnLabel = Text(
      label,
      style: context.textTheme.labelLarge?.copyWith(
        color: context.colorScheme.onPrimary,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      ),
      textAlign: prefixIcon != null && suffixIcon != null
          ? TextAlign.start
          : TextAlign.center,
    );
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? context.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Padding(
        padding: Paddings.a12.size,
        child: Row(
          mainAxisSize: mainAxisSize,
          children: [
            prefixIcon ?? Container(),
            if (mainAxisSize == MainAxisSize.max)
              Expanded(child: btnLabel)
            else
              Flexible(child: btnLabel),
            suffixIcon ?? Container(),
          ],
        ),
      ),
    );
  }
}
