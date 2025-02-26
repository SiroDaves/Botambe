import 'package:floor/floor.dart';

import '../../../utils/constants/app_constants.dart';
import '../../models/habit.dart';

@dao
abstract class HabitsDao {
  @Query('SELECT * FROM ${AppConstants.habitsTable} WHERE id = :id')
  Future<Habit?> findHabitById(int id);

  @Query('SELECT * FROM ${AppConstants.habitsTable}')
  Future<List<Habit>> fetchHabits();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertHabit(Habit habit);

  @delete
  Future<void> deleteHabit(Habit habit);

  @Query("DELETE FROM ${AppConstants.habitsTable}")
  Future<void> deleteAllHabits();
}
