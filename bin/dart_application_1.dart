import 'package:test/test.dart';

class Product {
  late String name;
  late double price;
  late int quantity;
  late String description;
  late String image;

  void addToCart(Product product) {
    // Припускаємо, що товар додається до кошика шляхом збільшення кількості
    quantity += product.quantity;
  }
}

void main() {
  group('Тести для класу Product', () {
    late Product product;
    late Product anotherProduct;

    setUp(() {
      product = Product()
        ..name = 'Зразок товару'
        ..price = 25.0
        ..quantity = 10
        ..description = 'Опис зразкового товару'
        ..image = 'зразковий_зображення.jpg';

      anotherProduct = Product()
        ..name = 'Інший товар'
        ..price = 30.0
        ..quantity = 15
        ..description = 'Опис іншого товару'
        ..image = 'інше_зображення.jpg';
    });

    test('Додавання товару до кошика має оновлювати кількість', () {
      product.addToCart(anotherProduct);
      expect(product.quantity, 25); // Кількість повинна оновитися до 25
    });

    test('Додаткова інформація про товар', () {
      expect(product.description, isNotEmpty);
      expect(product.image, isNotEmpty);
    });

    // Додавайте більше тестів за потребою для нового функціоналу
  });
}