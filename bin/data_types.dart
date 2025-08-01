void main(){
  print("=== DYNAMIC VARIABLE ===");
  var variable;
  variable = "Hello, Dart!";
  print(variable);
  variable = 2;
  print(variable);

  print("\n=== STRING ===");
  String nama = "Achmad Ilham";
  String alamat = 'Jakarta, Indonesia';
  String multiline = '''
  Ini adalah string
  yang memiliki
  beberapa baris
  ''';
  String interpolasi = "Nama saya adalah $nama";
  print("Nama: $nama");
  print("Alamat: $alamat");
  print("Multiline: $multiline");
  print("Interpolasi: $interpolasi");

  print("\n=== INTEGER ===");
  int umur = 25;
  int tahunLahir = 1999;
  int negatif = -100;
  print("Umur: $umur");
  print("Tahun lahir: $tahunLahir");
  print("Angka negatif: $negatif");

  print("\n=== DOUBLE ===");
  double tinggi = 175.5;
  double berat = 70.25;
  double pi = 3.14159;
  print("Tinggi: $tinggi cm");
  print("Berat: $berat kg");
  print("PI: $pi");

  print("\n=== NUM (Integer atau Double) ===");
  num angka1 = 10;      // bisa integer
  num angka2 = 15.5;    // bisa double
  print("Angka 1: $angka1");
  print("Angka 2: $angka2");
  print("Jumlah: ${angka1 + angka2}");

  print("\n=== BOOLEAN ===");
  bool isActive = true;
  bool isCompleted = false;
  bool isValid = umur >= 18;
  print("Active: $isActive");
  print("Completed: $isCompleted");
  print("Valid (umur >= 18): $isValid");

  print("\n=== LIST ===");
  List<String> buah = ['Apel', 'Jeruk', 'Mangga'];
  List<int> angka = [1, 2, 3, 4, 5];
  var campuran = ['Dart', 2025, true, 3.14];

  print("Buah: $buah");
  print("Angka: $angka");
  print("Campuran: $campuran");
  print("Buah pertama: ${buah[0]}");
  print("Jumlah buah: ${buah.length}");

  print("\n=== MAP ===");
  Map<String, dynamic> mahasiswa = {
    'nama': 'Budi Santoso',
    'umur': 20,
    'jurusan': 'Informatika',
    'aktif': true
  };

  var produk = {
    'id': 1,
    'nama': 'Laptop',
    'harga': 15000000,
    'tersedia': true
  };

  print("Mahasiswa: $mahasiswa");
  print("Nama mahasiswa: ${mahasiswa['nama']}");
  print("Produk: $produk");
  print("Harga produk: Rp ${produk['harga']}");

  print("\n=== SET ===");
  Set<String> hobi = {'Membaca', 'Coding', 'Gaming'};
  var angkaUnik = {1, 2, 3, 3, 4, 4, 5}; // duplikat akan dihapus

  print("Hobi: $hobi");
  print("Angka unik: $angkaUnik");
  print("Jumlah hobi: ${hobi.length}");

  print("\n=== RUNES (Unicode) ===");
  String emoji = '😀🎉🚀';
  Runes runes = emoji.runes;
  print("Emoji: $emoji");
  print("Runes: ${runes.toList()}");

  print("\n=== NULLABLE TYPES ===");
  String? namaLengkap; // bisa null
  int? skorTes;

  print("Nama lengkap: $namaLengkap");
  print("Skor tes: $skorTes");

  namaLengkap = "John Doe";
  skorTes = 95;

  print("Nama lengkap setelah diisi: $namaLengkap");
  print("Skor tes setelah diisi: $skorTes");

  print("\n=== TYPE CHECKING ===");
  print("Tipe data nama: ${nama.runtimeType}");
  print("Tipe data umur: ${umur.runtimeType}");
  print("Tipe data tinggi: ${tinggi.runtimeType}");
  print("Tipe data isActive: ${isActive.runtimeType}");
  print("Tipe data buah: ${buah.runtimeType}");
  print("Tipe data mahasiswa: ${mahasiswa.runtimeType}");
}