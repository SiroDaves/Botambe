part of 'dashboard_screen.dart';

class HabitsScreen extends StatelessWidget {
  const HabitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Habits')),
      body: Center(child: Text('List of all habits and loading indicators.')),
    );
  }
}