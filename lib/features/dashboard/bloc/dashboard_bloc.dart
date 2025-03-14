import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/data/models/models.dart';
import '../../../common/repository/db/database_repository.dart';
import '../../../common/repository/prefs_repository.dart';
import '../../../common/utils/constants/pref_constants.dart';
import '../../../core/di/injectable.dart';
import '../domain/dashboard_repository.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(const _DashboardState()) {
    on<DashboardFetchLocalData>(_onFetchLocalData);
    on<DashboardFetchOnlineData>(_onFetchOnlineData);
    on<DashboardSaveEntry>(_onSaveEntry);
  }

  final _dashboardRepo = DashboardRepository();
  final _prefsRepo = getIt<PrefsRepository>();

  void _onFetchLocalData(
    DashboardFetchLocalData event,
    Emitter<DashboardState> emit,
  ) async {
    List<Habit> habits = [];
    List<HabitEntry> entries = [];
    emit(const DashboardLoadingState());

    if (kIsWeb) {
      habits = _prefsRepo.habits!;
    } else {
      final dbRepo = getIt<DatabaseRepository>();
      habits = await dbRepo.fetchHabits();
      entries = await dbRepo.fetchHabitEntries();
    }
    emit(DashboardFetchedLocalState(habits, entries));
  }

  void _onFetchOnlineData(
    DashboardFetchOnlineData event,
    Emitter<DashboardState> emit,
  ) async {
    List<Habit> habits = [];
    List<HabitEntry> entries = [];
    emit(const DashboardLoadingState());
    entries = await _dashboardRepo.fetchHabitEntries();

    if (kIsWeb) {
      habits = _prefsRepo.habits!;
    } else {
      final dbRepo = getIt<DatabaseRepository>();
      habits = await dbRepo.fetchHabits();
      if (entries.isNotEmpty) {
        dbRepo.removeAllHabitEntries();
        for (final item in entries) {
          dbRepo.saveHabitEntry(entry: item);
        }
      } else {
        entries = await dbRepo.fetchHabitEntries();
      }
    }
    emit(DashboardFetchedOnlineState(habits, entries));
  }

  void _onSaveEntry(
    DashboardSaveEntry event,
    Emitter<DashboardState> emit,
  ) async {
    emit(const DashboardLoadingState());

    if (!kIsWeb) {
      final dbRepo = getIt<DatabaseRepository>();
      await dbRepo.saveHabitEntry(entry: event.entry);
    }
    await _dashboardRepo.saveHabitEntry(entry: event.entry);

    await Future<void>.delayed(const Duration(seconds: 10));
    _prefsRepo.setPrefBool(PrefConstants.isOnboardedKey, true);

    emit(const DashboardEntrySavedState());
  }
}
