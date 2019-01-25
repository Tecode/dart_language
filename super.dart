class Animal {
  String name;
  String sayHello() {
    return '我是$name';
  }
  Animal.initState(String name):
  name = name;
}

class Cat extends Animal {
  final int age;
  Cat(this.age, String name):super.initState(name){
    print("cat${this.age}个月");
  }
}

void main() {
  Cat cat = new Cat(12, '小猫');
  print(cat.sayHello());
}
