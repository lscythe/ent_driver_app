part of 'themes.dart';

class KColors {
  static const Color vividTangerine = Color(0xFFFFA089);
  static const Color iris = Color(0xFF6258C4);
  static const Color davyGray = Color(0xFF4F4F4F);
  static const Color antiFlashGray = Color(0xFFE7E9EE);
  static const Color charcoal = Color(0xFF464E62);
  static const Color paidLeave = Color(0xFFEAFFC8);
  static const Color unpaidLeave = Color(0xFFCFF6FF);
  static const Color pendingLeave = Color(0xFF76FF9F);
  static const Color medicalLeave= Color(0xFFFFB8A4);
  static const Color standby = Color(0xFFFFFFFF);
  static const Color working = Color(0xFF344775);
  static const Color inactiveColor = Color(0xFFD5D4DF);
  static const Color inactiveTextColor = Color(0xFFA8A8A8);
  static const Color todayColor = Color(0xFF45539D);

  static const ColorScheme lightScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFd76d48),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF344775),
    onSecondary: Color(0xFFFFFFFF),
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    background: Color(0xFFFFFBFF),
    onBackground: Color(0xFF1C1B1F),
    surface: Color(0xFFFFFBFE),
    onSurface: Color(0xFF1C1B1F),
  );

  static const ColorScheme darkScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFFFB59D),
    onPrimary: Color(0xFF5D1900),
    secondary: Color(0xFFB1C5FF),
    onSecondary: Color(0xFF002C71),
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF93000A),
    background: Color(0xFF1C1B1F),
    onBackground: Color(0xFFE6E1E5),
    surface: Color(0xFF1C1B1F),
    onSurface: Color(0xFFE6E1E5),
  );
}
