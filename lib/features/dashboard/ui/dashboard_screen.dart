import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../common/repository/prefs_repository.dart';
import '../../../common/utils/app_util.dart';
import '../../../common/utils/constants/app_assets.dart';
import '../../../common/widget/progress/custom_snackbar.dart';
import '../../../core/di/injectable.dart';
import '../../../core/navigator/route_names.dart';
import '../../profile/widgets/numbers_widget.dart';
import 'widgets/custom_bottom_nav.dart';
import 'widgets/home_widgets.dart';
import '../../profile/widgets/avatar_widget.dart';

part 'habits_screen.dart';
part 'home_screen.dart';
part '../../profile/profile_screen.dart';
part 'statistics_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  late PrefsRepository prefRepo;
  late User user;
  int selectedIndex = 0;
  final SupabaseClient _supabase = Supabase.instance.client;

  @override
  void initState() {
    super.initState();
    prefRepo = getIt<PrefsRepository>();
    try {
      user = _supabase.auth.currentSession!.user;
    } catch (e) {
      logger('User not found: $e');
    }
  }

  void onItemTapped(int index) {
    setState(() => selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      HomeScreen(parent: this),
      HabitsScreen(),
      StatisticsScreen(),
      ProfileScreen(parent: this),
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
