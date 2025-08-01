void main() {
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e, s) {
    print('Can not divide by zero.');
    print('Error: $e');
    print('Error message: ${e.toString()}');
    print('Stack trace: $s');
  }
}