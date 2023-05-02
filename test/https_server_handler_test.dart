import 'dart:io';

import 'package:flutter_book_website/flutter_book_website.dart';
import 'package:shelf/shelf_io.dart';
import 'package:test/test.dart';

void main() {
  late HttpServer server;
  final ip = InternetAddress.loopbackIPv4;
  const port = 51643;

  setUpAll(() async {
    server = await serve(httpsServerHandler, ip, port);
  });

  tearDownAll(() async {
    await server.close();
  });

  Future<void> sendRequest(String path, {bool invalidPath = false}) async {
    final client = HttpClient();
    try {
      final request = await client.get(ip.address, port, path);
      final response = await request.close();

      if (invalidPath) {
        expect(response.statusCode, equals(404));
        expect(response.headers.contentType, isNotNull);
        expect(response.headers.contentType!.mimeType, equals('text/plain'));
      } else {
        expect(response.statusCode, equals(200));
        expect(response.contentLength, greaterThan(0));
        expect(response.headers.contentType, isNotNull);
        expect(response.headers.contentType!.mimeType, equals('text/html'));
      }
    } finally {
      client.close();
    }
  }

  group("Testing the 'httpsServerHandler' handler", () {
    test('Home page', () async => sendRequest('/'));
    test('Overview page', () async => sendRequest('/overview.html'));
    test('Buy page', () async => sendRequest('/buy.html'));
    test('Invalid route', () async => sendRequest('/x', invalidPath: true));
  });
}
