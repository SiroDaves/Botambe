part of '../dashboard_screen.dart';

class SmallScreen extends StatefulWidget {
  final DashboardScreenState parent;
  const SmallScreen({super.key, required this.parent});

  @override
  State<SmallScreen> createState() => SmallScreenState();
}

class SmallScreenState extends State<SmallScreen> {
  late DashboardScreenState parent;

  void onPageChanged(int index) {
    setState(() {
      parent.selectedPage = index;
      parent.pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    parent = widget.parent;
    List<Widget> homeScreens = [
      HomeScreen(parent: parent),
      HabitsScreen(parent: parent),
      StatisticsScreen(parent: parent),
      ProfileScreen(parent: parent),
    ];

    return Scaffold(
      body: PageView(
        controller: parent.pageController,
        onPageChanged: onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: homeScreens.map((item) => item).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HabitEntryScreen(
                habits: parent.habits
                    .where((habit) => habit.isWeekday == parent.todayIsWeekday)
                    .toList(),
              ),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavBar(
        onItemSelected: onPageChanged,
        selectedIndex: parent.selectedPage,
      ),
    );
  }
}
