void main() {
  var value = Future.value('结果一');
  value.then((value) {
    print(value);
  });
  print('结果二');
}
