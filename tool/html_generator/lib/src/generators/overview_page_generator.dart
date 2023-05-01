import 'package:html_generator/html_generator.dart';

/// Generates the `overview.html` page.
///
/// {@macro base_page_generator.generateHTML}
final class OverviewPageGenerator extends BasePageGenerator {
  /// Creates a [OverviewPageGenerator] object.
  const OverviewPageGenerator()
      : super(
          pageFileName: 'overview',
          pageTitle: 'Book overview',
          pageContents: _overviewHtmlPage,
          pageIndex: 1,
        );
}

/// HTML code of the `overview.html` page.
const _overviewHtmlPage = '''
    <div class="overview-book-part">
        <h1>Part 1</h1>
        <h2>The first part is a comprehensive coverage of the Dart 3.x language and is made up of 7 chapters:</h2>

        <div class="chapters-container">
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">2</span> <span class="span-chapter-title">- Variables and data types</span></p>
                <ul>
                    <li>Variables</li>
                    <li>Data types</li>
                    <li>Data type operators</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">3</span> <span class="span-chapter-title">- Control flow and functions</span></p>
                <ul>
                    <li>control flow and loops</li>
                    <li>functions and assertions</li>
                    <li>type aliases</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">4</span> <span class="span-chapter-title">- Classes</span></p>
                <ul>
                    <li>Constructors, getters and setters</li>
                    <li>Operators overload</li>
                    <li>Annotations and mirrors</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">5</span> <span class="span-chapter-title">- Inheritance and exceptions</span></p>
                <ul>
                    <li>Inheritance</li>
                    <li>The Object class</li>
                    <li>Exceptions and errors</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">6</span> <span class="span-chapter-title">- Generics and collections</span></p>
                <ul>
                    <li>Introduction</li>
                    <li>Collections</li>
                    <li>Good practices</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">7</span> <span class="span-chapter-title">- Futures, Streams and Isolates</span></p>
                <ul>
                    <li>Futures</li>
                    <li>Streams</li>
                    <li>Isolates</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">8</span> <span class="span-chapter-title">- API overview and tests</span></p>
                <ul>
                    <li>Dart core libraries</li>
                    <li>Testing Dart code</li>
                    <li>Good practices</li>
                </ul>
            </div>
            <div class="chapter-entry-placeholder">
            </div>
        </div>
    </div>

    <div class="overview-book-part">
        <h1>Part 2</h1>
        <h2>The second part is a comprehensive coverage of the Flutter 4.x framework and is made up of 11 chapters:</h2>

        <div class="chapters-container">
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">9</span> <span class="span-chapter-title">- Flutter, widgets and trees</span></p>
                <ul>
                    <li>Flutter overview</li>
                    <li>Widgets</li>
                    <li>Widget, Element and RenderObject trees</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">10</span> <span class="span-chapter-title">- Material, Cupertino and CustomPaint</span></p>
                <ul>
                    <li>Basic widgets</li>
                    <li>Material and Cupertino library</li>
                    <li>CustomPaint and CustomPainter</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">11</span> <span class="span-chapter-title">- State management</span></p>
                <ul>
                    <li>Using setState</li>
                    <li>Using InheritedWidget</li>
                    <li>State restoration</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">12</span> <span class="span-chapter-title">- Routes and navigation</span></p>
                <ul>
                    <li>Imperative and declarative navigation</li>
                    <li>The go_router package</li>
                    <li>Comparison</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">13</span> <span class="span-chapter-title">- Layout and responsiveness</span></p>
                <ul>
                    <li>Layouts in Flutter</li>
                    <li>Building responsive layouts</li>
                    <li>Scrolling widgets</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">14</span> <span class="span-chapter-title">- Internationalization and accessibility</span></p>
                <ul>
                    <li>Internationalization</li>
                    <li>Accessibility</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">15</span> <span class="span-chapter-title">- Assets and images</span></p>
                <ul>
                    <li>Defining assets</li>
                    <li>Images in Flutter</li>
                    <li>Using custom fonts</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">16</span> <span class="span-chapter-title">- Animations</span></p>
                <ul>
                    <li>Implicit animations</li>
                    <li>Explicit animations</li>
                    <li>Good practices</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">17</span> <span class="span-chapter-title">- Forms and gestures</span></p>
                <ul>
                    <li>Form input widgets</li>
                    <li>Handling forms</li>
                    <li>Gestures</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">18</span> <span class="span-chapter-title">- Testing Flutter applications</span></p>
                <ul>
                    <li>Introduction to widget testing</li>
                    <li>Widget testing strategies</li>
                    <li>Integration tests</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">19</span> <span class="span-chapter-title">- Performance and profiling</span></p>
                <ul>
                    <li>Working with DevTools</li>
                    <li>Performance best practices</li>
                    <li>Profiling Flutter apps</li>
                </ul>
            </div>
            <div class="chapter-entry-placeholder">
            </div>
        </div>
    </div>

    <div class="overview-book-part">
        <h1>Part 3</h1>
        <h2>The third part of the book is about Dart and Flutter example applications. It has six chapters:</h2>

        <div class="chapters-container">
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">20</span> <span class="span-chapter-title">- Creating and maintaining a package</span></p>
                <ul>
                    <li>Package creation</li>
                    <li>Package maintenance</li>
                    <li>Publishing packages at pub.dev</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">21</span> <span class="span-chapter-title">- Creating and maintaining a Flutter app</span></p>
                <ul>
                    <li>Flutter project creation</li>
                    <li>Maintaining a Flutter project</li>
                    <li>Creating release builds</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">22</span> <span class="span-chapter-title">- Networking and caching strategies</span></p>
                <ul>
                    <li>Using the http package</li>
                    <li>Networking in Flutter</li>
                    <li>Data caching in Flutter</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">23</span> <span class="span-chapter-title">- Creating servers with Dart</span></p>
                <ul>
                    <li>Creating servers with dart:io</li>
                    <li>Creating servers with shelf</li>
                    <li>Creating and maintaining a server</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">24</span> <span class="span-chapter-title">- Platform interactions</span></p>
                <ul>
                    <li>Platform specific features</li>
                    <li>Creating plugin packages</li>
                    <li>Creating FFI plugin packages</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">25</span> <span class="span-chapter-title">- Firebase and Flutter</span></p>
                <ul>
                    <li>TBA</li>
                </ul>
            </div>
        </div>
    </div>
''';
