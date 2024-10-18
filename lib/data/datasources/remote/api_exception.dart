class ApiException implements Exception {

  final dynamic message;

  ApiException({required this.message});

  @override
  String toString() {
    // TODO: implement toString
    if (message is String) {
      return message;
    }
    return 'Error $message';
  }
}