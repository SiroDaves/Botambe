part of '../dashboard_screen.dart';

class BigScreen extends StatefulWidget {
  final DashboardScreenState parent;
  const BigScreen({super.key, required this.parent});

  @override
  State<BigScreen> createState() => BigScreenState();
}

class BigScreenState extends State<BigScreen> {
  late DashboardScreenState parent;

  void setCurrentPage(PageType page) {
    setState(() => parent.currentPage = page);
  }

  @override
  Widget build(BuildContext context) {
    parent = widget.parent;

    return Scaffold(
      body: Stack(
        children: [
          FadingIndexedStack(
            duration: AppDurations.slow,
            index: pages.indexOf(parent.currentPage),
            children: <Widget>[
              HomeScreen(parent: parent),
              HabitsScreen(parent: parent),
              StatisticsScreen(parent: parent),
              ProfileScreen(parent: parent),
            ],
          )
              .positioned(left: 250, right: 0, bottom: 0, top: 0, animate: true)
              .animate(.35.seconds, Curves.bounceIn),
          Sidebar(
            pageType: parent.currentPage,
            onSelect: (page) => setCurrentPage(page),
          )
              .positioned(left: 0, top: 0, bottom: 0, width: 250, animate: true)
              .animate(.35.seconds, Curves.easeOut),
        ],
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
    );
  }
}
