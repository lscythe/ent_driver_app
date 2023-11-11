class ApiConstants {
  static const String baseUrl = "http://e-scheduling.ent-vision.com";
  static const String apiPath = "/api";
  static const String driverPath = "$apiPath/Driver/";
  static const String authPath = "$apiPath/auth/";
  static const String leavePath = "$apiPath/Leave/";
  static const String transportLocationPath = "$apiPath/TransportLocation/";
  static const String analystPath = "$apiPath/Analyst/";

  static const String contentType = "application/json";
  static const String authorizationHeader = "Authorization";
  static const String bearerToken = "Bearer";

  static const Duration connectTimeout = Duration(seconds: 120);
  static const Duration sendTimeout = Duration(seconds: 120);
  static const Duration receiveTimeout = Duration(seconds: 120);
}
