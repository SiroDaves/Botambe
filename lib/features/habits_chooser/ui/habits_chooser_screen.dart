import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../common/data/models/habit.dart';
import '../../../common/widget/action/base_buttons.dart';
import '../../../common/widget/progress/custom_snackbar.dart';
import '../../../common/widget/progress/general_progress.dart';
import '../../../core/navigator/route_names.dart';
import '../../../core/theme/theme_colors.dart';
import '../bloc/habits_chooser_bloc.dart';

part 'widgets/habit_card.dart';
part 'widgets/habit_item.dart';

class HabitsChooserScreen extends StatefulWidget {
  const HabitsChooserScreen({super.key});

  @override
  HabitsChooserScreenState createState() => HabitsChooserScreenState();
}

class HabitsChooserScreenState extends State<HabitsChooserScreen> {
  List<Habit> selectedHabits = [];

  void toggleHabit(Habit habit) {
    setState(() {
      if (selectedHabits.any((h) => h.title == habit.title)) {
        selectedHabits.removeWhere((h) => h.title == habit.title);
      } else {
        selectedHabits.add(habit.copyWith(hours: habit.hours));
      }
    });
  }

  void updateHours(Habit habit, double value) {
    setState(() {
      int index = selectedHabits.indexWhere((h) => h.title == habit.title);
      if (index != -1) {
        selectedHabits[index] = selectedHabits[index].copyWith(hours: value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var l10n = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => HabitsChooserBloc()..add(const FetchData()),
      child: BlocConsumer<HabitsChooserBloc, HabitsChooserState>(
        listener: (context, state) {
          if (state is HabitsChooserFetchedState) {
            setState(() {
              selectedHabits = state.habits
                  .where((habit) => habit.isMandatory)
                  .map((habit) => habit.copyWith(hours: habit.hours))
                  .toList();
            });
          } else if (state is HabitsChooserSuccessState) {
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
          } else if (state is HabitsChooserFailureState) {
            CustomSnackbar.show(context, state.feedback);
          }
        },
        builder: (context, state) {
          var bloc = context.read<HabitsChooserBloc>();
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(title: Text(l10n.chooseHabits)),
            body: state.maybeWhen(
              orElse: () => const SizedBox(),
              failure: (feedback) => EmptyState(
                title: l10n.habitChooserFailure,
                showRetry: true,
                onRetry: () => bloc.add(const FetchData()),
              ),
              progress: () => LoadingProgress(title: l10n.fetchingData),
              fetched: (habits) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 5),
                    Text(
                      l10n.setDailyHabits,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const SizedBox(height: 5),
                    Expanded(
                      child: Swiper(
                        itemBuilder: (context, index) {
                          List<Habit> filteredHabits = habits
                              .where((h) => h.isWeekday == (index == 0))
                              .toList();
                          return HabitCard(
                            habits: filteredHabits,
                            isWeekday: index == 0,
                            selectedHabits: selectedHabits,
                            onToggle: toggleHabit,
                            onHoursChanged: updateHours,
                          );
                        },
                        itemCount: 2,
                        viewportFraction: 0.8,
                        scale: 0.9,
                        pagination: const SwiperPagination(
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                    [
                      AppButton(
                        key: const Key('choose_habit_proceed_button'),
                        onPressed: () {
                          bloc.add(HabitsChooserEvent.save(selectedHabits));
                        },
                        label: l10n.getStarted,
                        bgColor: ThemeColors.primary,
                        foreColor: Colors.white,
                        hoverColor: Colors.red,
                      ).expanded()
                    ].toRow(),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
