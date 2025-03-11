import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:time/time.dart';

import '../../../common/data/models/basic_models.dart';
import '../../../common/data/models/models.dart';
import '../../../common/repository/prefs_repository.dart';
import '../../../common/utils/app_util.dart';
import '../../../common/widget/action/sidebar.dart';
import '../../../common/widget/general/fading_index_stack.dart';
import '../../../common/widget/progress/custom_snackbar.dart';
import '../../../common/widget/progress/general_progress.dart';
import '../../../core/di/injectable.dart';
import '../../../core/navigator/route_names.dart';
import '../../../core/theme/theme_styles.dart';
import '../../entries/ui/habit_entry_screen.dart';
import '../../habits/habits_screen.dart';
import '../../home/home_screen.dart';
import '../../profile/profile_screen.dart';
import '../../stats/statistics_screen.dart';
import '../bloc/dashboard_bloc.dart';

part 'views/big_screen.dart';
part 'views/small_screen.dart';
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
  int selectedPage = 0;
  List<Habit> habits = [], todayHabits = [];
  List<HabitEntry> entries = [];
  bool todayIsWeekday = true, periodicSyncStarted = false;
  DateTime selectedDate = DateTime.now();
  final SupabaseClient supabase = Supabase.instance.client;
  String selectedDay = DateFormat('EEEE').format(DateTime.now());
  PageController pageController = PageController();
  PageType currentPage = PageType.home;

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

  @override
  Widget build(BuildContext context) {
    var l10n = AppLocalizations.of(context)!;
    todayIsWeekday = isWeekday(selectedDate);
    return BlocProvider(
      create: (context) {
        final bloc = DashboardBloc();
        isConnectedToInternet().then((isConnected) {
          bloc.add(
            isConnected
                ? DashboardFetchOnlineData()
                : DashboardFetchLocalData(),
          );
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
          var homeView = MediaQuery.of(context).size.shortestSide > 550
              ? BigScreen(parent: this)
              : SmallScreen(parent: this);
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
            fetchedLocal: (habits, entries) => homeView,
            fetchedOnline: (habits, entries) => homeView,
          );
        },
      ),
    );
  }
}
