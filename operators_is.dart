void main() {
  Person emp = Person('Bob', 20);
  if (emp is Person) {
    emp.name = 'Aming';
  }
  print(emp.name);
}

class Person {
  String name;
  final num age;
  Person(this.name, this.age);
}
