class AppConfig {
  static final AppConfig _instance = AppConfig._internal();

  AppConfig._internal();

  factory AppConfig() {
    return _instance;
  }

  static const String cAppName = 'Component App';
  static const String cAppVersion = '1.0.0';
  static const String baseURL = 'http://94.74.86.174:8080/api';

  static const bool lShowLog = true;

  static const int nAppVersion = 1;

  //---------cache-------------//

  static const String isRegister = 'cacheIsRegister';
}
