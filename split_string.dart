void main() {
  var text = '''
      <font16 color="#c52626">
      我的文字，你叫我的名字。1214
      </font16>
      <font14 color="#c52626">
      我的文字，你叫我的名字。1214
      </font11>
      <font14 color="#c52626">
      我的文字，你叫我的名字。1211
      </font11>
      ''';
  // print(formatHtml(text).color);
  // print(formatHtml(text).fontSize);
  // print(formatHtml(text).content);
  print(htmlArray(text).length);
}

class FormatDataType {
  final String content;
  final int fontSize;
  final String color;
  FormatDataType({
    required this.content,
    required this.fontSize,
    required this.color,
  });
}

List<FormatDataType> htmlArray(String text) {
  List<FormatDataType> arr = [];
  var modifyText =
      text.replaceAll(RegExp(r"[\n | ' ']"), '').replaceAll('><', '>\n<');
  print('$modifyText ---modifyText');
  RegExp(r"<font(.*)</font(.*)>")
      .allMatches(text
          .replaceAll(" ", '')
          .replaceAll('\n', '')
          .replaceAll('><', '>\n<'))
      .map((e) => e.group(0))
      .forEach((element) => arr.add(formatHtml('$element')));
  print('$arr ---arr');
  return arr;
}

FormatDataType formatHtml(String text) {
  // 匹配标签
  var tag = RegExp(r"<[^>]*>").allMatches(text).map((e) => e.group(0));
  // 字体大小
  var fontSize = RegExp(r"\d+\.?\d*")
      .allMatches('${tag.last}')
      .map((e) => e.group(0))
      .first;
  // 获取内容
  var match = "${tag.first}(.*)${tag.last}";
  var content = RegExp('$match').allMatches(text).map((e) => e.group(1)).first;
  var color =
      RegExp(r'color="(.*)"').allMatches(text).map((e) => e.group(1)).first;
  return FormatDataType(
    content: '$content',
    fontSize: int.parse(fontSize!),
    color: '$color',
  );
}
