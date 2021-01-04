void main() {
  var dateStr = '2020-01-10';
  // final newString =
  //     dateStr.replaceFirst(RegExp(r'-'), '年').replaceFirst(RegExp(r'-'), '月');
  final newString = '$dateStr日'
      .replaceAllMapped(r'-', (match) => match.start == 4 ? '年' : '月');
  print(newString);
  print(DateTime.now().year);
}
