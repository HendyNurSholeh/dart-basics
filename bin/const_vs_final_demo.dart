void main() {
  // CONST - Nilai harus sudah diketahui saat kompilasi
  const String namaApp = "Belajar Dart";
  const int versi = 1;
  const double pi = 3.14159;

  // FINAL - Nilai bisa ditentukan saat runtime
  final DateTime waktuSekarang = DateTime.now(); // Runtime value
  final String pesanWaktu = "Program dijalankan pada: $waktuSekarang";

  // Keduanya bisa digunakan saat runtime
  print("=== CONST (sudah ditentukan saat kompilasi) ===");
  print("Nama App: $namaApp");
  print("Versi: $versi");
  print("PI: $pi");

  print("\n=== FINAL (ditentukan saat runtime) ===");
  print(pesanWaktu);

  // PERBEDAAN UTAMA:
  print("\n=== PERBEDAAN ===");

  // Ini TIDAK BISA dengan const karena DateTime.now() adalah runtime value
  // const DateTime constTime = DateTime.now(); // ERROR!

  // Tapi ini BISA dengan final
  final DateTime finalTime = DateTime.now(); // OK!

  print("Final time: $finalTime");

  // Keduanya tidak bisa diubah setelah diinisialisasi
  // namaApp = "App Baru"; // ERROR!
  // waktuSekarang = DateTime.now(); // ERROR!
}

