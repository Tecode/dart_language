class Person {
  final _name;
  final _idCard;
  Person(this._name, this._idCard);
  String greet(String who) => 'Hello, $who. I am $_name.';
}



class Impostor implements Person {
  get _name => '';
  get _idCard => '';
  String greet(String who) => 'Hi $who. Do you know who I am?';
  void sayHello() {
    print("Hello World");
  }
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  print(greetBob(Person('Kathy', '51012454114')));
  print(greetBob(Impostor()));

  Person person = new Person("alen", "51012541414");
  print(person._name);

  Impostor impostor = new Impostor();
  impostor.sayHello();
}
