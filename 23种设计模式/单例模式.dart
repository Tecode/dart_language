// 单例模式 Singleton
void main(List<String> args) {
  print(Manerger.instance == Manerger.instance);
  print(Manerger002._instance == Manerger002._instance);
  Manerger.instance.sayHellow();
}

// getter方式实现
class Manerger {
  Manerger._private();
  static final Manerger _instance = Manerger._private();
  static Manerger get instance => _instance;

  String _name = "haoxuan";
  int sum(int a, int b) {
    return a + b;
  }

  void sayHellow() {
    print("hellow $_name");
  }
}


// factory方式实现
class Manerger002 {
  Manerger002._privateConstructor();
  static final Manerger002 _instance = Manerger002._privateConstructor();
  factory Manerger002() {
    return _instance;
  }
}
