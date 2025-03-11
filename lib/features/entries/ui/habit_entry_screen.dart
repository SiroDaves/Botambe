import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../../../common/repository/auth_repository.dart';
import '../../../../../common/repository/prefs_repository.dart';
import '../../../../../common/widget/action/base_buttons.dart';
import '../../../../../common/widget/inputs/form_input.dart';
import '../../../../../common/widget/progress/custom_snackbar.dart';
import '../../../../../common/widget/progress/general_progress.dart';
import '../../../../../core/di/injectable.dart';
import '../../../../../core/theme/theme_colors.dart';
import '../../../common/data/models/models.dart';
import '../../../common/widget/inputs/app_dropdown.dart';
import '../../../common/widget/responsive_layout.dart';
import '../../dashboard/bloc/dashboard_bloc.dart';
import '../common/habit_entry_utils.dart';

part 'widgets/habit_entry_form.dart';

class HabitEntryScreen extends StatefulWidget {
  final List<Habit> habits;
  const HabitEntryScreen({super.key, required this.habits});

  @override
  State<HabitEntryScreen> createState() => HabitEntryScreenState();
}

class HabitEntryScreenState extends State<HabitEntryScreen> {
  late AppLocalizations l10n;
  late PrefsRepository prefRepo;
  late AuthRepository authRepo;
  bool isOnboarded = false, isPassResetting = false;
  String hours = '1', activityTitle = "";
  DateTime selectedDate = DateTime.now();

  Habit? habit;
  List<Habit> habits = [];
  TextEditingController? titleController, descController;

  void updateGreeting() {
    String selectedDay = DateFormat('EEEE').format(selectedDate);
    final hour = DateTime.now().hour;
    if (habit!.title == 'Work') {
      activityTitle = "$selectedDay ${habit!.title}";
    } else if (habit!.title == 'Rest') {
      activityTitle = "$selectedDay ${habit!.title}";
    } else {
      if (hour < 12) {
        activityTitle = "Morning ${habit!.title}";
      } else if (hour < 18) {
        activityTitle = "Afternoon ${habit!.title}";
      } else {
        activityTitle = "Evening ${habit!.title}";
      }
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    habits = widget.habits;
    habit = widget.habits.isNotEmpty ? widget.habits.first : null;

    prefRepo = getIt<PrefsRepository>();
    authRepo = getIt<AuthRepository>();
    updateGreeting();
    titleController = TextEditingController(text: activityTitle);
    descController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    l10n = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => DashboardBloc(),
      child: BlocConsumer<DashboardBloc, DashboardState>(
        listener: (context, state) {
          if (state is DashboardEntrySavedState) {
            context.read<DashboardBloc>().add(DashboardFetchLocalData());
            Navigator.pop(context, true);
          } else if (state is DashboardFailureState) {
            CustomSnackbar.show(context, state.feedback);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: Text(l10n.addNewHabit)),
            body: state.maybeWhen(
              loading: () => LoadingProgress(title: l10n.processingData),
              orElse: () => ResponsiveLayout(
                showMobileView: true,
                child: HabitEntryForm(parent: this),
              ),
            ),
          );
        },
      ),
    );
  }
}
