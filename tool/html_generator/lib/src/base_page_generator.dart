import 'dart:io';

import 'package:html_generator/src/common/footer_html.dart';
import 'package:html_generator/src/common/header_html.dart';
import 'package:html_generator/src/common/navigation_bar_desktop.dart';
import 'package:path/path.dart' as path;

/// Base class for static HTML page generators.
///
/// {@template base_page_generator.generateHTML}
/// The [generateHTML] method creates a `generated/` folder, if it doesn't
/// already exist, and generates the HTML pages there.
///
/// The default name is `generated` but you can set a different name or path.
/// {@endtemplate}
abstract base class BasePageGenerator {
  /// The content of the `<title>` tag.
  final String pageTitle;

  /// The file name, without the `.html` extension.
  final String pageFileName;

  /// The actual HTML contents of the page.
  final String pageContents;

  /// The page index in the navigation bar list.
  final int pageIndex;

  /// Creates a [BasePageGenerator] object.
  const BasePageGenerator({
    required this.pageTitle,
    required this.pageFileName,
    required this.pageContents,
    required this.pageIndex,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BasePageGenerator &&
          runtimeType == other.runtimeType &&
          pageTitle == other.pageTitle &&
          pageFileName == other.pageFileName &&
          pageContents == other.pageContents;

  @override
  int get hashCode => Object.hash(
        pageTitle,
        pageFileName,
        pageContents,
        pageIndex,
      );

  /// Creates a [directoryName] directory, unless it already exists, and
  /// generates the HTML page there. The file name is [pageFileName].html.
  Future<void> generateHTML({
    String directoryName = 'generated',
  }) async {
    final buffer = StringBuffer()
      ..writeln('<!DOCTYPE html>')
      ..writeln('<html lang="en">')
      ..writeln('<head>')
      ..writeln(headerHtml)
      ..writeln('    <title>$pageTitle</title>')
      ..writeln('</head>')
      ..writeln('<body>')
      ..writeln(navigationBarDesktopHtml)
      ..writeln(pageContents)
      ..write(footerHtml(pageIndex))
      ..writeln('</body>')
      ..writeln('</html>');

    // 1. Generate the folder ONLY if it doesn't already exists.
    final outputDir = Directory(directoryName);
    await outputDir.create();

    // 2. Write the HTML file in the 'output' folder
    final file = File(path.join(directoryName, '$pageFileName.html'));
    await file.writeAsString(buffer.toString());
  }
}
