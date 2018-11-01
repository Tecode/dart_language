void main() {
  var message = StringBuffer('Dart is fun');
  List array = [];
  for (var i = 0; i < 5; i++) {
    message.write('!');
    array.add('value${i}');
  }
  print(array);
  print(message);
}