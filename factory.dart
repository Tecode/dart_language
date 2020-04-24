class Logger {
  final String name;
  bool mute = false;
  static final Map<String, Logger> _cache = <String, Logger>{};

  // 工厂构造函数，如果Logger存在name值相同的记录，则在new 一个Logger时候返回原对象 （原理: 工厂构造函数可以缓存实例）
  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = new Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  // 给name赋值
  Logger._internal(this.name);

  // 里面的方法
  void log(String msg) {
    if (!mute) {
      print(msg);
    }
  }
}

main() {
  print("返回同一个实例");
  var logger = new Logger('UI');
  var logger2 = new Logger("UI");
  print("logger == logger2 :==> ${logger == logger2}");

  print("返回新实例");
  var logger3 = new Logger("newUI");
  print("logger == logger3 :==> ${logger == logger3}");
}
