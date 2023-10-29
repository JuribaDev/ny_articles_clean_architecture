class Failure extends Error {
  Failure({required this.message});

  final String message;

  @override
  String toString() {
    return message;
  }
}
