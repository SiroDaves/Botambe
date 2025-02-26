import 'package:flutter/material.dart';

import 'widgets/custom_bottom_nav.dart';
import 'widgets/home_widgets.dart';

part 'habits_screen.dart';
part 'home_screen.dart';
part 'profile_screen.dart';
part 'statistics_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() => selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      HomeScreen(),
      HabitsScreen(),
      StatisticsScreen(),
      ProfileScreen(),
      const SizedBox(),
    ];

    return Scaffold(
      body: screens[selectedIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavBar(
        onItemSelected: onItemTapped,
        selectedIndex: selectedIndex,
      ),
    );
  }
}
