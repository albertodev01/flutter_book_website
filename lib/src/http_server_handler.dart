import 'package:shelf/shelf.dart';

/// A [Handler] for the HTTP server.
///
/// This handler redirects all incoming HTTP requests to HTTPS with a `301 Moved
/// permanently` response.
Future<Response> httpServerHandler(Request request) async =>
    Response.movedPermanently(request.url.replace(scheme: 'https'));
