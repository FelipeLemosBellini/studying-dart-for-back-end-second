import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class LoginApi {
  Handler get handler {
    Router router = Router();
    String baseApi = '/login';
    router.get('$baseApi/', (Request request) {
      return Response.ok('Login page');
    });

    return router;
  }
}
