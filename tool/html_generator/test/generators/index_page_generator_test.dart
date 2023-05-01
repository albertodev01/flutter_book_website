import 'dart:io';

import 'package:html_generator/html_generator.dart';
import 'package:test/test.dart';

void main() {
  tearDownAll(() async {
    await Directory('test_index_page').delete(recursive: true);
  });

  group("Testing the 'index_page_generator.dart' file", () {
    const object = IndexPageGenerator();

    test('Smoke test', () {
      expect(object.pageTitle, equals('Flutter Complete Reference'));
      expect(object.pageFileName, equals('index'));
      expect(object.pageIndex, equals(0));
      expect(object.pageContents.length, greaterThan(0));
    });

    test('File generation test', () async {
      // Generates the page
      await object.generateHTML(
        directoryName: 'test_index_page',
      );

      final fileContents =
          await File('test_index_page/index.html').readAsString();
      expect(fileContents, contains(object.pageContents));
    });
  });
}
