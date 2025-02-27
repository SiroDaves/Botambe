import '../../data/models/models.dart';

abstract class DatabaseRepository {
  Future<List<HabitEntry>> fetchHabitEntries();

  Future<void> saveHabitEntry({required HabitEntry entry});

  Future<void> removeHabitEntry({required HabitEntry entry});

  Future<void> removeAllHabitEntries();

  Future<List<Habit>> fetchHabits();

  Future<void> saveHabit({required Habit habit});
  
  Future<void> removeHabit({required Habit habit});

  Future<void> removeAllHabits();
}
