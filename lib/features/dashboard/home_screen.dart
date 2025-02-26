part of 'dashboard_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var greatingsWidget = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              radius: 24,
              child: Icon(Icons.person, color: Colors.white),
            ),
            const SizedBox(width: 10),
            Text(
              "Good morning 👋",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
            greatingsWidget,
            const SizedBox(height: 20),
            const Text(
              "Ready to run?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const DateSelector(),
            const SizedBox(height: 20),
            const Text(
              "Your habits",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
                children: const [
                  HabitCard(
                    title: "All habits",
                    subtitle: "4 habits",
                    icon: Icons.list_alt,
                    color: Colors.blueAccent,
                  ),
                  HabitCard(
                    title: "Workout",
                    subtitle: "2 Hours",
                    icon: Icons.fitness_center,
                    color: Colors.pinkAccent,
                  ),
                  HabitCard(
                    title: "Running",
                    subtitle: "5000 Steps",
                    icon: Icons.directions_run,
                    color: Colors.lightBlue,
                  ),
                  HabitCard(
                    title: "Overdue",
                    subtitle: "3 habits",
                    icon: Icons.warning_amber_rounded,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
