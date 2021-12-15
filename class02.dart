class Point {
  late num x, y;
  static fromJson(Map data) {
    print(data);
  }
  static int z = 45;
  Point(x, y) {
    this.x = x;
    this.y = y;
  }
  Point.origin([String content = 'OYEA']){
    print("${content} AMD Yes!");
  }
}

void main() {
  var p = Point(2, 3);
  var p2 = Point.fromJson({'x': 1, 'y': 2});
  p?.x = 25;
  Point.origin();
  print(p.x);
  print(Point.z);
}
