import 'Animal.dart';
import 'Cat.dart';
// import 'Cat.dart';

void main(){
  // Membuat object Animal // 33.0

  Cat cat = Cat('Kucing Persia', 2, 15.0)
    ..eat(1.5) // Kucing Persia is eating 1.5 kg of food. New weight: 16.5 kg
    ..name = 'Kucing Persia Cantik'
    ..eat(0.5); // Kucing Persia Cantik is eating 0.5 kg of food. New weight: 17.0 kg
}