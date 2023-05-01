import 'package:html_generator/html_generator.dart';

/// Generates the `index.html` page.
///
/// {@macro base_page_generator.generateHTML}
final class IndexPageGenerator extends BasePageGenerator {
  /// Creates a [IndexPageGenerator] object.
  const IndexPageGenerator()
      : super(
          pageFileName: 'index',
          pageTitle: 'Flutter Complete Reference',
          pageContents: _indexHtmlPage,
          pageIndex: 0,
        );
}

/// HTML code of the `index.html` page.
const _indexHtmlPage = '''
    <div class="home-page-heading">
        <div>
            <h1>The ultimate reference for <span>Dart</span> and <span>Flutter</span>.</h1>
            <h2>This book is the perfect resource for developers looking to learn how to create cutting-edge, cross-platform, native applications that run on any device.</h2>

            <div class="features-home">
                <div>
                    <img src="images/svg/dart.svg" alt="Dart logo" width="56" height="56">
                    <p>Dart</p>
                </div>
                <div>
                    <img src="images/svg/flutter.svg" alt="Flutter logo" width="56" height="56">
                    <p>Flutter</p>
                </div>
                <div>
                    <img src="images/svg/bash.svg" alt="Ecosystem" width="56" height="56">
                    <p>Ecosystem</p>
                </div>
            </div>
        </div>

        <img class="book-cover-img" src="images/cover-front.png" alt="The front of the book cover" width="283" height="400">
    </div>

    <h1 class="centered">What the book offers</h1>

    <div class="book-intro-boxes">
        <div class="box">
            <div class="title">
                <img src="images/svg/dart.svg" alt="Dart logo" width="32" height="32">
                <span>The Dart language</span>
            </div>
            <p class="body">The book's first eight chapters are dedicated to Dart 3.0 and all its features. Nothing is given for granted: every aspect of the language is dissected and explained in detail.</p>
        </div>
        <div class="box">
            <div class="title">
                <img src="images/svg/flutter.svg" alt="Flutter logo" width="32" height="32">
                <span>The Flutter framework</span>
            </div>
            <p class="body">We have dedicated over <strong>five hundred</strong> pages to the Flutter framework. The book covers the widgets basics, the state management solutions, animations, the navigation APIs, and more.</p>
        </div>
        <div class="box">
            <div class="title">
                <img src="images/svg/check.svg" alt="A green check icon" width="32" height="32">
                <span>Good practices</span>
            </div>
            <p class="body">The book has many suggestions and good practices from Dart's and Flutter's official documentation. We have also added recommendations based on the professional experience we have grown over the years.</p>
        </div>
        <div class="box">
            <div class="title">
                <img src="images/svg/terminal.svg" alt="A computer terminal window" width="32" height="32">
                <span>Examples</span>
            </div>
            <p class="body">Theory and simple examples help understand concepts, but seeing the code in action is also very important. We have filled the chapters with examples and comments to help you understand concepts more quickly.</p>
        </div>
        <div class="box">
            <div class="title">
                <img src="images/svg/github.svg" alt="GitHub logo" width="32" height="32">
                <span>Dedicated repository</span>
            </div>
            <p class="body">We have created a GitHub <a href="https://github.com/albertodev01/flutter_book_examples" class="url-default">repository</a> with the source code of some particularly long examples. You can clone the projects to read, run, and experiment with the code.</p>
        </div>
        <div class="box">
            <div class="title">
                <img src="images/svg/book.svg" alt="A computer terminal window" width="32" height="32">
                <span>Printed version</span>
            </div>
            <p class="body">The printed version of the book is available on Amazon, which will take care of printing and shipping. Alternatively, you can buy the Kindle version. <a href="mailto:fluttercompletereference@gmail.com" class="url-default">Email us</a> if you are in trouble and don't know how to get the book.</p>
        </div>
    </div>

    <h1 class="centered">About the author</h1>

    <div class="author-section">
        <img src="images/alberto.png" alt="A picture of the book author">

        <div class="short-bio">
            <p class="short-bio">I am an Italian software engineer who graduated in Computer Science at the University of Padua. I've been working with Dart and Flutter since 2018 💙 You can reach out to me via <a href="mailto:fluttercompletereference@gmail.com" class="url-default">email</a> and check my open-source projects on <a href="https://github.com/albertodev01" class="url-default">GitHub</a>.</p>
            <br>
            <p class="short-bio">I am a GDE (Google Developer Expert) in Dart and Flutter. I love sharing my knowledge with anyone by writing technical books and articles.</p>
        </div>
    </div>
''';
