part of 'dashboard_bloc.dart';

@freezed
sealed class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.fetchlocal() = DashboardFetchLocalData;

  const factory DashboardEvent.fetchOnline() = DashboardFetchOnlineData;

  const factory DashboardEvent.save(HabitEntry entry) = DashboardSaveEntry;
}
