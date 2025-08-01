/// Fungsi [main] akan menampilkan 2 output
/// Output pertama menampilkan teks dan output kedua menampilkan hasil perkalian pada fungsi [calculate]
void main(List<String> arguments) {
  // Mencetak Hello Dart! Dart is great. pada konsol
  print('Hello Dart! Dart is great.');
  // Testing documentation comment with [].
  int number1 = 7;
  int number2 = 10;
  print('$number1 * $number2 = ${calculate(number1,number2)}');
}

int calculate(int number1, int number2) {
  return number1 * number2;
}

/// Output:
/// Hello Dart! Dart is great.
/// 6 * 7 = 42