import 'package:shelf/shelf.dart';

import 'api/login/login_api.dart';
import 'api/store_api.dart';
import 'infra/custom_server.dart';

Future<void> main() async {
  var cascadeHandler = Cascade()
      .add(LoginApi().handler)
      .add(StoreApi().handler)
      .handler;

  await CustomServer().initialize(cascadeHandler);
}
