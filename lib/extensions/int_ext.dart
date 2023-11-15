extension IntExt on int {
  bool get isZero => this == 0;
}

extension NullableIntExt on int {
  int get orZero => this ?? 0;
}