part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _DashboardState;

  const factory DashboardState.loaded() = DashboardLoadedState;

  const factory DashboardState.loading() = DashboardLoadingState;

  const factory DashboardState.success() = DashboardSuccessState;

  const factory DashboardState.saved() = DashboardEntrySavedState;

  const factory DashboardState.fetchedLocal(
    List<Habit> habits,
    List<HabitEntry> entries,
  ) = DashboardFetchedLocalState;

  const factory DashboardState.fetchedOnline(
    List<Habit> habits,
    List<HabitEntry> entries,
  ) = DashboardFetchedOnlineState;

  const factory DashboardState.failure(String feedback) = DashboardFailureState;
}
