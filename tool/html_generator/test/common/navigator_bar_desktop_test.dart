import 'package:html_generator/src/common/navigation_bar_desktop.dart';
import 'package:test/test.dart';

void main() {
  group("Testing the 'navigation_bar_desktop.dart' file", () {
    test('Smoke test', () {
      expect(
        navigationBarDesktopHtml,
        equals('''
    <header>
        <div class="logo_title">
            <img src="/images/svg/logo.svg" alt="Website logo" height="30">
            <p>Complete Reference <span>2</span></p>
        </div>

        <nav>
            <ul class="nav-links">
                <li><a href="/">Home</a></li>
                <li><a href="/overview.html">Overview</a></li>
                <li><a href="/buy.html" class="button">Buy</a></li>
            </ul>
        </nav>
    </header>
'''),
      );
    });
  });
}
