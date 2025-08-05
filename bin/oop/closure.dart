void main() {
  var closureExample = calculate(2);
  closureExample();
  closureExample();
}

Function calculate(base) {
  var count = 1;

  printer() => print("Value is ${base + count++}");
  printer();
  printer();
  return printer;
}