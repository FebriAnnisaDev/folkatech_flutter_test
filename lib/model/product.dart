class Product {
  final int id;
  final String name;
  final String cover;
  final String desc;
  final int price;

  Product({
    required this.id,
    required this.name,
    required this.cover,
    required this.desc,
    required this.price,
  });

  // Factory method untuk mengonversi JSON menjadi objek Product
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      cover: json['cover'],
      desc: json['desc'],
      price: json['price'],
    );
  }
}
