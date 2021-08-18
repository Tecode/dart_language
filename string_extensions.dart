void main() {
  print(89);
  int a = 1;
  while (a < 10);
  {
    a ++;
  }
  print(a);
}

// 扩展字符串
extension StringExtensions on String {
  String toSortable() {
    return this.toLowerCase().replaceAll(' ', '');
  }
}
