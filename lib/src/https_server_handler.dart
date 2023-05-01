import 'package:shelf/shelf.dart';
import 'package:shelf_static/shelf_static.dart';

/// A [Handler] for the HTTPS server.
///
/// This handler serves static contents from the `public` folder. The default
/// document is `index.html`.
final httpsServerHandler = createStaticHandler(
  'public',
  defaultDocument: 'index.html',
);
