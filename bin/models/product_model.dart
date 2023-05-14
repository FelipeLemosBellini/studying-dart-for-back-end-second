import 'dart:convert';

class ProductModel {
  final int id;
  final String name;
  final int stockQuantity;
  // final DateTime created;

  ProductModel({
    required this.id,
    required this.name,
    required this.stockQuantity,
    // required this.created,
  });

  String toJson() => jsonEncode(toMap());

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'stock_quantity': stockQuantity,
      // 'created': created,
    };
  }
}
