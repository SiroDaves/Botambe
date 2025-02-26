part of 'habits_chooser_bloc.dart';

@freezed
class HabitsChooserState with _$HabitsChooserState {
  const factory HabitsChooserState.initial() = _HabitsChooserState;

  const factory HabitsChooserState.loaded() = HabitsChooserLoadedState;

  const factory HabitsChooserState.progress() = HabitsChooserProgressState;

  const factory HabitsChooserState.success() = HabitsChooserSuccessState;

  const factory HabitsChooserState.fetched(
    List<Habit> habits,
  ) = HabitsChooserFetchedState;

  const factory HabitsChooserState.failure(String feedback) = HabitsChooserFailureState;
}
