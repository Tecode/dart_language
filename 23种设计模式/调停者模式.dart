// 调停者模式 Mediator
// 协调内部调用
// update更新state的数据

abstract class Stateful {
  late String _state;
  String get state => _state;
  void set state(String newValue) => _state = newValue;
}

class HunmanMediator {
  late List<Stateful> _list;
  HunmanMediator(this._list);
  void update(String state) {
    for (var human in _list) {
      human.state = state;
    }
  }
}

class Attendee extends Stateful {
  late String name;
  late num age;
  Attendee(this.name, this.age);
}

void main() {
  var haoxuan = Attendee("haoxuan", 18);
  var bob = Attendee("bob", 14);
  var alic = Attendee("alic", 12);
  var mixer = List<Attendee>.from([haoxuan, bob, alic]);
  var humanMediator = HunmanMediator(mixer);
  humanMediator.update("今天记得早点回家");

  for (var item in mixer) {
    print("${item.name}今年${item.age}岁，${item.state}");
  }
}

/*
 haoxuan今年18岁，今天记得早点回家
 bob今年14岁，今天记得早点回家
 alic今年12岁，今天记得早点回家
 */