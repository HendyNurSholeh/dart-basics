import 'mixins.dart';

class Bird with Flyable {
  String name;
  int age;

  Bird(this.name, this.age);
}

void main() {
  Bird bird = Bird('Parrot', 2);
  bird.fly();
  print('Bird Name: ${bird.name}, Age: ${bird.age}');
}