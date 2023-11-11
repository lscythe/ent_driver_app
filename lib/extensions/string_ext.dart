extension NullableStringExt on String? {
  String get orEmpty => this ?? "";
}