import 'Animal.dart';

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
}