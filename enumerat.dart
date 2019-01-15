// 枚举是一种特殊类
enum Color { red, green, blue }

void main() {
  print(Color.red.index);

  List<Color> list = Color.values;
  list.forEach((value) => print(value));
}
