import 'Animal.dart';

void main(){
  // Membuat object Animal
  Animal animal = Animal('Kucing', 3, 20);
  print(animal.weight);
  animal.eat(2.5); // Kucing is eating 2.5 kg of food. New weight: 22.5 kg
  animal.name = 'Kucing Sedang' ;
  animal.eat(1.0); // Kucing is eating 1.0 kg
  print(animal.weight); // 22.5
}