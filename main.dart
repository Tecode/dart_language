class Person {
  String name;
  num age;
  Person.origin(this.name, this.age);
  Person(this.name, this.age);
}

class Student extends Person {
  num idCard;
  Student.origin(this.idCard, String name, num age) : super.origin(name, age) {}
 
  String toString() {
    return "string";
  }
}



main() {
  Person person = new Person.origin("Am", 52);
  print(person.name);

  Student student = new Student.origin(510214, "Bob", 12);
  print(student.idCard);
  a(person);
  a(student);
}

void a(Object obj){
  print(obj);
}
