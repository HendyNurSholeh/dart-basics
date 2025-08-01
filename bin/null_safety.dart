void main(){
  // Null safety
  String? name; // nullable type
  name = 'Hendy Nur Sholeh';
  print(name);

  // name = null; // Uncommenting this line will cause an error if null safety is enabled

  // Using the null-aware operator
  String? nullableName;
  print(nullableName?.toUpperCase()); // Will print null if nullableName is null

  myFavFood('Nasi Goreng');
  myFavFood(null);
}

void myFavFood(String? food) {
  // food?.toUpperCase(); // null-aware operator
  if (food != null) {
    print(food.toUpperCase());
  } else {
    print('Food is null');
  }
}