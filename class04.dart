void main() {
 Animal objects =  Animal('doge', 10);
 num distance = objects.distanceTo(Animal('cat', 12));
 objects?.piker = null;
 print(objects.piker);

 Animal.fromJson({'x': 1, 'y': 2});
}

class Animal{
  String name;
  num age;
  String piker;
  Animal(this.name, this.age);
  distanceTo(Animal option){
    print(option.name+'--');
  }
  static fromJson(opt){
    print("Static Methead ${opt['x']} ${opt['y']}");
  }
}