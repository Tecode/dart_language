


int max(int a, int b, [int sum = 20]) {
  print(sum);
  return a > b ? a : b;
}

String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

int sum({int number1, int number2 = 56}) {
  return number1 + number2;
}

void main() {
  print(max(45, 23));
  print(say('Bob', 'Howdy') == 'Bob says Howdy');
  print(say('Bob', 'Howdy', 'smoke signal') == 'Bob says Howdy with a smoke signal');
  print(sum(number1: 25, number2: 10));
}
