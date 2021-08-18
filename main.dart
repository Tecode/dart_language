import 'dart:async';

void main() async{
var stream = countStream(101);
  var sum = await sumStream(stream);
  print(sum); //
}

Future<int> generateData(int data) async => data;

Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    yield await generateData(i);
  }
}

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}