void main() {
  var message = StringBuffer('Dart is fun');
  List array = [];
  for (var i = 0; i < 5; i++) {
    message.write('!');
    array.add('value${i}');
  }
  print(array);
  print(message);
  try {
    if (message != null) {
      throw 'Out of llamas!';
    }
  } on Exception catch (e) {
    print('Exception details:\n $e');
  } catch (e, s) {
    print('Exception details:\n $e');
    print('Stack trace:\n $s');
  }
}
