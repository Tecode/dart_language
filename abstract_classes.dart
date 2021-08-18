class Person {
  late String name;
  late String idCard;
  void sleep() {
    print("睡觉");
  }
}

class Teacher extends Person {
  void teach() {
    print("${this.name}在教书");
  }
}

abstract class Student extends Person {
  void study() {}
}

class ScienceStudent extends Student {
  List subject;
  ScienceStudent(this.subject);
  @override
  void study() {
    this.subject.forEach((value) => print("${this.name}在学习${value}科目"));
    this.subject.where((value) => value != "生物").forEach((value) {
      print(value);
    });
  }
}

class LiberalArts extends Student {
  @override
  void study() {
    print("${this.name}学习文科");
  }
}

main() {
  Teacher teacher = new Teacher();
  teacher.name = "白老师";
  teacher.teach();

  Student student = new ScienceStudent(["物理", "生物", "化学"]);
  student.name = "小明";
  student.study();

  LiberalArts liberalArts = new LiberalArts();
  liberalArts.name = "小红";
  liberalArts.study();
}
