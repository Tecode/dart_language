// Observer 责任链
// 假设这样一个场景：F1赛车到达维修点队友需要马上开始进行换胎、加油、给驾驶员水、
abstract class Observer {
  void actionWakeUp();
}

class TirePersonnel implements Observer {
  void changeTire() {
    print("更换轮胎");
  }

  @override
  void actionWakeUp() => changeTire();
}

class OilPersonnel implements Observer {
  void refuel() {
    print("加入燃油");
  }

  @override
  void actionWakeUp() => refuel();
}

class Assistant implements Observer {
  void water() {
    print("送给驾驶员水");
  }

  @override
  void actionWakeUp() => water();
}

void main() {
  var observers = List.from([OilPersonnel(), Assistant(), TirePersonnel()]);
  for (Observer observer in observers) {
    observer.actionWakeUp();
  }
}
