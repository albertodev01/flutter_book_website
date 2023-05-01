// ignore_for_file: avoid_print
import 'dart:io';

import 'package:html_validator/html_validator.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

/// The entry point that validates HTML files located in the main package's
/// 'public' folder.
Future<void> main() async {
  print('HTML validator started...\n');

  // Lists all HTML files in the 'public' directory
  final files = await _filesToValidate();

  if (files.isEmpty) {
    print(' > No "public" folder found in the project root!');
  } else {
    // Validates HTML files using the W3C endpoint
    final httpClient = http.Client();

    try {
      for (final file in files) {
        final fileName = path.basename(file.path);
        final contents = await file.readAsString();
        final isValid = await validateHTML(
          client: httpClient,
          source: contents,
        );

        if (isValid) {
          print(' > $fileName: Valid :)');
        } else {
          print(' > $fileName: Invalid :(');
        }
      }
    } finally {
      httpClient.close();
    }
  }

  print('\nDone!');
}

/// Returns a list with all `.html` files inside the `../../public` folder. If
/// the folder does NOT exist, an empty list is returned.
Future<List<File>> _filesToValidate() async {
  final directory = Directory(path.join('..', '..', 'public'));

  if (directory.existsSync()) {
    final contents = await directory.list().toList();

    return contents
        .whereType<File>()
        .where((file) => path.extension(file.path) == '.html')
        .toList(growable: false);
  } else {
    // If 'public' does not exist, the empty list is returned
    return const [];
  }
}
