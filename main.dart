void main() {
  var emp = Person('Bob', 20);
  (emp as Person).name = 'Aming';
  print(emp.name);
}

class Person {
  String name;
  final num age;
  Person(this.name, this.age);
}
