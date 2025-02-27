import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../common/data/models/models.dart';
import '../../../common/repository/prefs_repository.dart';
import '../../../common/utils/app_util.dart';
import '../../../common/widget/progress/custom_snackbar.dart';
import '../../../common/widget/progress/general_progress.dart';
import '../../../core/di/injectable.dart';
import '../../../core/navigator/route_names.dart';
import '../../entries/ui/habit_entry_screen.dart';
import '../../habits/habits_screen.dart';
import '../../home/home_screen.dart';
import '../../profile/profile_screen.dart';
import '../../stats/statistics_screen.dart';
import '../bloc/dashboard_bloc.dart';

part 'widgets/custom_bottom_nav.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  late PrefsRepository prefRepo;
  late DashboardBloc _bloc;
  Timer? _syncTimer;
  late User user;
  int selectedIndex = 0;
  List<Habit> habits = [], todayHabits = [];
  List<HabitEntry> entries = [];
  bool todayIsWeekday = true, periodicSyncStarted = false;
  DateTime selectedDate = DateTime.now();
  final SupabaseClient supabase = Supabase.instance.client;
  String selectedDay = DateFormat('EEEE').format(DateTime.now());

  @override
  void initState() {
    super.initState();
    prefRepo = getIt<PrefsRepository>();
    try {
      user = supabase.auth.currentSession!.user;
    } catch (e) {
      logger('User not found: $e');
    }
  }

  @override
  void dispose() {
    _syncTimer?.cancel();
    super.dispose();
  }

  void startPeriodicSync() {
    periodicSyncStarted = true;
    _syncTimer = Timer.periodic(Duration(minutes: 5), (_) async {
      if (await isConnectedToInternet()) _bloc.add(DashboardFetchOnlineData());
    });
  }

  bool isWeekday(DateTime date) {
    return date.weekday >= DateTime.monday && date.weekday <= DateTime.friday;
  }

  void onItemTapped(int index) {
    setState(() => selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    var l10n = AppLocalizations.of(context)!;
    todayIsWeekday = isWeekday(selectedDate);
    return BlocProvider(
      create: (context) {
        final bloc = DashboardBloc();
        isConnectedToInternet().then((isConnected) {
          bloc.add(isConnected
              ? DashboardFetchOnlineData()
              : DashboardFetchLocalData());
        });
        return bloc;
      },
      child: BlocConsumer<DashboardBloc, DashboardState>(
        listener: (context, state) {
          _bloc = context.read<DashboardBloc>();
          if (state is DashboardFetchedOnlineState) {
            setState(() {
              habits = state.habits;
              entries = state.entries;
            });
            if (!periodicSyncStarted) startPeriodicSync();
          } else if (state is DashboardFetchedLocalState) {
            setState(() {
              habits = state.habits;
              entries = state.entries;
            });
            if (!periodicSyncStarted) startPeriodicSync();
          } else if (state is DashboardSuccessState) {
            CustomSnackbar.show(
              context,
              l10n.habitChooserSuccess,
              isSuccess: true,
            );
            Navigator.pushNamedAndRemoveUntil(
              context,
              RouteNames.dashboard,
              (route) => false,
            );
          } else if (state is DashboardFailureState) {
            CustomSnackbar.show(context, state.feedback);
          }
        },
        builder: (context, state) {
          final List<Widget> screens = [
            HomeScreen(parent: this),
            HabitsScreen(parent: this),
            StatisticsScreen(parent: this),
            ProfileScreen(parent: this),
            const SizedBox(),
          ];
          var bodyWidget = Scaffold(
            body: screens[selectedIndex],
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.pinkAccent,
              shape: const CircleBorder(),
              child: const Icon(Icons.add, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HabitEntryScreen(
                      habits: habits
                          .where((habit) => habit.isWeekday == todayIsWeekday)
                          .toList(),
                    ),
                  ),
                );
              },
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: CustomBottomNavBar(
              onItemSelected: onItemTapped,
              selectedIndex: selectedIndex,
            ),
          );
          return state.maybeWhen(
            orElse: () => const Scaffold(body: SizedBox()),
            failure: (feedback) => Scaffold(
              body: EmptyState(
                title: l10n.habitChooserFailure,
                showRetry: true,
                onRetry: () => _bloc.add(const DashboardFetchLocalData()),
              ),
            ),
            loading: () =>
                Scaffold(body: LoadingProgress(title: l10n.fetchingData)),
            fetchedLocal: (habits, entries) => bodyWidget,
            fetchedOnline: (habits, entries) => bodyWidget,
          );
        },
      ),
    );
  }
}
