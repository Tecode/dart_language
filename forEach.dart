void outPut(int number, [int index = 1]) {
  print('number: ${number}  index: ${index}');
}

void main(List<String> arguments) {
  print(arguments);
  print("object".toUpperCase());
  List<int> array = [12, 35, 10, 20];
  array.forEach(outPut);
}
