class Clod<T> {
  T? data;
}

T set<T>(Clod<T> clod, T value) {
  if (value is! T) {
    throw ArgumentError('Type mismatch: Expected ${T.runtimeType}, but got ${value.runtimeType}');
  }
  clod.data = value;
  return value;
}

void main() {
  var countClod = Clod<int>();
  final a = set(countClod, "1111");
  final b = set(countClod, 1111);
  print(countClod.data); // 输出 "1111"
}

// class Clod<T> {
//   T? data;
// }

// T set<T>(Clod<T> clod, T value) {
//   // if (value is! T) {
//   //   throw ArgumentError(
//   //       'Type mismatch: Expected ${T.runtimeType}, but got ${value.runtimeType}');
//   // }
//   clod.data = value;
//   return value;
// }

// void main() {
//   var countClod = Clod<int>();

//   // 正确用法
//   var a = set(countClod, 123);
//   print(a); // 输出 123

//   // 错误用法：会抛出 ArgumentError
//   final b = set(countClod, "1111");
// }
