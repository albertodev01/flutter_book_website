import 'package:html_generator/src/common/header_html.dart';
import 'package:test/test.dart';

void main() {
  group("Testing the 'header_html.dart' file", () {
    test('Smoke test', () {
      expect(
        headerHtml,
        equals('''
    <meta name="keywords" content="Flutter Complete Reference, Flutter Book, Dart Book">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="The definitive reference book for Dart 3.0 and Flutter.">
    <meta name="author" content="Alberto Miola">
    <meta name="google-site-verification" content="o4mSLG8Q94yhenxMlyMWtIJ97Bvws6smxCmdDHtjNjg">

    <meta property="og:title" content="Flutter Complete Reference 2">
    <meta property="og:site_name" content="Flutter Complete Reference 2">
    <meta property="og:type" content="book">
    <meta property="og:url" content="https://fluttercompletereference.com/">
    <meta property="og:image" content="https://fluttercompletereference.com/images/twitter_logo.png">
    <meta property="og:description" content="The definitive reference book for Dart 3.0 and Flutter.">

    <meta name="twitter:card" content="summary">
    <meta name="twitter:site" content="@flutter_book">
    <meta name="twitter:title" content="Flutter Complete Reference 2">
    <meta name="twitter:description" content="The definitive reference book for Dart 3.0 and Flutter.">
    <meta name="twitter:image" content="https://fluttercompletereference.com/images/png_logo.png">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link href="styles/style_min.css" rel="stylesheet">
'''),
      );
    });
  });
}
