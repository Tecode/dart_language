import 'dart:convert';

void main() {
  Map<String, String> value = Map<String, String>();
  value["userName"] = "澜景之家快捷酒店";
  value["sessionId"] = "41999fecf6d447cdae7a0d34c0a2ec4e";
  var base64 = base64Encode(utf8.encode(json.encode(value)));
  print(base64);
  print(utf8.decode(base64Decode(base64)));
  print("之前使用的方法：${String.fromCharCodes(base64Decode("5r6c5pmv5LmL5a625b+r5o236YWS5bqX"))}");
  print("现在使用的方法：${utf8.decode(base64Decode("5r6c5pmv5LmL5a625b+r5o236YWS5bqX"))}");
}
