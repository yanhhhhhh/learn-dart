// 定义：客户端不应该依赖于它们不使用的接口。
// 避免创建大而全的接口，而是创建多个小而具体的接口，使每个接口只包含一组紧密相关的操作
class Book {
  String name;
  String author;

  Book(
    this.name,
    this.author,
  );
}

// 定义可借阅接口
abstract class Borrowable {
  void borrow(Book book) {
    print("borrow 接口");
  }
}

// 定义可归还接口
abstract class Returnable {
  void returnBook(Book book);
}

// 定义可管理的接口
abstract class Manageable {
  void addBook(Book book);
  void removeBook(Book book);
}

class Member implements Borrowable, Returnable {
  @override
  void borrow(Book book) {
    // TODO: implement borrow
    print("会员正在借阅： ${book.name}  ");
  }

  @override
  void returnBook(Book book) {
    // TODO: implement returnBook
    print("会员正在归还 ${book.name}");
  }
}

class Librarian implements Borrowable, Returnable, Manageable {
  @override
  void borrow(Book book) {
    print('图书管理员正在借阅书籍：${book.name} 作者：${book.author}');
  }

  @override
  void returnBook(Book book) {
    print('图书管理员正在归还书籍：${book.name} 作者：${book.author}');
  }

  @override
  void addBook(Book book) {
    print('图书管理员正在添加书籍：${book.name} 作者：${book.author}');
  }

  @override
  void removeBook(Book book) {
    print('图书管理员正在移除书籍：${book.name} 作者：${book.author}');
  }
}

void main() {
  Book book = Book("dart", "xxx");
  Member member = Member();
  member.borrow(book);
  member.returnBook(book);
  Librarian librarian = Librarian();
  librarian.addBook(book);
  librarian.removeBook(book);
}
