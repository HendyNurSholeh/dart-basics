class Animal{
  String name;
  int age;
  double weight;

  Animal(this.name, this.age, this.weight);

  void eat(double foodWeight) {
    weight += foodWeight;
    print('$name is eating $foodWeight kg of food. New weight: $weight kg');
  }
}