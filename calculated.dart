import 'dart:convert';
import 'dart:io';
import 'dart:async';

Future<File> get localFile async {
  final path = './assets';
  return File('$path/coursesList.json');
}

void handleResult(String value) {
  Map<String, dynamic> map_json = jsonDecode(value);
  List<dynamic> rows = map_json['rows'];
  List<dynamic> listData = [];
  int sum = 0;
  for (var data in rows) {
    if (data['cjzt_bm__name'] == '成绩有效') {
      listData.add(data);
      sum += (data['cj'] as int);
    }
  }
  print('课程总数量：${listData.length}');
  print('总得分：$sum');
  print('平均分：${sum / listData.length}');
}

void main() {
  var startTime = DateTime.now().millisecond;
  localFile.then((File file) => file.readAsString().then((value) {
        handleResult(value);
        print('耗时 ${DateTime.now().millisecond - startTime} 毫秒');
      }));
}
