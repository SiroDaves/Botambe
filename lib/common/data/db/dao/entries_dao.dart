import 'package:floor/floor.dart';

import '../../../utils/constants/app_constants.dart';
import '../../models/habit_entry.dart';

@dao
abstract class HabitEntriesDao {
  @Query('SELECT * FROM ${AppConstants.entriesTable} WHERE id = :id')
  Future<HabitEntry?> findHabitEntryById(int id);

  @Query('SELECT * FROM ${AppConstants.entriesTable}')
  Future<List<HabitEntry>> fetchHabitEntries();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertHabitEntry(HabitEntry entry);

  @delete
  Future<void> deleteHabitEntry(HabitEntry entry);

  @Query("DELETE FROM ${AppConstants.entriesTable}")
  Future<void> deleteAllHabitEntries();
}
