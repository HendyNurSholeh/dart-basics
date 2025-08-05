void main() {
  List<Animal> birdList = [Bird(), Dove(), Duck(), Animal()];
  print(birdList);
}

class Animal {}

class Bird implements Animal {}

class Dove implements Bird {}

class Duck implements Bird {}