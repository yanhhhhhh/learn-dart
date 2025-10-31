// 1、定义： 软件实体（类、模块、函数等）应该对扩展开放，对修改封闭。

// 2、通俗理解： 这意味着可以在不修改现有代码的情况下添加新功能。这有助于保持系统的稳定性，同时允许新的特性被轻松集成。
// 定义抽象类
// 抽象类不能被构造
abstract class Book {
  String name;
  String author;
  String isbn;

  // 构造函数
  Book(this.name, this.author, this.isbn);

// 抽象方法，用于显示书籍的详细信息
  void displayDetail() {
    print("book ");
  }
}

class TextBook extends Book {
  String subjucat;
  TextBook(super.name, super.author, super.isbn, this.subjucat);

  void displayDetail() {
    print("$name $author $subjucat");
    super.displayDetail();
  }
}

void main(List<String> args) {
  var book1 = TextBook('jae', '111', '11', 'math');
  book1.displayDetail();
}
