import 'package:driver/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CheckInInfoForm extends StatelessWidget {
  const CheckInInfoForm({
    super.key,
    required this.onChanged,
    required this.label,
    this.textInputAction = TextInputAction.done,
  });

  final Function(String value) onChanged;
  final String label;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: context.textTheme.labelLarge?.copyWith(
            color: context.colorScheme.onPrimary,
            fontWeight: FontWeight.w400,
          ),
        ),
        PinCodeTextField(
          appContext: context,
          length: 8,
          backgroundColor: Colors.transparent,
          animationType: AnimationType.none,
          pinTheme: _defaultTheme(context),
          textStyle: context.textTheme.titleMedium?.copyWith(
            color: context.colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          enablePinAutofill: false,
          cursorColor: context.colorScheme.onPrimary,
          textCapitalization: TextCapitalization.characters,
          textInputAction: textInputAction,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          onChanged: onChanged,
          keyboardType: TextInputType.text,
          autoDisposeControllers: false,
        ),
      ],
    );
  }

  PinTheme _defaultTheme(BuildContext context) => PinTheme(
        shape: PinCodeFieldShape.underline,
        fieldWidth: 10,
        activeColor: context.colorScheme.onPrimary,
        inactiveColor: context.colorScheme.onPrimary,
        selectedColor: context.colorScheme.onPrimary,
        fieldHeight: 32,
      );
}
