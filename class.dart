class Spacecraft {
  String name;
  DateTime? launchDate;
  int? get launchYear => launchDate?.year;
  // 默认构造函数
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

class Person {
  String name;
  int age;
  // 默认构造函数简写形式
  Person(this.name, this.age);
  // 默认构造函数
  // Person(String name,int age){
  //   this.name = name;
  //   this.age= age;
  // }
  void printInfo(){
    print("${this.name}-${this.age}")
  }
}

void main() {
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();
  var voyager2 = Spacecraft.unLaunchDate("Voyager II");
  voyager2.describe();
}
