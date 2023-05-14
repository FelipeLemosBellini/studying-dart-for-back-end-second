import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class StoreApi {
  Handler get handler {
    Router router = Router();

    router.get('/store', (Request request) {
      return Response.ok('empty');
    });

    return router;
  }
}
