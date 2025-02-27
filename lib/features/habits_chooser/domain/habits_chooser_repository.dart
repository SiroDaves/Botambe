import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../common/data/models/models.dart';
import '../../../common/utils/app_util.dart';
import '../../../common/utils/constants/app_constants.dart';

class HabitsChooserRepository {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<List<Habit>> fetchHabits() async {
    logger('Now fetching habits');
    try {
      final resp = await _supabase.from(AppConstants.habitsTable).select();
      logger('Response: $resp');
      if (resp.isNotEmpty) {
        final habits =
            (resp as List).map((item) => Habit.fromJson(item)).toList();
        logger('${habits.length} habits fetched');
        return habits;
      }
    } catch (e) {
      logger('Unable to fetch habits: $e');
    }
    return [];
  }
}
