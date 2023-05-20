## html_validator

This command-line application validates HTML pages using the official W3C [validator](https://validator.w3.org) tool. To run the program, use the `dart run` command from the project root.

 > **Note**: The program automatically goes two levels back and extracts all `.html` files inside the `public` directory. If you use `dart compile exe`, place the compiled binary file in this project root so the program can correctly locate the `public` folder.

Before uploading HTML pages to the production server, you should always run this program.