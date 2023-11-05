part of 'themes.dart';

class KColors {
  static const Color vividTangerine = Color(0xFFFFA089);
  static const Color iris = Color(0xFF6258C4);

  static const ColorScheme lightScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFd76d48),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF395BA9),
    onSecondary: Color(0xFFFFFFFF),
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    background: Color(0xFFFFFBFF),
    onBackground: Color(0xFF201A18),
    surface: Color(0xFFFFFBFF),
    onSurface: Color(0xFF201A18),
  );

  static const ColorScheme darkScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFFFB59D),
    onPrimary: Color(0xFF5D1900),
    secondary: Color(0xFFB1C5FF),
    onSecondary: Color(0xFF002C71),
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF93000A),
    background: Color(0xFF201A18),
    onBackground: Color(0xFFEDE0DC),
    surface: Color(0xFF201A18),
    onSurface: Color(0xFFEDE0DC),
  );
}
