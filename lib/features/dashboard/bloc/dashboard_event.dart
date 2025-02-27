part of 'dashboard_bloc.dart';

@freezed
sealed class HabitsChooserEvent with _$HabitsChooserEvent {
  const factory HabitsChooserEvent.fetch() = FetchData;

  const factory HabitsChooserEvent.save(
    List<Habit> habits,
  ) = SaveData;
}
