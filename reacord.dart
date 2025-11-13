typedef ButtonItem = ({String label, void Function()? onPressed});

void main() {
  (int a, int b) recordAB = (1, 2);
  (int x, int y) recordXY = (3, 4);

  recordAB = recordXY; // OK.
  print(recordAB.$1); //位置字段公开名称为 $<position> 的 gette
  var record = ('first', a: 2, b: true, 'last');
  (String name, int age) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  final json = <String, dynamic>{'name': 'Dash', 'age': 10, 'color': 'blue'};
  var (name, age) = userInfo(json);
  print(
    name,
  );
  print(age);

  final List<ButtonItem> buttons = [
    (
      label: "Button I",
      onPressed: () => print("Action -> Button I"),
    ),
    (
      label: "Button II",
      onPressed: () => print("Action -> Button II"),
    )
  ];
}
