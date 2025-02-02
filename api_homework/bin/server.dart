import 'dart:io';

import 'package:shelf/shelf_io.dart';

import 'routes/main_routes.dart';

void main(List<String> args) async {
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await serve(MainRoute().route, ip, port);
  print('http://${server.address.host}:${server.port}');
}
