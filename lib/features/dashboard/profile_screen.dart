part of 'dashboard_screen.dart';

class ProfileScreen extends StatelessWidget {
  final DashboardScreenState parent;
  const ProfileScreen({super.key, required this.parent});

  Future<void> _signOut(BuildContext context) async {
    //await supabase.auth.signOut();
    //Navigator.of(context).pushReplacementNamed('/login'); // Change as needed
  }

  @override
  Widget build(BuildContext context) {
    User user = parent.user;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            SizedBox(height: 16),
            Text(
              user.userMetadata?['display_name'] ?? 'Anon User',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              user.email ?? 'No Email',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () => _signOut(context),
              icon: Icon(Icons.logout),
              label: Text('Logout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
