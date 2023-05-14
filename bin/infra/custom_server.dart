import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

class CustomServer {
  Future<void> initialize({
    required Handler handler,
    required String address,
    required int port,
  }) async {
    String url = 'localhost';
    int port = 8080;

    await shelf_io.serve(handler, url, port);
  }
}
