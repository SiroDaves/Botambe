import 'dart:async';
import 'dart:io';
import 'dart:developer' as logging show log;

import 'package:intl/intl.dart';

bool isDesktop = Platform.isWindows || Platform.isLinux || Platform.isMacOS;
bool isMobile = Platform.isAndroid || Platform.isIOS || Platform.isFuchsia;

void logger(String message) {
  return logging.log('''
$message
  ''');
}

String dateNow() {
  return DateFormat('yyyy-MM-ddTHH:mm:ss').format(DateTime.now());
}

Future<bool> isConnected() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  } on SocketException catch (_) {
    return false;
  }
}

String extractMessage(String error) {
  final regex = RegExp(r'AuthException\(message:\s*(.*?),\s*statusCode:');
  final match = regex.firstMatch(error);
  return match?.group(1) ?? 'Unknown error';
}
