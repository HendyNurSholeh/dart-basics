import 'Animal.dart';
import 'Jump.dart';

class Cat extends Animal implements Jump {
  Cat(super.name, super.age, super.weight);

  @override
  void jumpTo(String location) {
    // TODO: implement jump logic
    print('$name jumps to $location');
  }
}