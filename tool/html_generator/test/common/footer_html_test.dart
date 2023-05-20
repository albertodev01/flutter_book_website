import 'package:html_generator/src/common/footer_html.dart';
import 'package:test/test.dart';

void main() {
  group("Testing the 'footer_html.dart' file", () {
    test('Smoke test - index 0', () {
      expect(
        footerHtml(0),
        equals('''
    <footer>
        <div class="footer-links">
            <a href="mailto:fluttercompletereference@gmail.com"><img src="/images/svg/email.svg" width="24" height="24" alt="Send us an email"></a>
            <a href="https://github.com/albertodev01/flutter_book_website/"><img src="/images/svg/github.svg" width="24" height="24" alt="GitHub logo"></a>
            <a href="https://twitter.com/flutter_book"><img src="/images/svg/twitter.svg" width="24" height="24" alt="Twitter logo"></a>
        </div>
        <p>This website and the book are not official Google products. No affiliations are involved.</p>
        <p class="footer-quote">"Flutter and the related logo are trademarks of Google LLC. We are not endorsed by or affiliated with Google LLC"</p>
    </footer>

    <div class="mobile-nav-bar">
        <a href="/"><img src="images/svg/home-page.svg" width="36" height="36" alt="Home page icon" class="selected"></a>
        <a href="/overview.html"><img src="images/svg/magnifying-glass.svg" width="36" height="36" alt="Book overview icon" ></a>
        <a href="/buy.html"><img src="images/svg/shopping-cart.svg" width="36" height="36" alt="Buy book icon" ></a>
    </div>
'''),
      );
    });

    test('Smoke test - index 1', () {
      expect(
        footerHtml(1),
        equals('''
    <footer>
        <div class="footer-links">
            <a href="mailto:fluttercompletereference@gmail.com"><img src="/images/svg/email.svg" width="24" height="24" alt="Send us an email"></a>
            <a href="https://github.com/albertodev01/flutter_book_website/"><img src="/images/svg/github.svg" width="24" height="24" alt="GitHub logo"></a>
            <a href="https://twitter.com/flutter_book"><img src="/images/svg/twitter.svg" width="24" height="24" alt="Twitter logo"></a>
        </div>
        <p>This website and the book are not official Google products. No affiliations are involved.</p>
        <p class="footer-quote">"Flutter and the related logo are trademarks of Google LLC. We are not endorsed by or affiliated with Google LLC"</p>
    </footer>

    <div class="mobile-nav-bar">
        <a href="/"><img src="images/svg/home-page.svg" width="36" height="36" alt="Home page icon" ></a>
        <a href="/overview.html"><img src="images/svg/magnifying-glass.svg" width="36" height="36" alt="Book overview icon" class="selected"></a>
        <a href="/buy.html"><img src="images/svg/shopping-cart.svg" width="36" height="36" alt="Buy book icon" ></a>
    </div>
'''),
      );
    });

    test('Smoke test - index 2', () {
      expect(
        footerHtml(2),
        equals('''
    <footer>
        <div class="footer-links">
            <a href="mailto:fluttercompletereference@gmail.com"><img src="/images/svg/email.svg" width="24" height="24" alt="Send us an email"></a>
            <a href="https://github.com/albertodev01/flutter_book_website/"><img src="/images/svg/github.svg" width="24" height="24" alt="GitHub logo"></a>
            <a href="https://twitter.com/flutter_book"><img src="/images/svg/twitter.svg" width="24" height="24" alt="Twitter logo"></a>
        </div>
        <p>This website and the book are not official Google products. No affiliations are involved.</p>
        <p class="footer-quote">"Flutter and the related logo are trademarks of Google LLC. We are not endorsed by or affiliated with Google LLC"</p>
    </footer>

    <div class="mobile-nav-bar">
        <a href="/"><img src="images/svg/home-page.svg" width="36" height="36" alt="Home page icon" ></a>
        <a href="/overview.html"><img src="images/svg/magnifying-glass.svg" width="36" height="36" alt="Book overview icon" ></a>
        <a href="/buy.html"><img src="images/svg/shopping-cart.svg" width="36" height="36" alt="Buy book icon" class="selected"></a>
    </div>
'''),
      );
    });
  });
}
