void main() {
  print('=== DART LIST IMPLEMENTATION ===\n');

  // 1. MEMBUAT LIST
  print('1. CARA MEMBUAT LIST:');

  // List kosong
  List<String> listKosong = [];
  List<int> angkaKosong = <int>[];
  var dinamis = <String>[];

  // List dengan nilai awal
  List<String> buah = ['Apel', 'Jeruk', 'Mangga'];
  List<int> angka = [1, 2, 3, 4, 5];
  var campuran = ['Dart', 2024, true, 3.14];

  // List dengan ukuran tetap
  List<String> listTetap = List.filled(3, 'Default');

  // List generate
  List<int> kuadrat = List.generate(5, (index) => index * index);

  print('Buah: $buah');
  print('Angka: $angka');
  print('Campuran: $campuran');
  print('List tetap: $listTetap');
  print('Kuadrat: $kuadrat\n');

  // 2. MENAMBAH ELEMEN
  print('2. MENAMBAH ELEMEN:');
  List<String> hewan = ['Kucing'];

  hewan.add('Anjing');                    // Tambah satu elemen
  hewan.addAll(['Burung', 'Ikan']);      // Tambah beberapa elemen
  hewan.insert(1, 'Kelinci');            // Insert di posisi tertentu
  hewan.insertAll(2, ['Hamster', 'Kuda']); // Insert beberapa elemen

  print('Hewan setelah ditambah: $hewan\n');

  // 3. MENGAKSES ELEMEN
  print('3. MENGAKSES ELEMEN:');
  List<String> warna = ['Merah', 'Hijau', 'Biru', 'Kuning'];

  print('Warna pertama: ${warna[0]}');
  print('Warna terakhir: ${warna[warna.length - 1]}');
  print('Warna kedua: ${warna.elementAt(1)}');
  print('Warna pertama (first): ${warna.first}');
  print('Warna terakhir (last): ${warna.last}');

  // Safe access
  print('Warna ke-10 (aman): ${warna.elementAtOrNull(10)}');
  print('Panjang list: ${warna.length}');
  print('Apakah kosong: ${warna.isEmpty}');
  print('Apakah tidak kosong: ${warna.isNotEmpty}\n');

  // 4. MENGUBAH ELEMEN
  print('4. MENGUBAH ELEMEN:');
  List<String> makanan = ['Nasi', 'Mie', 'Roti'];
  print('Sebelum: $makanan');

  makanan[1] = 'Pasta';                  // Ubah elemen di index 1
  makanan.replaceRange(0, 2, ['Pizza', 'Burger']); // Ganti range

  print('Setelah: $makanan\n');

  // 5. MENGHAPUS ELEMEN
  print('5. MENGHAPUS ELEMEN:');
  List<int> nomor = [1, 2, 3, 4, 5, 3, 6];
  print('Sebelum: $nomor');

  nomor.remove(3);                       // Hapus nilai pertama yang cocok
  nomor.removeAt(0);                     // Hapus berdasarkan index
  nomor.removeLast();                    // Hapus elemen terakhir
  nomor.removeRange(1, 3);               // Hapus range
  nomor.removeWhere((element) => element > 3); // Hapus berdasarkan kondisi

  print('Setelah: $nomor');

  // Clear semua
  List<String> temp = ['a', 'b', 'c'];
  temp.clear();
  print('Setelah clear: $temp\n');

  // 6. PENCARIAN
  print('6. PENCARIAN:');
  List<String> negara = ['Indonesia', 'Malaysia', 'Thailand', 'Indonesia'];

  print('Apakah ada Indonesia: ${negara.contains('Indonesia')}');
  print('Index Indonesia pertama: ${negara.indexOf('Indonesia')}');
  print('Index Indonesia terakhir: ${negara.lastIndexOf('Indonesia')}');
  print('Index Singapura: ${negara.indexOf('Singapura')}'); // -1 jika tidak ada

  // Pencarian dengan kondisi
  String? ditemukan = negara.firstWhere(
    (element) => element.startsWith('T'),
    orElse: () => 'Tidak ditemukan'
  );
  print('Negara mulai T: $ditemukan\n');

  // 7. ITERASI
  print('7. ITERASI:');
  List<String> bahasa = ['Dart', 'Java', 'Python', 'JavaScript'];

  // For loop biasa
  print('For loop biasa:');
  for (int i = 0; i < bahasa.length; i++) {
    print('  $i: ${bahasa[i]}');
  }

  // For-in loop
  print('For-in loop:');
  for (String lang in bahasa) {
    print('  - $lang');
  }

  // forEach
  print('forEach:');
  bahasa.forEach((lang) => print('  * $lang'));

  // forEach dengan index
  print('forEach dengan index:');
  bahasa.asMap().forEach((index, lang) => print('  $index: $lang'));

  // 8. TRANSFORMASI
  print('8. TRANSFORMASI:');
  List<int> angkaAsli = [1, 2, 3, 4, 5];

  // Map - transform setiap elemen
  List<int> dikaliDua = angkaAsli.map((x) => x * 2).toList();
  List<String> keString = angkaAsli.map((x) => 'Angka $x').toList();

  print('Asli: $angkaAsli');
  print('Dikali 2: $dikaliDua');
  print('Ke String: $keString');

  // Where - filter elemen
  List<int> genap = angkaAsli.where((x) => x % 2 == 0).toList();
  List<int> lebihDariTiga = angkaAsli.where((x) => x > 3).toList();

  print('Genap: $genap');
  print('Lebih dari 3: $lebihDariTiga\n');

  // 9. SORTING
  print('9. SORTING:');
  List<int> acak = [5, 2, 8, 1, 9, 3];
  List<String> namaAcak = ['Zara', 'Andi', 'Budi', 'Cici'];

  print('Sebelum sort:');
  print('  Angka: $acak');
  print('  Nama: $namaAcak');

  // Sort ascending
  acak.sort();
  namaAcak.sort();

  print('Setelah sort ascending:');
  print('  Angka: $acak');
  print('  Nama: $namaAcak');

  // Sort descending
  acak.sort((a, b) => b.compareTo(a));
  namaAcak.sort((a, b) => b.compareTo(a));

  print('Setelah sort descending:');
  print('  Angka: $acak');
  print('  Nama: $namaAcak\n');

  // 10. OPERASI LANJUTAN
  print('10. OPERASI LANJUTAN:');
  List<int> set1 = [1, 2, 3, 4];
  List<int> set2 = [3, 4, 5, 6];

  // Gabung list
  List<int> gabungan = [...set1, ...set2];
  print('Gabungan: $gabungan');

  // Unique elements
  List<int> unik = gabungan.toSet().toList();
  print('Unik: $unik');

  // Reduce - gabungkan semua elemen jadi satu
  int jumlah = set1.reduce((value, element) => value + element);
  print('Jumlah set1: $jumlah');

  // Fold - seperti reduce tapi dengan nilai awal
  int jumlahFold = set1.fold(10, (prev, element) => prev + element);
  print('Jumlah fold (awal 10): $jumlahFold');

  // Any dan Every
  bool adaGenap = set1.any((x) => x % 2 == 0);
  bool semuaPositif = set1.every((x) => x > 0);
  print('Ada genap: $adaGenap');
  print('Semua positif: $semuaPositif');

  // Take dan Skip
  List<int> ambil3 = set1.take(3).toList();
  List<int> lewati2 = set1.skip(2).toList();
  print('Ambil 3: $ambil3');
  print('Lewati 2: $lewati2\n');

  // 11. LIST MULTIDIMENSI
  print('11. LIST MULTIDIMENSI:');
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  print('Matrix:');
  for (int i = 0; i < matrix.length; i++) {
    print('  Baris $i: ${matrix[i]}');
  }

  print('Elemen [1][2]: ${matrix[1][2]}');

  // Flatten matrix
  List<int> flat = matrix.expand((row) => row).toList();
  print('Matrix flat: $flat\n');

  // 12. LIST METHODS BERGUNA
  print('12. METHODS BERGUNA LAINNYA:');
  List<String> contoh = ['a', 'b', 'c', 'd'];

  print('Reversed: ${contoh.reversed.toList()}');
  print('Sublist (1-3): ${contoh.sublist(1, 3)}');
  print('As Map: ${contoh.asMap()}');
  print('Join: ${contoh.join(', ')}');

  // Copy list
  List<String> copy1 = List.from(contoh);
  List<String> copy2 = [...contoh];
  List<String> copy3 = contoh.toList();

  print('Copy 1: $copy1');
  print('Copy 2: $copy2');
  print('Copy 3: $copy3\n');

  print('=== SELESAI ===');
}

