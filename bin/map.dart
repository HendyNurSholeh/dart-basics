void main(){
  print("=== BELAJAR MAP DI DART ===\n");

  // 1. APA ITU MAP?
  print("1. MAP adalah koleksi key-value pairs");
  print("   Setiap key harus unik, value bisa duplikat\n");

  // 2. CARA MEMBUAT MAP
  print("2. CARA MEMBUAT MAP:");

  // Cara 1: Map literal {}
  Map<String, int> umur = {
    'Andi': 25,
    'Budi': 35,
    'Citra': 22
  };
  print("   Map literal: $umur");

  // Cara 2: Map constructor
  Map<String, String> kota = Map();
  kota['Jakarta'] = 'DKI Jakarta';
  kota['Surabaya'] = 'Jawa Timur';
  kota['Medan'] = 'Sumatera Utara';
  print("   Map constructor: $kota");

  // Cara 3: Map.from()
  Map<String, dynamic> siswa = Map.from({
    'nama': 'Doni',
    'umur': 20,
    'kelas': '12A',
    'aktif': true
  });
  print("   Map.from(): $siswa");

  // Cara 4: Map kosong
  Map<String, int> nilai = <String, int>{};
  print("   Map kosong: $nilai\n");

  // 3. OPERASI DASAR MAP
  print("3. OPERASI DASAR MAP:");
  Map<String, int> skor = {
    'Matematika': 85,
    'Fisika': 90,
    'Kimia': 78
  };

  // Menambah/mengubah value
  skor['Biologi'] = 88;
  print("   Setelah tambah Biologi: $skor");

  skor['Matematika'] = 95; // mengubah value yang sudah ada
  print("   Setelah ubah Matematika: $skor");

  // Mengakses value
  print("   Nilai Fisika: ${skor['Fisika']}");
  print("   Nilai Sejarah: ${skor['Sejarah']}"); // null karena tidak ada

  // Mengecek apakah key ada
  print("   Apakah ada Kimia? ${skor.containsKey('Kimia')}");
  print("   Apakah ada Sejarah? ${skor.containsKey('Sejarah')}");

  // Mengecek apakah value ada
  print("   Apakah ada nilai 90? ${skor.containsValue(90)}");
  print("   Apakah ada nilai 100? ${skor.containsValue(100)}");

  // Menghapus entry
  skor.remove('Kimia');
  print("   Setelah hapus Kimia: $skor");

  // Panjang map
  print("   Jumlah mata pelajaran: ${skor.length}");
  print("   Apakah kosong? ${skor.isEmpty}\n");

  // 4. MENGAKSES KEYS DAN VALUES
  print("4. MENGAKSES KEYS DAN VALUES:");
  Map<String, String> negara = {
    'ID': 'Indonesia',
    'MY': 'Malaysia',
    'SG': 'Singapura',
    'TH': 'Thailand'
  };

  print("   Map negara: $negara");
  print("   Semua keys: ${negara.keys}");
  print("   Semua values: ${negara.values}");
  print("   Entries: ${negara.entries}\n");

  // 5. ITERASI MAP
  print("5. CARA MENGITERASI MAP:");
  Map<String, double> harga = {
    'Apel': 15000.0,
    'Jeruk': 12000.0,
    'Mangga': 20000.0,
    'Pisang': 8000.0
  };

  print("   Menggunakan forEach (key, value):");
  harga.forEach((key, value) {
    print("     $key: Rp ${value.toStringAsFixed(0)}");
  });

  print("   Menggunakan for-in dengan entries:");
  for (MapEntry<String, double> entry in harga.entries) {
    print("     ${entry.key}: Rp ${entry.value.toStringAsFixed(0)}");
  }

  print("   Menggunakan for-in dengan keys:");
  for (String buah in harga.keys) {
    print("     $buah: Rp ${harga[buah]!.toStringAsFixed(0)}");
  }

  // 6. OPERASI LANJUTAN MAP
  print("\n6. OPERASI LANJUTAN MAP:");
  Map<String, int> inventori = {
    'Laptop': 10,
    'Mouse': 25,
    'Keyboard': 15,
    'Monitor': 8
  };

  // putIfAbsent - tambah jika key belum ada
  inventori.putIfAbsent('Speaker', () => 12);
  print("   Setelah putIfAbsent Speaker: $inventori");

  inventori.putIfAbsent('Laptop', () => 99); // tidak akan mengubah karena Laptop sudah ada
  print("   putIfAbsent Laptop (tidak berubah): $inventori");

  // update - ubah value jika key ada
  inventori.update('Mouse', (value) => value + 5);
  print("   Setelah update Mouse +5: $inventori");

  // updateAll - ubah semua values
  inventori.updateAll((key, value) => value * 2);
  print("   Setelah updateAll x2: $inventori");

  // clear - hapus semua
  Map<String, int> temp = Map.from(inventori);
  temp.clear();
  print("   Setelah clear temp: $temp\n");

  // 7. MAP DENGAN TIPE DATA KOMPLEKS
  print("7. MAP DENGAN TIPE DATA KOMPLEKS:");
  Map<String, List<String>> hobi = {
    'Andi': ['Membaca', 'Menulis', 'Coding'],
    'Budi': ['Olahraga', 'Gaming'],
    'Citra': ['Menggambar', 'Musik', 'Traveling', 'Photography']
  };

  print("   Map hobi:");
  hobi.forEach((nama, daftarHobi) {
    print("     $nama: $daftarHobi");
  });

  // Mengakses elemen dalam List di Map
  print("   Hobi pertama Andi: ${hobi['Andi']![0]}");
  print("   Jumlah hobi Citra: ${hobi['Citra']!.length}\n");

  // 8. MAP BERSARANG (NESTED MAP)
  print("8. MAP BERSARANG:");
  Map<String, Map<String, dynamic>> mahasiswa = {
    'M001': {
      'nama': 'Ahmad',
      'jurusan': 'Informatika',
      'semester': 6,
      'ipk': 3.75
    },
    'M002': {
      'nama': 'Siti',
      'jurusan': 'Sistem Informasi',
      'semester': 4,
      'ipk': 3.85
    }
  };

  print("   Data mahasiswa:");
  mahasiswa.forEach((nim, data) {
    print("     NIM: $nim");
    print("       Nama: ${data['nama']}");
    print("       Jurusan: ${data['jurusan']}");
    print("       Semester: ${data['semester']}");
    print("       IPK: ${data['ipk']}");
  });

  // 9. KONVERSI DAN TRANSFORMASI
  print("\n9. KONVERSI DAN TRANSFORMASI:");
  Map<String, int> angka = {'satu': 1, 'dua': 2, 'tiga': 3};

  // Map ke List
  List<String> keys = angka.keys.toList();
  List<int> values = angka.values.toList();
  print("   Keys sebagai List: $keys");
  print("   Values sebagai List: $values");

  // Transform values
  Map<String, int> angkaKali2 = angka.map((key, value) => MapEntry(key, value * 2));
  print("   Angka dikali 2: $angkaKali2");

  // Filter map
  Map<String, int> angkaGenap = angka.map((key, value) => MapEntry(key, value))
      .cast<String, int>();
  Map<String, int> filtered = Map.fromEntries(
      angkaKali2.entries.where((entry) => entry.value > 4)
  );
  print("   Filter nilai > 4: $filtered");

  // 10. CONTOH PRAKTIS
  print("\n10. CONTOH PRAKTIS - SISTEM PENILAIAN:");
  Map<String, Map<String, int>> nilaiSiswa = {
    'Andi': {'Matematika': 85, 'IPA': 90, 'IPS': 78},
    'Budi': {'Matematika': 75, 'IPA': 82, 'IPS': 88},
    'Citra': {'Matematika': 95, 'IPA': 87, 'IPS': 92}
  };

  print("   Laporan Nilai:");
  nilaiSiswa.forEach((siswa, mapel) {
    int total = mapel.values.reduce((a, b) => a + b);
    double rata = total / mapel.length;
    print("     $siswa - Total: $total, Rata-rata: ${rata.toStringAsFixed(1)}");
  });

  // 11. TIPS DAN BEST PRACTICES
  print("\n11. TIPS MAP:");
  print("   - Gunakan Map untuk relasi key-value");
  print("   - Key harus unik, value boleh duplikat");
  print("   - Gunakan containsKey() sebelum mengakses value");
  print("   - Map tidak memiliki urutan yang pasti (kecuali LinkedHashMap)");
  print("   - Gunakan Map<String, dynamic> untuk data yang fleksibel");
}

