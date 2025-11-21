class ApiConstant {
  static const String baseUrl = "https://hosta-api.lenda-agency.com/api";
  static const String imageBaseUrl = "http://75.119.145.174";
  static const String loginEndpoint = "/login";
  static const String homeStatsEndpoint = "/provider/dashboard";
  static const String logoutEndpoint = "/logout";
  static const String registerEndpoint = "/register";
  static const String getLanguagesEndpoint = "/provider/languages";
  static const String setLanguagesEndpoint = "/provider/languages/set";
  static const String bookingEndpoint = "/provider/bookings";
  static const String verifyOtpEndpoint = "/users/{user}/verify-otp";
  static const String resendOtpEndpoint = "/users/{user}/resend-otp";
  static const String meEndpoint = "/me";
  static const String updateProfileEndpoint = "/profile/update";
  static const String workingHoursEndpoint = "/provider/working-hours";
  static const String getServices = "/services";
  static const String setServices = "/provider-services";
  static const String getMyServices = "/provider-services";
  static const String citiesList = "/cities";
  static const String countryList = "/countries";
  static const String refreshTokenEndpoint = "/refresh-token";
  static const String categoryEndpoint = "/categories";
}
