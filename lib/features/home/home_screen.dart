import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../dashboard/ui/dashboard_screen.dart';
import '../profile/profile_screen.dart';

part 'widgets/date_selector.dart';
part 'widgets/habit_card.dart';

class HomeScreen extends StatefulWidget {
  final DashboardScreenState parent;
  const HomeScreen({super.key, required this.parent});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DashboardScreenState parent;
  String greeting = "";

  @override
  void initState() {
    super.initState();
    parent = widget.parent;
    _updateGreeting();
  }

  void _updateGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      greeting = "Good morning 👋";
    } else if (hour < 18) {
      greeting = "Good afternoon ☀️";
    } else {
      greeting = "Good evening 🌙";
    }
    setState(() {});
  }

  void _updateSelectedDate(DateTime newDate) {
    setState(() => parent.selectedDate = newDate);
  }

  bool isWeekday(DateTime date) {
    return date.weekday >= DateTime.monday && date.weekday <= DateTime.friday;
  }

  @override
  Widget build(BuildContext context) {
    String selectedDay = DateFormat('EEEE').format(parent.selectedDate);
    bool todayIsWeekday = isWeekday(parent.selectedDate);

    final habits = widget.parent.habits
        .where((habit) => habit.isWeekday == todayIsWeekday)
        .toList();
    var greetingsWidget = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            AvatarWidget(
              radius: 30,
              imagePath: 'https://siro.co.ke',
              onClicked: () async {},
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  greeting,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  widget.parent.user.userMetadata?['display_name'] ??
                      widget.parent.user.email ??
                      'Friend',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
        const Icon(Icons.notifications_outlined, size: 28),
      ],
    );

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            greetingsWidget,
            const SizedBox(height: 20),
            DateSelector(
              onDateSelected: _updateSelectedDate,
            ),
            const SizedBox(height: 20),
            Text(
              "Your $selectedDay habits",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: habits.isEmpty
                  ? const Center(child: Text("No habits for today!"))
                  : GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                      children: habits
                          .map(
                            (habit) => HabitCard(
                              title: habit.title ?? "Unknown",
                              subtitle:
                                  "${habit.hours.toStringAsFixed(0)} hours",
                              icon: Icons.check,
                              color: Colors.blueAccent,
                            ),
                          )
                          .toList(),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
