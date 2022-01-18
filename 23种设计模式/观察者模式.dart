// Observer 责任链
// 假设这样一个场景：F1赛车到达维修点队友需要马上开始进行换胎、加油、给驾驶员水、

abstract class Observer {
  void actionWakeUp(Event event);
}

class Event {
  late String status;
  Event(this.status);
  String get name  => "F1赛车🏎️";
}

class TirePersonnel implements Observer {
  void changeTire(Event event) {
    print("${event.status}->更换轮胎");
  }

  @override
  void actionWakeUp(event) => changeTire(event);
}

class OilPersonnel implements Observer {
  void refuel(Event event) {
    print("${event.status}->加入燃油");
  }

  @override
  void actionWakeUp(event) => refuel(event);
}

class Assistant implements Observer {
  void water(Event event) {
    print("${event.status}->送给驾驶员水");
    print(event.name);
  }

  @override
  void actionWakeUp(event) => water(event);
}

void main() {
  var observers = List.from([OilPersonnel(), Assistant(), TirePersonnel()]);
  var event = Event("车辆到站");
  for (Observer observer in observers) {
    observer.actionWakeUp(event);
  }
}
