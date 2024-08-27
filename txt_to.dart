import 'dart:convert';
import 'dart:io';
import 'dart:async';

Future<File> localFile(String name) async {
  return File('./assets/$name');
}

void main() async {
  File file = await localFile('picture-list.txt');
  var value = await file.readAsString();
  List<String> list = value.split('\n');
  list.removeWhere((element) => element.isEmpty);
  List<Map<String, dynamic>> pictureList = [];
  for (var i = 0; i < list.length; i++) {
    pictureList.add({
      'img_id': list[i].split('.').first,
      'img_url': 'https://www.soscoon.com/api/v1/picture/${list[i]}',
      'width': 200,
      'height': 200,
    });
  }
  print(pictureList);
  localFile('picture-list.json').then((File file) {
    file.writeAsString(
      '${jsonEncode({'totalElements': list.length, 'content': pictureList})}',
    );
  });
}
