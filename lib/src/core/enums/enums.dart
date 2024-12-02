enum Environment {
  production,
  staging,
  localhost,
}

enum LoggerType {
  fatal,
  trace,
  info,
  warning,
  error,
  debug,
  success,
}


enum ServerExceptionType {
  requestCancelled,
  badCertificate,
  unauthorisedRequest,
  connectionError,
  badRequest,
  notFound,
  requestTimeout,
  sendTimeout,
  receiveTimeout,
  conflict,
  internalServerError,
  notImplemented,
  serviceUnavailable,
  socketException,
  formatException,
  unableToProcess,
  defaultError,
  unexpectedError,
}

