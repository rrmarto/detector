class RoverException implements Exception {
  final String message;

  RoverException({required this.message});

  @override
  String toString() {
    return message;
  }
}
