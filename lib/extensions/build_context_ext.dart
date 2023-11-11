import 'package:driver/generated/l10n.dart';
import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  S get localization => S.of(this);

  void hideKeyboard() => FocusScope.of(this).unfocus();

  ScaffoldMessengerState get scaffoldMessage => ScaffoldMessenger.of(this);
}
