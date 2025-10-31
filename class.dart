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

void main() {
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();
  var voyager2 = Spacecraft.unLaunchDate("Voyager II");
  voyager2.describe();
}
