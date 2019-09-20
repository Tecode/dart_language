void main() {
  var value = Future<String>.delayed(Duration(milliseconds: 1000), () {
    return('结果');
  });
  print(value);
  value.then((val) => print(val));
}
