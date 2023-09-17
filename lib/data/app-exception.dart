class AppException implements Exception {
  final String? message;
  final String? prefix;

  AppException(this.message, this.prefix);

  @override
  String toString() {
    return '$prefix : $message';
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message, String prefix = ''])
      : super(message, 'خطأ أثناء الاتصال');
}

class BadRequestException extends AppException {
  BadRequestException([String? message, String prefix = ''])
      : super(message, 'طلب غير صالح, $prefix');
}

class UnautherisedException extends AppException {
  UnautherisedException([String? message, String prefix = ''])
      : super(message, 'طلب غير مصرح به, $prefix');
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message, String prefix = ''])
      : super(message, 'إدخال غير صالح, $prefix');
}

class TimeOutException extends AppException {
  TimeOutException([String? message, String prefix = ''])
      : super(message, 'استثناء انقضاء الوقت, $prefix');
}

class NotFoundException extends AppException {
  NotFoundException([String? message, String prefix = ''])
      : super(message, 'الموارد غير موجودة, $prefix');
}

class ServerErrorException extends AppException {
  ServerErrorException([String? message, String prefix = ''])
      : super(message, 'خطأ في الخادم, $prefix');
}

class ServiceUnavailableException extends AppException {
  ServiceUnavailableException([String? message, String prefix = ''])
      : super(message, 'الخدمة غير متاحة, $prefix');
}

class ForbiddenException extends AppException {
  ForbiddenException([String? message, String prefix = ''])
      : super(message, 'الخدمة غير متاحة  $prefix');

}
