part of '../habits_chooser_screen.dart';

class HabitCard extends StatelessWidget {
  final bool isWeekday;
  final List<Habit> habits;
  final List<Habit> selectedHabits;
  final Function(Habit) onToggle;
  final Function(Habit, double) onHoursChanged;
  static const double totalAvailableHours = 20;

  const HabitCard({
    super.key,
    required this.isWeekday,
    required this.habits,
    required this.selectedHabits,
    required this.onToggle,
    required this.onHoursChanged,
  });

  double getTotalHours() {
    return selectedHabits.fold(0, (sum, habit) => sum + (habit.hours));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            [
              Text(
                isWeekday ? "Weekday Habits" : "Weekend Habits",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ).expanded(),
              Text(
                "${getTotalHours().toStringAsFixed(0)} hrs",
                style: TextStyle(
                  fontSize: 16,
                  color: getTotalHours() == totalAvailableHours
                      ? Colors.green
                      : Colors.red,
                ),
              ),
            ].toRow(),
            const SizedBox(height: 5),
            Expanded(
              child: ListView.separated(
                itemCount: habits.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final habit = habits[index];
                  final isSelected =
                      selectedHabits.any((h) => h.title == habit.title);
                  final double minHours = habit.title == "Rest" ? 4 : 1;
                  return HabitItem(
                    habit: habit,
                    isSelected: isSelected,
                    hours: habit.hours,
                    minHours: minHours,
                    maxHours: totalAvailableHours -
                        getTotalHours() +
                        (isSelected ? habit.hours : 0),
                    onToggle: () => onToggle(habit),
                    onHoursChanged: (value) {
                      if (value >= minHours) {
                        onHoursChanged(habit, value);
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
