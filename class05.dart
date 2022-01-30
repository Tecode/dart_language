void main(List<String> args) {
  var book = Books.one();
  print(book.hashCode);
  var math = MathLerning.one();
  math.name();
  }

class Books {
  Books.one();
  void name() {
    print("书籍");
  }
}

class MathLerning extends Books {
  MathLerning.one() : super.one();
  @override
  void name() {
    super.name();
    print("数学学习");
  }
}
