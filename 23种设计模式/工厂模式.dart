// Factory 工厂模式

// 任何可以产生对象的方法或类，都可以称之为工厂
// 单列也是一种工厂

// 简单工厂、抽象工厂
// 简单工厂 FactoryMethod

class Plane {
  void go() => print("飞机起飞了");
}

class Car {
  void go() => print("汽车开走了");
}

class SingleFactory {
  Plane createPlane() => Plane();
  Car createCar() => Car();
}

// 抽象工厂 AbstractFactory
// 任意定义产品一族
abstract class AbstractEatFood {
  void eatFoodName();
}

abstract class AbstractVoice {
  void cry();
}

abstract class AbstractAnimalName {
  void sayName();
}

abstract class AbstractFactory {
  AbstractEatFood createEatFood();
  AbstractVoice createVoice();
  AbstractAnimalName createAnimalName();
}

class Fish extends AbstractEatFood {
  @override
  void eatFoodName() {
    print("吃鱼");
  }
}

class AnimalName extends AbstractAnimalName {
  @override
  void sayName() {
    print("小猫");
  }
}

class Voice extends AbstractVoice {
  @override
  void cry() {
    print("喵喵喵...");
  }
}

class Cat extends AbstractFactory {
  @override
  AbstractAnimalName createAnimalName() => AnimalName();

  @override
  AbstractEatFood createEatFood() => Fish();

  @override
  AbstractVoice createVoice() => Voice();
}

void main() {
  // 简单工厂 FactoryMethod
  print("简单工厂 FactoryMethod-----");
  var singleFactory = SingleFactory();
  singleFactory.createCar().go();
  singleFactory.createPlane().go();

  // 抽象工厂 AbstractFactory
  print("抽象工厂 AbstractFactory-----");
  var cat = Cat();
  cat.createAnimalName().sayName();
  cat.createEatFood().eatFoodName();
  cat.createVoice().cry();
}
