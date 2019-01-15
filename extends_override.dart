class Human {
  String name = "Tecode";
  void say() {
    print("Hello World");
  }
}

// 继承超集的方法以及属性
class Student extends Human {
  // 重写
  @override
  void say() {
    print("子集${super.name}");
  }
}

void main() {
  Student student = new Student();
  student.say();
}
