part of '../habits_chooser_screen.dart';

class HabitItem extends StatelessWidget {
  final Habit habit;
  final bool isSelected;
  final double hours;
  final double minHours;
  final double maxHours;
  final Function() onToggle;
  final Function(double) onHoursChanged;

  const HabitItem({
    super.key,
    required this.habit,
    required this.isSelected,
    required this.hours,
    required this.minHours,
    required this.maxHours,
    required this.onToggle,
    required this.onHoursChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: habit.isMandatory ? null : onToggle,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected ? Colors.red : Colors.grey.shade300,
            width: isSelected ? 2 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  isSelected || habit.isMandatory
                      ? Icons.check_circle
                      : Icons.circle_outlined,
                  color: isSelected || habit.isMandatory
                      ? Colors.red
                      : Colors.grey,
                ),
                const SizedBox(width: 10),
                Text(
                  habit.title!,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                if (habit.isMandatory)
                  const Text(
                    " (Required)",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                const Spacer(),
                Text(
                  "${hours.toStringAsFixed(0)} hrs",
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    value: hours,
                    min: 1,
                    max: 12,
                    divisions: 12,
                    label: "${hours.toStringAsFixed(0)} hrs",
                    onChanged: onHoursChanged,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
