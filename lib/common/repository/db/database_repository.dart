import '../../data/models/models.dart';

abstract class DatabaseRepository {
  Future<List<HabitEntry>> fetchHabitEntries();

  Future<void> saveHabitEntry(HabitEntry entry);

  Future<void> deleteHabitEntry(HabitEntry entry);

  Future<void> removeAllHabitEntries();

  Future<List<Habit>> fetchHabits();

  Future<void> saveHabit(Habit habit);
  
  Future<void> deleteHabit(Habit habit);

  Future<void> removeAllHabits();
}
