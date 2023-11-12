enum KDateFormat {
  hhMmA("hh:mm a"),
  eDdMmYyyy("E, dd MMM yyyy");

  const KDateFormat(this.format);

  final String format;
}