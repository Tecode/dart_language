import 'dart:convert';

void main() {
  Map<String, String> value = Map<String, String>();
  value["userName"] = "澜景之家快捷酒店";
  value["sessionId"] = "41999fecf6d447cdae7a0d34c0a2ec4e";
  var base64 = base64Encode(utf8.encode(json.encode(value)));
  print(base64);
  print(utf8.decode(base64Decode(base64)));
}
