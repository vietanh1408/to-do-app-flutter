class Book {
  // Khai báo các thuộc tính
  String name; // (late: khai báo muộn)
  int year;
  static int age = 5;

  // Khai báo hàm khởi tạo (constructor)
  Book({required this.name, required this.year});

  void showHello() {
    print('Xin chao');
  }

  // Getter
  String get getName => name;

  // Setter
  set setName(String name) {
    name = name;
  }
}

// Extends
class FunnyBook extends Book {
  String type;

  FunnyBook(String name, int year, {this.type = 'Truyen vui'})
      : super(name: name, year: year);

  void showHelloFunny() {
    showHello();
    print('Hello funny book');
  }
}
