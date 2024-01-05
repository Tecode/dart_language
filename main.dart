import 'dart:convert';
import 'dart:io';
import 'dart:async';

Future<File> get localFile async {
  final path = './assets';
  return File('$path/toutiaoList.json');
}

Future<File> writeCounter(counter) async {
  final file = await localFile;
  return file.writeAsString('$counter');
}

void main() {
  int startTime = DateTime.now().millisecond;

  // localFile.then((File file) {
  //   file.writeAsString('${jsonEncode(json)}').then((value) {
  //     print('$value-------------------?');
  //   });
  // });
  localFile.then((File file) {
    file.readAsString().then((value) {
      var jsonData = jsonDecode(value);
      Map<String, String> cacheData = {};
      var listData = jsonData['data'] as List<dynamic>;
      listData.forEach((element) {
        cacheData.addAll({
          "title": element['Abstract'],
          "articleUrl":element['article_url'],
        });
      });
      print("$cacheData \n");
    });
    print(DateTime.now().millisecond - startTime);
  });
}
