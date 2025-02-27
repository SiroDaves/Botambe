import '../../../common/data/models/models.dart';
import '../ui/habit_entry_screen.dart';

HabitEntry newEntry(HabitEntryScreenState parent) {
  String timestamp = "${DateTime.now().toUtc().toIso8601String()}+00:00";

  return HabitEntry(
    habit: parent.habit!.rid!,
    hours: double.parse(parent.hours),
    doneAt: timestamp,
    title: parent.titleController!.text.isEmpty
        ? parent.titleController!.text
        : parent.activityTitle,
    description: parent.descController!.text,
  );
}
