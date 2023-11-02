part of '../login_screen.dart';

class KTextField extends StatelessWidget {
  const KTextField({
    super.key,
    required this.hint,
    this.contentPadding,
    this.suffixIcon,
    this.controller,
    this.obscureText = false,
    this.textInputAction,
    this.inputType,
    this.onSubmitted,
    required this.label,
  });

  final String hint;
  final String label;
  final EdgeInsets? contentPadding;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final TextInputType? inputType;
  final Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        TextField(
          controller: controller,
          obscureText: obscureText,
          textInputAction: textInputAction,
          keyboardType: inputType,
          onSubmitted: onSubmitted,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            contentPadding: contentPadding ??
                const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            hintText: hint,
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
