import 'dart:io';

import 'package:html_generator/html_generator.dart';
import 'package:test/test.dart';

void main() {
  tearDownAll(() async {
    await Directory('test_overview_page').delete(recursive: true);
  });

  group("Testing the 'overview_page_generator.dart' file", () {
    const object = OverviewPageGenerator();

    test('Smoke test', () {
      expect(object.pageTitle, equals('Book overview'));
      expect(object.pageFileName, equals('overview'));
      expect(object.pageIndex, equals(1));
      expect(object.pageContents.length, greaterThan(0));
    });

    test('File generation test', () async {
      // Generates the page
      await object.generateHTML(
        directoryName: 'test_overview_page',
      );

      final fileContents = await File(
        'test_overview_page/overview.html',
      ).readAsString();
      expect(fileContents, contains(object.pageContents));
    });
  });
}
