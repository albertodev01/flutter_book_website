import 'dart:io';

import 'package:flutter_book_website/flutter_book_website.dart';
import 'package:path/path.dart';
import 'package:test/test.dart';

void main() {
  // 'join' is from the 'path' package
  final chainPath = join('test', 'test_certificates', 'server.pem');
  final keyPath = join('test', 'test_certificates', 'server.key');

  group("Testing the 'buildSecurityContextFromArgs' method", () {
    test('Valid arguments', () async {
      expect(
        buildSecurityContextFromArgs([
          '--chain-path=$chainPath',
          '--key-path=$keyPath',
        ]),
        isA<SecurityContext>(),
      );
    });

    test('Missing arguments', () async {
      expect(() => buildSecurityContextFromArgs([]), throwsFormatException);
    });

    test('Missing chain path', () async {
      expect(
        () => buildSecurityContextFromArgs(['--key-path=b']),
        throwsFormatException,
      );
    });

    test('Missing key path', () async {
      expect(
        () => buildSecurityContextFromArgs(['--chain-path=a']),
        throwsFormatException,
      );
    });
  });
}
