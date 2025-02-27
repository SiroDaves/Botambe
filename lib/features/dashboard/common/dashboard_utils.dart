import '../../../common/data/models/models.dart';

Map<String, double> getHabitProgress(
  List<Habit> habits,
  List<HabitEntry> entries,
  DateTime selectedDate,
) {
  Map<String, double> habitProgress = {};

  for (var habit in habits) {
    habitProgress[habit.title!] = 0.0;
  }

  for (var entry in entries) {
    DateTime entryDate = DateTime.parse(entry.doneAt!);
    if (entryDate.year == selectedDate.year &&
        entryDate.month == selectedDate.month &&
        entryDate.day == selectedDate.day) {
      if (habitProgress.containsKey(entry.title)) {
        habitProgress[entry.title!] =
            habitProgress[entry.title!]! + (entry.hours ?? 0.0);
      }
    }
  }

  return habitProgress;
}
