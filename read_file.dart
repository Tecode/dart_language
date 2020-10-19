import 'dart:convert';
import 'dart:io';
import 'dart:async';

Future<File> get localFile async {
  final path = './assets';
  return File('$path/counter.jsonp');
}

Future<File> writeCounter(counter) async {
  final file = await localFile;
  return file.writeAsString('$counter');
}

void main() {
  int startTime = DateTime.now().millisecond;
  Map<String, String> json = {'10d0': 'Flutter 读写本地文件 文档注意安装path_provider 插件后重启f5, 而不是等待'};
  
  localFile.then((File file) {
    file.writeAsString('${jsonEncode(json)}').then((value) {
      print('$value-------------------?');
    });
  });
  print(DateTime.now().millisecond - startTime);
  print('${localFile}');
  localFile.then((File file) {
    file.readAsString().then((value) {
     Map<String, dynamic> map_json = jsonDecode(value);
     map_json.remove('100');
      print('${map_json}----------------data');
    });
  });
}
