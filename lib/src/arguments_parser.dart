import 'dart:io';

import 'package:args/args.dart';

/// Creates a [SecurityContext] object that references the certificate and the
/// key file from the given command-line arguments.
///
/// An exception is thrown if the `chain-path` and `key-path` arguments are not
/// in the [args] list.
SecurityContext buildSecurityContextFromArgs(List<String> args) {
  final argParser = ArgParser()
    ..addOption('chain-path', mandatory: true)
    ..addOption('key-path', mandatory: true);

  final values = argParser.parse(args);

  return SecurityContext()
    ..useCertificateChain(values['chain-path'] as String)
    ..usePrivateKey(values['key-path'] as String);
}
