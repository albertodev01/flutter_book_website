import 'dart:io';

import 'package:html_generator/html_generator.dart';
import 'package:test/test.dart';

void main() {
  tearDownAll(() async {
    await Directory('test_buy_page').delete(recursive: true);
  });

  group("Testing the 'buy_page_generator.dart' file", () {
    const object = BuyPageGenerator();

    test('Smoke test', () {
      expect(object.pageTitle, equals('Buy the book'));
      expect(object.pageFileName, equals('buy'));
      expect(object.pageIndex, equals(2));
      expect(object.pageContents.length, greaterThan(0));
    });

    test('File generation test', () async {
      // Generates the page
      await object.generateHTML(
        directoryName: 'test_buy_page',
      );

      final fileContents = await File('test_buy_page/buy.html').readAsString();
      expect(fileContents, contains(object.pageContents));
    });
  });
}
