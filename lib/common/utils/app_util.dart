import 'dart:async';
import 'dart:io';
import 'dart:developer' as logging show log;

import 'package:connectivity_plus/connectivity_plus.dart';
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

List<String> generateDropDownItems({
  String initial = '',
  int? lowerLimit,
  int? upperLimit,
  bool incremental = true,
  int minLength = 2,
}) {
  List<String> temp = [], items = [];
  temp.add(initial);
  if (incremental) {
    for (int i = lowerLimit!; i < upperLimit! + 1; i++) {
      temp.add(i.toString());
    }
  } else {
    for (int i = upperLimit!; i > lowerLimit! - 1; i--) {
      temp.add(i.toString());
    }
  }
  for (var item in temp) {
    if (item.length < minLength) {
      items.add('0$item');
    } else {
      items.add(item);
    }
  }
  return items;
}

Future<bool> isConnectedToInternet() async {
  try {
    final connectivityResult = await Connectivity().checkConnectivity();
    // ignore: unrelated_type_equality_checks
    if (connectivityResult == ConnectivityResult.none) return false;

    // Verify actual internet connection
    const exampleHost = 'example.com'; // Or use your server
    final result = await InternetAddress.lookup(exampleHost);
    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  } on SocketException catch (_) {
    return false;
  } catch (_) {
    return false;
  }
}

String formatDoneAt(String doneAt) {
  DateTime dateTime = DateTime.parse(doneAt).toLocal();
  DateTime now = DateTime.now();
  DateTime today = DateTime(now.year, now.month, now.day);
  DateTime yesterday = today.subtract(const Duration(days: 1));

  if (dateTime.isAfter(today)) {
    return "Today at ${DateFormat.jm().format(dateTime)}";
  } else if (dateTime.isAfter(yesterday)) {
    return "Yesterday at ${DateFormat.jm().format(dateTime)}"; 
  } else {
    return "${DateFormat('MMMM d, y').format(dateTime)} at ${DateFormat.jm().format(dateTime)}";
  }
}
