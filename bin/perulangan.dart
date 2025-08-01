void main() {
  print("=== BELAJAR PERULANGAN DART ===\n");

  // 1. FOR LOOP - Perulangan dengan counter
  print("1. FOR LOOP");
  print("Hitung mundur dari 5:");
  for (int i = 5; i >= 1; i--) {
    print("Detik ke-$i");
  }

  print("\nDaftar angka genap 1-10:");
  for (int i = 2; i <= 10; i += 2) {
    print("Angka genap: $i");
  }

  // 2. WHILE LOOP - Perulangan dengan kondisi
  print("\n2. WHILE LOOP");
  int counter = 1;
  print("Hitung dari 1 sampai 5:");
  while (counter <= 5) {
    print("Counter: $counter");
    counter++;
  }

  // Contoh while dengan input validation
  print("\nSimulasi tebak angka:");
  int targetNumber = 7;
  int guess = 1;
  while (guess != targetNumber) {
    print("Tebakan: $guess (salah!)");
    guess++;
  }
  print("Tebakan: $guess (benar!)");

  // 3. DO-WHILE LOOP - Minimal 1x eksekusi
  print("\n3. DO-WHILE LOOP");
  int number = 10;
  print("Pembagian dengan 2 sampai hasil < 2:");
  do {
    print("Angka: $number");
    number = number ~/ 2; // integer division
  } while (number >= 2);
  print("Hasil akhir: $number");

  // 4. FOR-IN LOOP - Iterasi collection
  print("\n4. FOR-IN LOOP");

  // Dengan List
  List<String> buah = ["Apel", "Jeruk", "Mangga", "Pisang"];
  print("Daftar buah:");
  for (String item in buah) {
    print("- $item");
  }

  // Dengan String (karakter per karakter)
  String kata = "DART";
  print("\nHuruf dalam kata '$kata':");
  for (String huruf in kata.split('')) {
    print("Huruf: $huruf");
  }

  // 5. FOREACH METHOD - Functional style
  print("\n5. FOREACH METHOD");
  List<int> angka = [1, 2, 3, 4, 5];
  print("Menggunakan forEach:");
  angka.forEach((item) {
    print("Angka: $item, Kuadrat: ${item * item}");
  });

  // 6. NESTED LOOP - Perulangan bersarang
  print("\n6. NESTED LOOP");
  print("Tabel perkalian 3x3:");
  for (int i = 1; i <= 3; i++) {
    String baris = "";
    for (int j = 1; j <= 3; j++) {
      baris += "${i * j}\t";
    }
    print(baris);
  }

  // Pola bintang
  print("\nPola segitiga bintang:");
  for (int i = 1; i <= 5; i++) {
    String pola = "";
    for (int j = 1; j <= i; j++) {
      pola += "* ";
    }
    print(pola);
  }

  // 7. BREAK dan CONTINUE
  print("\n7. BREAK dan CONTINUE");

  print("Contoh BREAK (berhenti di angka 7):");
  for (int i = 1; i <= 10; i++) {
    if (i == 7) {
      print("Berhenti di $i");
      break;
    }
    print("Angka: $i");
  }

  print("\nContoh CONTINUE (skip angka genap):");
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      continue; // skip angka genap
    }
    print("Angka ganjil: $i");
  }

  // 8. LABELED LOOP - Loop dengan label
  print("\n8. LABELED LOOP");
  print("Mencari kombinasi yang hasilnya 15:");

  outerLoop: for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= 5; j++) {
      if (i * j == 15) {
        print("Ditemukan: $i x $j = ${i * j}");
        break outerLoop; // keluar dari loop luar
      }
    }
  }

  // 9. PERULANGAN DENGAN RANGE
  print("\n9. PERULANGAN DENGAN RANGE");

  // Simulasi range dengan List.generate
  List<int> range = List.generate(5, (index) => index + 1);
  print("Range 1-5:");
  for (int i in range) {
    print("Nilai: $i");
  }

  // 10. PERULANGAN COLLECTION METHODS
  print("\n10. COLLECTION METHODS");

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print("Map - kuadratkan semua angka:");
  List<int> kuadrat = numbers.map((n) => n * n).toList();
  print(kuadrat);

  print("Where - filter angka genap:");
  List<int> genap = numbers.where((n) => n % 2 == 0).toList();
  print(genap);

  print("Reduce - jumlah semua angka:");
  int total = numbers.reduce((a, b) => a + b);
  print("Total: $total");

  // 11. CONTOH PRAKTIS
  print("\n11. CONTOH PRAKTIS");

  // Menghitung faktorial
  int n = 5;
  int faktorial = 1;
  for (int i = 1; i <= n; i++) {
    faktorial *= i;
  }
  print("Faktorial $n = $faktorial");

  // Fibonacci sequence
  print("\nDeret Fibonacci 10 angka pertama:");
  int a = 0, b = 1;
  print("$a $b");
  for (int i = 2; i < 10; i++) {
    int next = a + b;
    print("$next");
    a = b;
    b = next;
  }

  print("\n=== SELESAI ===");
}