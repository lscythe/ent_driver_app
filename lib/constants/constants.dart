export 'api.dart';
export 'date_format.dart';
export 'error_code.dart';
export 'icons.dart';
export 'paddings.dart';
export 'preference_keys.dart';
export 'radius.dart';
export 'spaces.dart';

enum Status { success, loading, failure }

enum PageState { success, loading, failure, idle }

enum MessageType { all, alerts, requests, broadcast }

enum KSize {
  s2(2.0),
  s4(4.0),
  s6(6.0),
  s8(8.0),
  s10(10.0),
  s12(12.0),
  s14(14.0),
  s16(16.0),
  s18(18.0),
  s20(20.0),
  s22(22.0),
  s24(24.0),
  s26(26.0),
  s28(28.0),
  s3p5(3.5);

  const KSize(this.size);

  final double size;
}
