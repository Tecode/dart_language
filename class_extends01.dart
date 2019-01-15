class Animal {
  String catName = "Elen";
  Animal.fromJson(Map data) {
    print("父类");
    print(data);
  }
}

class Cat extends Animal {
  Cat.fromJson(Map data) : super.fromJson({}) {
    print("继承");
    // this
    this?.catName = data['name'];
    print(this.catName);
  }
}

void main() {
  var temp = Cat.fromJson({"name": "Fomor"});
  print(temp.catName);
}
