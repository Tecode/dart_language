class Person {
  String name;
  String idCard;
  num age = 12;
  Person.origin(this.name, this.idCard);
  void sayHello() {
    print("Hello Dart");
  }
}

class Student extends Person {
  Student.origin(name, idCard):super.origin(name, idCard){

  }
}

void main() {
  Student student = new Student.origin('Aming','1254147');
  Person person = new Person.origin('name', 'idCard');
  
  print(student.name);
  student.sayHello();
  print(student.age);
}