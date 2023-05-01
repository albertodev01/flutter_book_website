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
    <div class="preview">
        <a href="#">READ THE PREVIEW</a>
    </div>    

    <div class="overview-book-part">
        <h1>Amazon</h1>
        <h2>Both digital (Kindle, with colors) and paper (black and white) versions are available in various stores:</h2>

        <div class="chapters-container">
            <div class="region">
                <img src="images/svg/flags/australia.svg" height="30" alt="The australian flag">
                <a href="#">amazon.com.au</a>
            </div>
            <div class="region">
                <img src="images/svg/flags/brazil.svg" height="30" alt="The brazilian flag">
                <a href="#">amazon.com.br</a>
            </div>
            <div class="region">
                <img src="images/svg/flags/canada.svg" height="30" alt="The canadian flag">
                <a href="#">amazon.ca</a>
            </div>
            <div class="region">
                <img src="images/svg/flags/france.svg" height="30" alt="The french flag">
                <a href="#">amazon.fr</a>
            </div>
            <div class="region">
                <img src="images/svg/flags/germany.svg" height="30" alt="The german flag">
                <a href="#">amazon.de</a>
            </div>
            <div class="region">
                <img src="images/svg/flags/india.svg" height="30" alt="The indian flag">
                <a href="#">amazon.in</a>
            </div>
            <div class="region">
                <img src="images/svg/flags/italy.svg" height="30" alt="The italian flag">
                <a href="#">amazon.it</a>
            </div>
            <div class="region">
                <img src="images/svg/flags/japan.svg" height="30" alt="The japanese flag">
                <a href="#">amazon.jp</a>
            </div>
            <div class="region">
                <img src="images/svg/flags/mexico.svg" height="30" alt="The mexican flag">
                <a href="#">amazon.com.mx</a>
            </div>
            <div class="region">
                <img src="images/svg/flags/netherlands.svg" height="30" alt="The dutch flag">
                <a href="#">amazon.nl</a>
            </div>
            <div class="region">
                <img src="images/svg/flags/spain.svg" height="30" alt="The spanish flag">
                <a href="#">amazon.es</a>
            </div>
            <div class="region">
                <img src="images/svg/flags/uk.svg" height="30" alt="The british flag">
                <a href="#">amazon.co.uk</a>
            </div>
            <div class="region">
                <img src="images/svg/flags/usa.svg" height="30" alt="The american flag">
                <a href="#">amazon.com</a>
            </div>
        </div>
    </div>

    <div class="overview-book-part">
        <h1>Book Depository</h1>
        <h2>It's an online book seller that offers free shipping to over 160 countries worldwide. You can buy our book from the Book Depository website at <a href="#" class="url-default">this link</a>.</h2>
    </div>

    <div class="overview-book-part">
        <h1>Other</h1>
        <h2>If you can't get our book from Amazon or Book Depository, <a href="" class="url-default">send us</a> an email to receive support 🚀</h2>
    </div>

    <div class="spacer-10-pixels-height"></div>
''';
