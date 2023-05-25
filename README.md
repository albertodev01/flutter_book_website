<p align="center"><img src="https://raw.githubusercontent.com/albertodev01/flutter_book_website/main/public/images/favicon_96.png" alt="Website icon" /></p>
<p align="center">Official repository of the <a href="https://fluttercompletereference.com">fluttercompletereference.com</a> website</p>
<p align="center">
  <a href="https://github.com/albertodev01/flutter_book_website/actions"><img src="https://github.com/albertodev01/flutter_book_website/actions/workflows/website_ci.yml/badge.svg" alt="CI status" /></a>
  <a href="https://github.com/albertodev01/flutter_book_website/stargazers"><img src="https://img.shields.io/github/stars/albertodev01/flutter_book_website.svg?style=flat&logo=github&colorB=blue&label=stars" alt="Stars count on GitHub" /></a>
  <a href="https://github.com/albertodev01/flutter_book_website/blob/main/LICENSE"><img src="https://img.shields.io/github/license/albertodev01/flutter_book_website" alt="License type" /></a>
</p>

---

This repository contains the source code of the <a href="https://fluttercompletereference.com/">fluttercompletereference.com</a> website. The server was created using Dart's official <a href="https://pub.dev/packages/shelf">shelf</a> package. The most relevant parts of this CLI application are:

 - The `bin` folder contains the `main()` entry-point that starts the server. Helper methods and configurations of the HTTP/HTTPS servers are inside `lib`.
 
 - The website comprises three static HTML files, a minified CSS stylesheet and some image assets (in `.png` or `.svg` format). All this content is located in the `public` folder, which is served by the HTTPS server instance.

 - The `test` folder has some certificates that we **only** use for unit tests. Those `server.key` and `server.pem` files are **not** used in the production server.
 
To see how we generate the pages and validate the HTML code, check the [README.md](https://github.com/albertodev01/flutter_book_website/blob/main/tool/README.md) in the `tool` folder.
