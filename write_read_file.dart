import 'dart:io';
import 'dart:async';

Future<File> get localFile async {
  final path = './assets';
  return File('$path/counter.txt');
}

Future<File> writeCounter(counter) async {
  final file = await localFile;
  return file.writeAsString('$counter');
}

void main() {
  int startTime = DateTime.now().millisecond;
  var array = [];
  for (int index = 0; index < 10; ++index) {
    array.add(index);
  }
  localFile.then((File file) {
    file.writeAsString('$array').then((value) {
      print(value);
    });
  });
  print(DateTime.now().millisecond - startTime);
  // localFile.then((File file) {
  //   file.readAsString().then((value) {
  //     print(value);
  //   });
  // });
}
