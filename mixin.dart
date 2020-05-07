abstract class Super {
  void method() {
    print("Super");
  }
}

class MySuper implements Super {
  @override
  void method() {
    print("MySuper");
  }
}

mixin Mixin on Super {
  @override
  void method() {
    super.method();
    print("Sub");
  }
}

class Client extends MySuper with Mixin {}

void main() {
  Client().method();
}
