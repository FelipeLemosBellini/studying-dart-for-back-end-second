import 'dart:convert';

class ProductModel {
  final String name;
  final int id;
  final int stock_quantity;

  ProductModel({
    required this.name,
    required this.id,
    required this.stock_quantity,
  });

  String toJson() => jsonEncode(toMap());

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'id': id,
      'stockQuantity': stock_quantity,
    };
  }
}
