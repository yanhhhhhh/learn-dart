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

class A extends Spacecraft {
  double altitude;
  A(super.name, super.launchDate, this.altitude);
}
