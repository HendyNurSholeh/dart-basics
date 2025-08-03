enum JenisKelamin {
  lakiLaki,
  perempuan,
  tidakDiketahui;

  @override
  String toString() {
    switch (this) {
      case JenisKelamin.lakiLaki:
        return 'Laki-laki';
      case JenisKelamin.perempuan:
        return 'Perempuan';
      case JenisKelamin.tidakDiketahui:
        return 'Tidak Diketahui';
    }
  }
}