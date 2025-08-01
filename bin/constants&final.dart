const num pi = 3.141592653589793;
void main(){
  num jariJari = 7;
  num luasLingkaran = hitungLuasLingkaran(jariJari);
  print('Luas lingkaran dengan jari-jari $jariJari adalah $luasLingkaran');

  final firstName = "Achmad";
  final lastName = "Ilham";

  //lastName = 'Angga';       // tidak bisa dilakukan pengubahan nilai

  print('Hello $firstName $lastName');
}

num hitungLuasLingkaran(num jariJari) {
  return pi * jariJari * jariJari;
}