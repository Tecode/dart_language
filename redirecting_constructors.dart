class Point {
  num x, y;

  // The main constructor for this class.
  Point(this.x, this.y);

  // Delegates to the main constructor.
  Point.alongXAxis(num x) : this(x, 0);
}

main() {
  Point _point = Point(5, 6);
  Point _along = Point.alongXAxis(20);
  print(_point.y);
  print(_point.x);
  print(_along.y);
  print(_along.x);
}
