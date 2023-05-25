This folder has two Dart CLI applications that generate and validate HTML files. When we have to make some changes to a page, we do the following:

 1. Open the [`html_generator`](https://github.com/albertodev01/flutter_book_website/tree/main/tool/html_generator) project and make changes to the HTML file(s).
 2. When ready, we execute `dart run` from the root of the `html_generator` project to create the new HTML pages inside the `generated/` folder.
 3. Replace the "old" HTML files in the `public/` folder with the newly generated ones.
 4. Open the [`html_validator`](https://github.com/albertodev01/flutter_book_website/tree/main/tool/html_validator) project and execute `dart run` to validate the HTML files in the `public` folder.

The validator tool uses the official W3C API to validate the HTML files within the `public` folder. This is useful to ensure that the production server does not hand out malformed pages. For example:

```bash
$ dart run
HTML validator started...

 > buy.html: Valid :)
 > index.html: Valid :)
 > overview.html: Valid :)

Done!
```

This is what the `html_validator` program outputs when we run it to evaluate the health of the HTML pages in the `public` folder.
