
// 运算符重载
class Vector {
  final int x, y;
  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  Vector operator *(Vector v) => Vector(x, v.y);
}

void main() {
  final v = Vector(2, 3);
  final w = Vector(2, 2);
  
  print(v.x);
  print(v.y);

  print((v + w).y);
  print(v - w == Vector(0, 1));
  print((v * w).y);
}
