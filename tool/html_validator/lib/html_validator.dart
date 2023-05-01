import 'dart:convert';

import 'package:http/http.dart' as http;

/// Validates the [source] HTML content against the official W3C validator at
/// [validator.w3.org](https://validator.w3.org).
Future<bool> validateHTML({
  required http.Client client,
  required String source,
}) async {
  final response = await client.post(
    Uri.https('validator.w3.org', 'nu/', {'out': 'json'}),
    headers: <String, String>{
      'Content-Type': 'text/html; charset=UTF-8',
    },
    body: source,
  );

  // Decode the JSON response
  final decoded = jsonDecode(response.body) as Map<String, Object?>;

  // If there are no messages, then the HTML is valid.
  return (decoded['messages']! as List<Object?>).isEmpty;
}
