void main(List<String> args) {
  print(Manerger.instance == Manerger.instance);
  Manerger.instance.sayHellow();
}

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
