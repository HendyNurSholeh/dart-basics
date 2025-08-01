import 'dart:io';
void main(){
  stdout.write('Masukkan suhu dalam Fahrenheit: ');
  num fahrenheit = double.parse(stdin.readLineSync()!);

  double celcius = (fahrenheit - 32) * 5 / 9;
  print('Suhu dalam Fahrenheit: $fahrenheit');
  print('Suhu dalam Celcius: $celcius');
}
