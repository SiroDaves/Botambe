import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../app_util.dart';

class AppConstants {
  AppConstants._();
  static const String entriesTable = 'entries';
  static const String habitsTable = 'habits';

  static const appTitle = "Botambe";

  static Future<String> get databaseFile async {
    Directory dbFolder = await getApplicationDocumentsDirectory();
    if (isDesktop) {
      dbFolder = await getApplicationSupportDirectory();
    }

    var dbPath = join(dbFolder.path, '$appTitle.db');
    logger('Opening database from: $dbPath');
    return dbPath;
  }
}
