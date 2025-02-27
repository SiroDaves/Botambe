import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../common/utils/constants/app_assets.dart';
import '../../common/widget/progress/custom_snackbar.dart';
import '../../core/navigator/route_names.dart';
import '../dashboard/ui/dashboard_screen.dart';

part 'widgets/avatar_widget.dart';
part 'widgets/numbers_widget.dart';

class ProfileScreen extends StatelessWidget {
  final DashboardScreenState parent;
  const ProfileScreen({super.key, required this.parent});

  void _signOut(BuildContext context) {
    parent.supabase.auth.signOut();
    CustomSnackbar.show(
      context,
      "Exit is that way, We'll miss you",
      isSuccess: true,
    );
    Navigator.pushNamedAndRemoveUntil(
      context,
      RouteNames.signin,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    User user = parent.user;
    Color color = Theme.of(context).colorScheme.primary;

    var usersName = Column(
      children: [
        Text(
          user.userMetadata?['display_name'] ?? 'Anon User',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 4),
        Text(user.email!)
      ],
    );
    var signOutAction = Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          backgroundColor: color,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        ),
        child: Text('Sign Out'),
        onPressed: () => _signOut(context),
      ),
    );

    var aboutUser = Padding(
      padding: EdgeInsets.all(20),
      child: Card(
        color: color,
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Am an average person in life',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.4,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 20),
          AvatarWidget(
              radius: 120,
              imagePath: 'https://siro.co.ke',
            onClicked: () async {},
          ),
          const SizedBox(height: 10),
          usersName,
          const SizedBox(height: 5),
          signOutAction,
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(),
          ),
          NumbersWidget(),
          const SizedBox(height: 20),
          aboutUser,
        ],
      ),
    );
  }
}
