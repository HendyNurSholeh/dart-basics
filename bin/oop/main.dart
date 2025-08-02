import 'Animal.dart';
import 'Cat.dart';
// import 'Cat.dart';

void main(){
  // Membuat object Animal
  Animal animal = Animal('Kucing', 3, 20);
  print(animal.weight);
  animal.eat(2.5); // Kucing is eating 2.5 kg of food. New weight: 22.5 kg
  animal.name = 'Kucing Sedang' ;
  animal.eat(1.0); // Kucing is eating 1.0 kg
  print(animal.weight); // 22.5

  // cascade operator
  Animal dog = Animal('Anjing', 5, 30)
    ..eat(3.0) // Anjing is eating 3.0 kg of food. New weight: 33.0 kg
    ..name = 'Anjing Besar'
    ..eat(2.0); // Anjing Besar is eating 2.0
  print(dog.weight); // 33.0

  Cat cat = Cat('Kucing Persia', 2, 15.0)
    ..eat(1.5) // Kucing Persia is eating 1.5 kg of food. New weight: 16.5 kg
    ..name = 'Kucing Persia Cantik'
    ..eat(0.5); // Kucing Persia Cantik is eating 0.5 kg of food. New weight: 17.0 kg
}