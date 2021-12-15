class Point {
  late num x, y;
  Point(num x, num y) {
    this.x = x;
    this.y = y;
  }
  sayHello() {
    print("Hello World!");
  }
   static sum(num x, num y) {
    return(x + y);
  }
}

void main() {
  var a = Point(2, 3);
  a.sayHello();
  print(Point.sum(12, 20));
  print(a.x);
}
