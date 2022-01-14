// Strategy 策略模式

// 策略模式应用到Tank Fire
// 策略1:默认一颗子弹
// 策略2:四个方向打子弹
// 策略3:打核弹
abstract class FireStrategy {
  void fire();
}

class DefaultFireStratgy implements FireStrategy {
  @override
  void fire() {
    print('一颗子弹');
  }
}

class FourDirFireStratgy implements FireStrategy {
  @override
  void fire() {
    print('四个方向子弹');
  }
}

class NunclearBombFireStratgy implements FireStrategy {
  @override
  void fire() {
    print('打核弹');
  }
}

class PlayerStratagy {
  String name;
  FireStrategy strategy;
  PlayerStratagy(this.name, this.strategy);
}

void main() {
  var defaultValue = DefaultFireStratgy();
  var fourDir = FourDirFireStratgy();
  var nunclearBomb = NunclearBombFireStratgy();

  var player001 = PlayerStratagy('haoxuan001', defaultValue);
  var player002 = PlayerStratagy('haoxuan002', fourDir);
  var player003 = PlayerStratagy('haoxuan003', nunclearBomb);
  for (var player in [player001, player002, player003]) {
    print('玩家：${player.name}发射');
    player.strategy.fire();
  }
}
