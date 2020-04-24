void main() {
  String url =
      "https://test-static.naoxuejia.com/f10ef76ab3c949359e42cc9969e7d2fb26c50f01.jpg?imageView2/0/w/240/q/100";
  Uri.parse(url);
  print('${Uri.parse(url).origin}${Uri.parse(url).path}');
}
