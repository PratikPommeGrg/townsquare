import '../enums/enums.dart';

class ApiConfig {
  //prod,dev,stage
  static Environment env = Environment.staging;

  static const String localhost = "";
  static const String stagingServerUrl = "";
  static String prodServerUrl = "";

  static String baseUrl = (env == Environment.production
      ? prodServerUrl
      : env == Environment.staging
          ? stagingServerUrl
          : localhost);
}
