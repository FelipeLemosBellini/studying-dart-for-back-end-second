import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../models/product_model.dart';

class StoreApi {
  Handler get handler {
    Router router = Router();
    String baseApi = '/store';

    router.get('$baseApi/products', (Request request) {
      List<ProductModel> listProduct = [
        ProductModel(name: "name1", id: 1, stockQuantity: 10),
        ProductModel(name: "name2", id: 2, stockQuantity: 20),
        ProductModel(name: "name3", id: 3, stockQuantity: 30),
      ];

      print(jsonEncode(listProduct));
      return Response.ok(jsonEncode(listProduct), headers: {
        'content-type': 'application/json',
      });
    });

    router.post('$baseApi/add', (Request request) {
      return Response.ok('ok');
    });

    router.put('$baseApi/edit', (Request request) async {
      String? id = request.url.queryParameters['id'];
      if (id == null || id.isEmpty)
        return Response.badRequest(body: 'Invalid Operation');
      else
        return Response.ok('ok');
    });

    router.delete('$baseApi/delete', (Request request) {
      String? id = request.url.queryParameters['id'];
      if (id == null || id.isEmpty)
        return Response.badRequest(body: 'Invalid Operation');
      else
        return Response.ok('empty');
    });

    return router;
  }
}
