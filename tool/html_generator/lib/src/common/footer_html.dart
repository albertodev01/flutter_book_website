/// HTML template of the website footer.
///
/// The [selectedPageIndex] parameter indicates the index of the currently
/// selected item in the bottom navigation bar. These are the possible values:
///
///  - `0` for `index.html`
///  - `1` for `overview.html`
///  - `2` for `buy.html`
///
/// Any other value will be ignored and no active item will be set.
String footerHtml(int selectedPageIndex) => '''
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
        <a href="/"><img src="images/svg/home-page.svg" width="36" height="36" alt="Home page icon" ${selectedPageIndex == 0 ? 'class="selected"' : ''}></a>
        <a href="/overview.html"><img src="images/svg/magnifying-glass.svg" width="36" height="36" alt="Book overview icon" ${selectedPageIndex == 1 ? 'class="selected"' : ''}></a>
        <a href="/buy.html"><img src="images/svg/shopping-cart.svg" width="36" height="36" alt="Buy book icon" ${selectedPageIndex == 2 ? 'class="selected"' : ''}></a>
    </div>
''';
