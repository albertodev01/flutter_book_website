// ignore_for_file: avoid_print
import 'package:html_generator/html_generator.dart';

/// The application's main entry point that generates HTML pages.
Future<void> main() async {
  // Each generator produces a different HTML page
  const generators = [
    IndexPageGenerator(),
    OverviewPageGenerator(),
    BuyPageGenerator(),
  ];

  print('HTML generator started...\n');

  for (final generator in generators) {
    print(' > Generating ${generator.pageFileName}.html ...');
    await generator.generateHTML();
  }

  print('\nDone!');
}
