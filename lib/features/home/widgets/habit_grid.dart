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
    double width = MediaQuery.of(context).size.width - 100;
    int columns = 2;
    double aspectRatio = 0.8, gridItemWidth = width / 3.2;
    bool isLargeScreen = width > PageBreaks.standardBreakPt;
    if (isLargeScreen) {
      columns = PageBreaks.gridColumns(width);
      gridItemWidth = (width / 3) / columns;
      aspectRatio = gridItemWidth / 100;
    }
    var gridView = Expanded(
      child: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: columns,
        childAspectRatio: aspectRatio,
        children: habits.map((habit) {
          double doneHours = entries
              .where((entry) => entry.habit == habit.id)
              .fold(0.0, (sum, entry) => sum + (entry.hours ?? 0.0));

          double targetHours = habit.hours;
          return HabitCard(
            title: habit.title ?? "Unknown",
            width: gridItemWidth,
            doneHours: doneHours,
            targetHours: targetHours,
            color: doneHours >= targetHours
                ? Colors.green
                : Theme.of(context).colorScheme.primary,
          );
        }).toList(),
      ),
    );
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
          : gridView,
    );
  }
}
