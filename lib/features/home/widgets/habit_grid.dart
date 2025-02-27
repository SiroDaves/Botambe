part of '../home_screen.dart';

class HabitGrid extends StatelessWidget {
  final List<Habit> habits;
  final List<HabitEntry> entries;
  final DateTime selectedDate;

  const HabitGrid({
    super.key,
    required this.habits,
    required this.entries,
    required this.selectedDate,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: habits.isEmpty
          ? EmptyState(
              title: 'You have no Habit!\nPlease set your Habits',
              titleRetry: 'SET YOUR HABITS',
              showRetry: true,
              onRetry: () {
                Navigator.pushNamed(context, RouteNames.habitsChooser);
              },
            )
          : GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.8,
              children: habits.map((habit) {
                double doneHours = entries
                    .where((entry) => entry.habit == habit.id)
                    .fold(0.0, (sum, entry) => sum + (entry.hours ?? 0.0));

                double targetHours = habit.hours;
                return HabitCard(
                  title: habit.title ?? "Unknown",
                  doneHours: doneHours,
                  targetHours: targetHours,
                  color: doneHours >= targetHours
                      ? Colors.green
                      : Theme.of(context).colorScheme.primary,
                );
              }).toList(),
            ),
    );
  }
}
