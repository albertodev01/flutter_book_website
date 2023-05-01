import 'package:flutter_book_website/flutter_book_website.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';

void main() {
  group("Testing the 'httpServerHandler' handler", () {
    test('Permanent redirect test', () async {
      final response = await httpServerHandler(
        Request('GET', Uri.http('example.com', '/')),
      );
      expect(response.statusCode, equals(301));
      expect(response.headers['location'], contains('https:'));
    });
  });
}
