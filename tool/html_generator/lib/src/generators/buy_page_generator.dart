import 'package:html_generator/html_generator.dart';

/// Generates the `buy.html` page.
///
/// {@macro base_page_generator.generateHTML}
final class BuyPageGenerator extends BasePageGenerator {
  /// Creates a [BuyPageGenerator] object.
  const BuyPageGenerator()
      : super(
          pageFileName: 'buy',
          pageTitle: 'Buy the book',
          pageContents: _buyHtmlPage,
          pageIndex: 2,
        );
}

/// HTML code of the `buy.html` page.
const _buyHtmlPage = '''
    <div class="overview-book-part">
        <h1>Amazon</h1>
        <h2>Digital (Kindle, with colors) or paperback (black and white) versions are available in various stores:</h2>

        <div class="chapters-container">
            <div class="region">
                <img src="/images/svg/flags/au.svg" height="30" alt="The australian flag">
                <a href="https://www.amazon.com.au/dp/B0C5P7VXBL">amazon.com.au</a>
            </div>
            <div class="region">
                <img src="/images/svg/flags/br.svg" height="30" alt="The brazilian flag">
                <a href="https://www.amazon.com.br/dp/B0C5QCFGPR">amazon.com.br</a>
            </div>
            <div class="region">
                <img src="/images/svg/flags/ca.svg" height="30" alt="The canadian flag">
                <a href="https://www.amazon.ca/dp/B0C5QCFGPR">amazon.ca</a>
            </div>
            <div class="region">
                <img src="/images/svg/flags/fr.svg" height="30" alt="The french flag">
                <a href="https://www.amazon.fr/dp/B0C5P7VXBL">amazon.fr</a>
            </div>
            <div class="region">
                <img src="/images/svg/flags/de.svg" height="30" alt="The german flag">
                <a href="https://www.amazon.de/dp/B0C5QCFGPR">amazon.de</a>
            </div>
            <div class="region">
                <img src="/images/svg/flags/in.svg" height="30" alt="The indian flag">
                <a href="https://www.amazon.in/dp/B0C5QCFGPR">amazon.in</a>
            </div>
            <div class="region">
                <img src="/images/svg/flags/it.svg" height="30" alt="The italian flag">
                <a href="https://www.amazon.it/dp/B0C5P7VXBL">amazon.it</a>
            </div>
            <div class="region">
                <img src="/images/svg/flags/jp.svg" height="30" alt="The japanese flag">
                <a href="https://www.amazon.co.jp/dp/B0C5QCFGPR">amazon.jp</a>
            </div>
            <div class="region">
                <img src="/images/svg/flags/mx.svg" height="30" alt="The mexican flag">
                <a href="https://www.amazon.com.mx/dp/B0C5QCFGPR">amazon.com.mx</a>
            </div>
            <div class="region">
                <img src="/images/svg/flags/nl.svg" height="30" alt="The dutch flag">
                <a href="https://www.amazon.nl/dp/B0C5P7VXBL">amazon.nl</a>
            </div>
            <div class="region">
                <img src="/images/svg/flags/es.svg" height="30" alt="The spanish flag">
                <a href="https://www.amazon.es/dp/B0C5P7VXBL">amazon.es</a>
            </div>
            <div class="region">
                <img src="/images/svg/flags/gb.svg" height="30" alt="The british flag">
                <a href="https://www.amazon.co.uk/dp/B0C5P7VXBL">amazon.co.uk</a>
            </div>
            <div class="region">
                <img src="/images/svg/flags/us.svg" height="30" alt="The american flag">
                <a href="https://www.amazon.com/dp/B0C5QCFGPR">amazon.com</a>
            </div>
            <div class="region">
                <img src="/images/svg/flags/se.svg" height="30" alt="The american flag">
                <a href="https://www.amazon.se/dp/B0C5P7VXBL">amazon.se</a>
            </div>
            <div class="region">
                <img src="/images/svg/flags/pl.svg" height="30" alt="The american flag">
                <a href="https://www.amazon.pl/dp/B0C5P7VXBL">amazon.pl</a>
            </div>
        </div>
    </div>

    <div class="overview-book-part">
        <h1>Google Play Books</h1>
        <h2>Digital version (with colors)</h2>
        
        <div class="chapters-container">
            <div class="region">
                <img src="/images/svg/play_books_logo.svg" class="noradius" height="30" alt="Google Play Books logo">
                <a href="https://play.google.com/store/books/details?id=QIG_EAAAQBAJ">play.google.com</a>
            </div>
        </div>
    </div>
    
    <div class="overview-book-part">
        <h1>Apple Books</h1>
        <h2>Coming soon... 👀</h2>
    </div>

    <div class="overview-book-part">
        <h1>Other</h1>
        <h2>If you can't get our book from the above sellers, <a href="mailto:fluttercompletereference@gmail.com" class="url-default">send us</a> an email to receive support 🚀</h2>
    </div>

    <div class="spacer-10-pixels-height"></div>
''';
