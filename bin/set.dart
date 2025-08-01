void main(){
  print("=== BELAJAR SET DI DART ===\n");

  // 1. APA ITU SET?
  print("1. SET adalah koleksi yang tidak mengijinkan duplikasi");
  print("   Set otomatis menghilangkan elemen yang sama\n");

  // 2. CARA MEMBUAT SET
  print("2. CARA MEMBUAT SET:");

  // Cara 1: Menggunakan Set.from()
  Set<int> set1 = Set.from([1,5,1,7,1,7]);
  set1.remove(5);
  print("   Set dari list: $set1");

  // Cara 2: Menggunakan literal {}
  var set2 = {2,12,4,2,2,6};
  print("   Set literal: $set2");

  // Cara 3: Set kosong
  Set<String> set3 = <String>{};
  print("   Set kosong: $set3");

  // Cara 4: Set dengan tipe data
  Set<String> buah = {'apel', 'jeruk', 'mangga', 'apel'};
  print("   Set buah: $buah\n");

  // 3. OPERASI DASAR SET
  print("3. OPERASI DASAR SET:");
  Set<int> angka = {1, 2, 3, 4, 5};

  // Menambah elemen
  angka.add(6);
  print("   Setelah add(6): $angka");

  // Menambah beberapa elemen
  angka.addAll([7, 8, 9, 1]); // 1 tidak akan ditambah karena sudah ada
  print("   Setelah addAll([7,8,9,1]): $angka");

  // Menghapus elemen
  angka.remove(5);
  print("   Setelah remove(5): $angka");

  // Mengecek apakah elemen ada
  print("   Apakah 3 ada? ${angka.contains(3)}");
  print("   Apakah 10 ada? ${angka.contains(10)}");

  // Panjang set
  print("   Jumlah elemen: ${angka.length}");
  print("   Apakah kosong? ${angka.isEmpty}\n");

  // 4. OPERASI SET (UNION, INTERSECTION, DIFFERENCE)
  print("4. OPERASI MATEMATIKA SET:");
  Set<int> setA = {1, 2, 3, 4, 5};
  Set<int> setB = {4, 5, 6, 7, 8};

  print("   Set A: $setA");
  print("   Set B: $setB");

  // Union (gabungan)
  Set<int> union = setA.union(setB);
  print("   Union A ∪ B: $union");

  // Intersection (irisan)
  Set<int> intersection = setA.intersection(setB);
  print("   Intersection A ∩ B: $intersection");

  // Difference (selisih)
  Set<int> difference = setA.difference(setB);
  print("   Difference A - B: $difference\n");

  // 5. ITERASI SET
  print("5. CARA MENGITERASI SET:");
  Set<String> warna = {'merah', 'biru', 'hijau', 'kuning'};

  print("   Menggunakan for-in:");
  for (String w in warna) {
    print("     - $w");
  }

  print("   Menggunakan forEach:");
  warna.forEach((w) => print("     * $w"));

  // 6. KONVERSI SET
  print("\n6. KONVERSI SET:");
  Set<int> setAngka = {3, 1, 4, 1, 5, 9, 2, 6};

  // Set ke List
  List<int> listDariSet = setAngka.toList();
  print("   Set ke List: $listDariSet");

  // List ke Set (menghilangkan duplikasi)
  List<int> listDuplikat = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4];
  Set<int> setDariList = listDuplikat.toSet();
  print("   List dengan duplikasi: $listDuplikat");
  print("   Setelah jadi Set: $setDariList");

  // 7. CONTOH PRAKTIS
  print("\n7. CONTOH PRAKTIS - MENGHILANGKAN DUPLIKASI:");
  List<String> daftarNama = ['Andi', 'Budi', 'Andi', 'Citra', 'Budi', 'Doni'];
  print("   Daftar nama asli: $daftarNama");

  Set<String> namaUnik = daftarNama.toSet();
  print("   Nama unik: $namaUnik");
  print("   Jumlah nama unik: ${namaUnik.length}");

  // 8. SET VS LIST
  print("\n8. PERBEDAAN SET VS LIST:");
  print("   LIST: [1,2,2,3] - Mengijinkan duplikasi, ada urutan/index");
  print("   SET:  {1,2,3}   - Tidak ada duplikasi, tidak ada urutan/index");

  List<int> list = [1, 2, 2, 3];
  Set<int> set = {1, 2, 2, 3};
  print("   List: $list (length: ${list.length})");
  print("   Set:  $set (length: ${set.length})");

  var setAb = {1, 2, 4, 5};
  var setBb = {1, 5, 7};

  var unionb = setA.union(setB);
  var intersectionb = setA.intersection(setB);

  print("union: $unionb");
  print("intersection: $intersectionb");
}