typedef Compare<T> = int Function(T a, T b);

int sort(int a, int b) => a - b;

void main() {
  assert(sort is Compare<String>); // True!
}

typedef IntList = List<int>;
