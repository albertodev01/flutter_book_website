import 'dart:io';

import 'package:flutter_book_website/flutter_book_website.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

/// This program starts two servers:
///
///  - an HTTPS server that serves static contents;
///  - an HTTP server that permanently redirects requests to port 443 (HTTPS).
Future<void> main(List<String> arguments) async {
  final serverAddress = InternetAddress.loopbackIPv4;

  // Starts the HTTP server, which redirects all requests to HTTPS.
  await shelf_io.serve(httpServerHandler, serverAddress, 80);

  // Starts the HTTPS server.
  await shelf_io.serve(
    httpsServerHandler,
    serverAddress,
    443,
    securityContext: buildSecurityContextFromArgs(arguments),
    poweredByHeader: 'Dart',
  );
}
