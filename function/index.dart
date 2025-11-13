int add(int a, int b) {
  return a + b;
}

// 递归
int sum(int num) {
  if (num <= 1) return num;
  return num + sum(num - 1);
}

int sumIterative(int num) {
  var total = 0;
  for (var i = 1; i <= num; i++) {
    total += i;
  }
  return total;
}

void console(String name) {
  print(name);
}

void main() {
  var result = add(2, 3);
  print(result); // Output: 5
  print(sum(5)); // Output: 15
}
