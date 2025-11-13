void main() {
  var s = new Set();

  s.add('a');
  s.add('b');
  s.add('c');
  s.add('a');
  print(s);
  var s2 = {'a', 'b', 'e', 'a'};
  var s3 = Set.from(s2);
  print(s3);
  var l = [];
  l.addAll(s3);
  print(l);
}
