import 'dart:convert';

import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../common/data/models/models.dart';
import '../../../common/utils/app_util.dart';
import '../../../common/utils/constants/app_constants.dart';

class DashboardRepository {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<void> saveHabitEntry({required HabitEntry entry}) async {
    logger('Now saving this habit entry online');
    try {
      logger(json.encode(entry));
      await _supabase.from(AppConstants.entriesTable).insert({
        'habit': entry.habit,
        'hours': entry.hours!.toStringAsFixed(0),
        'doneAt': entry.doneAt,
        'title': entry.title,
        'userid': _supabase.auth.currentSession!.user.id,
        'description': entry.description,
      });
      logger('Entry submission request successful');
    } catch (e) {
      logger('Unable to submit entry: $e');
    }
  }

  Future<List<HabitEntry>> fetchHabitEntries() async {
    logger('Now fetching entries');
    try {
      final resp = await _supabase.from(AppConstants.entriesTable).select();
      logger('Response: $resp');
      if (resp.isNotEmpty) {
        final entries =
            (resp as List).map((item) => HabitEntry.fromJson(item)).toList();
        logger('${entries.length} habits entries fetched');
        return entries;
      }
    } catch (e) {
      logger('Unable to fetch habits: $e');
    }
    return [];
  }
}
