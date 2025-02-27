import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/data/models/models.dart';
import '../../../common/repository/db/database_repository.dart';
import '../../../common/repository/prefs_repository.dart';
import '../../../common/utils/constants/pref_constants.dart';
import '../../../core/di/injectable.dart';
import '../domain/habits_chooser_repository.dart';

part 'habits_chooser_event.dart';
part 'habits_chooser_state.dart';

part 'habits_chooser_bloc.freezed.dart';

class HabitsChooserBloc extends Bloc<HabitsChooserEvent, HabitsChooserState> {
  HabitsChooserBloc() : super(const _HabitsChooserState()) {
    on<FetchData>(_onFetchData);
    on<SaveData>(_onSaveData);
  }

  final _habitsRepo = HabitsChooserRepository();
  final _prefsRepo = getIt<PrefsRepository>();
  final _dbRepo = getIt<DatabaseRepository>();

  void _onFetchData(
    FetchData event,
    Emitter<HabitsChooserState> emit,
  ) async {
    List<Habit> habits = [];
    emit(const HabitsChooserLoadingState());

    habits = await _habitsRepo.fetchHabits();

    if (habits.isNotEmpty) {
      emit(HabitsChooserFetchedState(habits));
    } else {
      emit(HabitsChooserFailureState('Could not fetch habits'));
    }
  }

  void _onSaveData(
    SaveData event,
    Emitter<HabitsChooserState> emit,
  ) async {
    emit(const HabitsChooserLoadingState());

    await _dbRepo.removeAllHabits();
    for (final habit in event.habits) {
      await _dbRepo.saveHabit(habit: habit);
    }

    await Future<void>.delayed(const Duration(seconds: 10));
    _prefsRepo.setPrefBool(PrefConstants.isOnboardedKey, true);

    emit(const HabitsChooserSuccessState());
  }
}
