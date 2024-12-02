class ResponseCodeConfig {
  static const int success = 200; // success with data
  static const int created = 201; // success with no data (no content)
  static const int badRequest = 400; // failure, API rejected request
  static const int unauthorised = 401; // failure, user is not authorised
  static const int forbidden = 403; //  failure, API rejected request
  static const int internalServerError = 500; // failure, crash in server side
  static const int notFound = 404; // failure, not found
  static const int conflict = 409;

  // local status code
  static const int connectTimeout = 599;
  static const int cancel = 499;
  static const int receiveTimeout = -3;
  static const int sendTimeout = -4;
  static const int cacheError = 501;
  static const int noInternetConnection = 503;
  static const int defaultErrorCode = -7;
}
