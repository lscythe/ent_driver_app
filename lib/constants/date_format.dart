enum KDateFormat {
  hhMmA("hh:mm a"),
  eDdMmYyyy("E, dd MMM yyyy"),
  ddMmmYyyyHhMmA("dd-MMM-yyyy, hh:mm a"),
  yyyyMMdd("yyyy-MM-dd"),
  mmmYYYY("MMM yyyy"),
  timestamp("yyyy-MM-d'T'hh:mm:ss"),
  ddMMMyyyy("dd-MMM-yyyy");

  const KDateFormat(this.format);

  final String format;
}