void main() {
  const List<String> arrList = ['54', '98', 'Lock'];
  List<String> newArr = [];
  // forEach遍历数组
  arrList.forEach((String value) {
    print(value);
  });
  // map返回的不是List
  newArr = arrList.map((String value) {
    return "${value}55";
  }).toList();
  print(arrList.map((String value) {
    return "${value}55";
  }));
  print(newArr);
  // output (5455, 9855, Lock55)  [5455, 9855, Lock55]
}
