void main() {
  print("=== BERBAGAI MACAM FUNCTION DART ===\n");

  // 1. Function tanpa parameter dan return
  print("1. Function tanpa parameter dan return:");
  sayHello();

  // 2. Function dengan parameter
  print("\n2. Function dengan parameter:");
  greetUser("Achmad");
  greetUser("Siti");

  // 3. Function dengan return value
  print("\n3. Function dengan return value:");
  String nama = getName();
  print("Nama yang dikembalikan: $nama");

  // 4. Function dengan parameter dan return
  print("\n4. Function dengan parameter dan return:");
  int hasil = tambah(5, 3);
  print("5 + 3 = $hasil");

  // 5. Function dengan multiple parameters
  print("\n5. Function dengan multiple parameters:");
  String biodata = buatBiodata("John", 25, "Jakarta");
  print(biodata);

  // 6. Function dengan optional parameters
  print("\n6. Function dengan optional parameters:");
  hitungLuas(5); // hanya panjang
  hitungLuas(5, 3); // panjang dan lebar

  // 7. Function dengan named parameters
  print("\n7. Function dengan named parameters:");
  buatProfil(nama: "Alice", umur: 30);
  buatProfil(nama: "Bob", umur: 25, kota: "Bandung");

  // 8. Function dengan default parameter values
  print("\n8. Function dengan default parameter values:");
  ucapkanSelamat(); // menggunakan default
  ucapkanSelamat("Selamat Ulang Tahun"); // custom message

  // 9. Arrow function (single expression)
  print("\n9. Arrow function:");
  print("Kuadrat dari 4: ${kuadrat(4)}");
  print("Apakah 10 genap? ${isGenap(10)}");

  // 10. Function sebagai variable
  print("\n10. Function sebagai variable:");
  var operasiTambah = (int a, int b) => a + b;
  var operasiKali = (int a, int b) => a * b;
  print("Menggunakan function variable: ${operasiTambah(7, 3)}");
  print("Menggunakan function variable: ${operasiKali(4, 5)}");

  // 11. Higher-order function
  print("\n11. Higher-order function:");
  int hasilOperasi = kalkulasi(10, 5, operasiTambah);
  print("Hasil operasi: $hasilOperasi");

  // 12. Recursive function
  print("\n12. Recursive function:");
  print("Faktorial 5: ${faktorial(5)}");
  print("Fibonacci ke-7: ${fibonacci(7)}");

  // 13. Anonymous function
  print("\n13. Anonymous function:");
  List<int> angka = [1, 2, 3, 4, 5];
  var doubled = angka.map((n) => n * 2).toList();
  print("Angka asli: $angka");
  print("Angka dikali 2: $doubled");

  // 14. Function dengan List parameter
  print("\n14. Function dengan List parameter:");
  List<int> numbers = [10, 5, 8, 3, 9];
  print("Rata-rata: ${hitungRataRata(numbers)}");
  print("Nilai tertinggi: ${cariMaksimum(numbers)}");

  // 15. Generic function
  print("\n15. Generic function:");
  print("Swap string: ${swap('Hello', 'World')}");
  print("Swap angka: ${swap(10, 20)}");
}

// 1. Function tanpa parameter dan return
void sayHello() {
  print("Hello, Dart!");
}

// 2. Function dengan parameter
void greetUser(String name) {
  print("Halo, $name!");
}

// 3. Function dengan return value
String getName() {
  return "Dart Developer";
}

// 4. Function dengan parameter dan return
int tambah(int a, int b) {
  return a + b;
}

// 5. Function dengan multiple parameters
String buatBiodata(String nama, int umur, String kota) {
  return "Nama: $nama, Umur: $umur, Kota: $kota";
}

// 6. Function dengan optional parameters
void hitungLuas(int panjang, [int? lebar]) {
  if (lebar != null) {
    print("Luas persegi panjang: ${panjang * lebar}");
  } else {
    print("Luas persegi: ${panjang * panjang}");
  }
}

// 7. Function dengan named parameters
void buatProfil({required String nama, required int umur, String? kota}) {
  String profil = "Profil: $nama ($umur tahun)";
  if (kota != null) {
    profil += " dari $kota";
  }
  print(profil);
}

// 8. Function dengan default parameter values
void ucapkanSelamat([String pesan = "Selamat Pagi"]) {
  print(pesan);
}

// 9. Arrow functions
int kuadrat(int n) => n * n;
bool isGenap(int n) => n % 2 == 0;

// 11. Higher-order function
int kalkulasi(int a, int b, int Function(int, int) operasi) {
  return operasi(a, b);
}

// 12. Recursive functions
int faktorial(int n) {
  if (n <= 1) return 1;
  return n * faktorial(n - 1);
}

int fibonacci(int n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

// 14. Function dengan List parameter
double hitungRataRata(List<int> numbers) {
  if (numbers.isEmpty) return 0;
  int total = numbers.reduce((a, b) => a + b);
  return total / numbers.length;
}

int cariMaksimum(List<int> numbers) {
  if (numbers.isEmpty) return 0;
  return numbers.reduce((a, b) => a > b ? a : b);
}

// 15. Generic function
List<T> swap<T>(T first, T second) {
  return [second, first];
}

