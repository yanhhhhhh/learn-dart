// Mixin 是一种在多个类层次结构中重复使用代码的方法，下面是声明一个Mixins 的案例：
mixin Piloted {
  int a = 1;
  void describeCamew() {
    print("Number of a is $a");
  }
}

class Spacecraft {
  String name;
  DateTime? launchDate;
  int? get launchYear => launchDate?.year;
  Spacecraft(this.name, this.launchDate);
  Spacecraft.unLaunchDate(String name) : this(name, null);

  void describe() {
    print("Spacecraft :$name");
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print("launched $launchYear ($years years ago)");
    } else {
      print('unlaunched');
    }
  }
}

class B extends Spacecraft with Piloted {
  B(super.name, super.launchDate);
}

main() {
  var b = B('jae', DateTime(2025, 1, 16));
  b.describeCamew();
  b.describe();
}
