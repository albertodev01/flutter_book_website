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
        <h2>The first part is about the Dart 3 programming language. It has eight chapters:</h2>

        <div class="chapters-container">
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">2</span> <span class="span-chapter-title">- Variables and types</span></p>
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
                <p>Chapter <span class="span-chapter-number">5</span> <span class="span-chapter-title">- Inheritance, core classes and exceptions</span></p>
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
                <p>Chapter <span class="span-chapter-number">7</span> <span class="span-chapter-title">- Advanced language features</span></p>
                <ul>
                    <li>Class modifiers</li>
                    <li>Patterns</li>
                    <li>Exhaustiveness checking</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">8</span> <span class="span-chapter-title">- Futures, Streams and Isolates</span></p>
                <ul>
                    <li>Futures</li>
                    <li>Streams</li>
                    <li>Isolates</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">9</span> <span class="span-chapter-title">- API overview and tests</span></p>
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
        <h2>The second part is about the Flutter 3.10 framework. It has ten chapters:</h2>

        <div class="chapters-container">
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">10</span> <span class="span-chapter-title">- Flutter, widgets and trees</span></p>
                <ul>
                    <li>Flutter overview</li>
                    <li>Widgets</li>
                    <li>Widget, Element and RenderObject trees</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">11</span> <span class="span-chapter-title">- Material, Cupertino and CustomPaint</span></p>
                <ul>
                    <li>Basic widgets</li>
                    <li>Material and Cupertino library</li>
                    <li>Custom painters</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">12</span> <span class="span-chapter-title">- State management</span></p>
                <ul>
                    <li>Using setState</li>
                    <li>Using InheritedWidget</li>
                    <li>State restoration</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">13</span> <span class="span-chapter-title">- Routes and navigation</span></p>
                <ul>
                    <li>Imperative and declarative navigation</li>
                    <li>The go_router package</li>
                    <li>Deep linking and comparisons</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">14</span> <span class="span-chapter-title">- Layouts and responsiveness</span></p>
                <ul>
                    <li>Layouts in Flutter</li>
                    <li>Building responsive layouts</li>
                    <li>Scrolling widgets and Slivers</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">15</span> <span class="span-chapter-title">- Internationalization and accessibility</span></p>
                <ul>
                    <li>Internationalization</li>
                    <li>Accessibility</li>
                    <li>The intl package</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">16</span> <span class="span-chapter-title">- Assets and images</span></p>
                <ul>
                    <li>Defining assets</li>
                    <li>Images in Flutter</li>
                    <li>Using custom fonts</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">17</span> <span class="span-chapter-title">- Animations</span></p>
                <ul>
                    <li>Implicit animations</li>
                    <li>Explicit animations</li>
                    <li>Good practices</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">18</span> <span class="span-chapter-title">- Forms and gestures</span></p>
                <ul>
                    <li>Form input widgets</li>
                    <li>Handling forms</li>
                    <li>Gestures</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">19</span> <span class="span-chapter-title">- Testing Flutter applications</span></p>
                <ul>
                    <li>Widget testing</li>
                    <li>Golden tests</li>
                    <li>Integration tests</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="overview-book-part">
        <h1>Part 3</h1>
        <h2>The third part is about the Dart and Flutter ecosystems. It has four chapters:</h2>

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
                <p>Chapter <span class="span-chapter-number">22</span> <span class="span-chapter-title">- HTTP servers and low-level HTML</span></p>
                <ul>
                    <li>Creating HTTP servers</li>
                    <li>The shelf package</li>
                    <li>HTML manipulation with dart:html</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">23</span> <span class="span-chapter-title">- Platform interactions</span></p>
                <ul>
                    <li>Platform specific features</li>
                    <li>Creating plugin packages</li>
                    <li>Creating FFI plugin packages</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="overview-book-part extra-space-overview-book">
        <h1>Extra</h1>
        <h2>There are some extra contents on the book.</h2>

        <div class="chapters-container">
            <div class="chapter-entry">
                <p>Chapter <span class="span-chapter-number">1</span> <span class="span-chapter-title">- Introduction</span></p>
                <ul>
                    <li>Dart introduction</li>
                    <li>Flutter introduction</li>
                </ul>
            </div>
            <div class="chapter-entry">
                <p>Appendix</p>
                <ul>
                    <li>DevTools</li>
                    <li>Performance best practices</li>
                </ul>
            </div>
        </div>
    </div>
''';
