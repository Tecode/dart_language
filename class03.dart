class Animal {
  Animal.origin() {
    print('Animal Class');
  }
}

class Cat extends Animal {
  Cat.origin() : super.origin() {
    print('Cat Class');
  }
}

void main() {
  var cat = Cat.origin();
}
