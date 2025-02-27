part of '../habit_entry_screen.dart';

class HabitEntryForm extends StatefulWidget {
  final HabitEntryScreenState parent;
  const HabitEntryForm({super.key, required this.parent});

  @override
  State<HabitEntryForm> createState() => HabitEntryFormState();
}

class HabitEntryFormState extends State<HabitEntryForm> {
  late HabitEntryScreenState parent;
  @override
  Widget build(BuildContext context) {
    parent = widget.parent;
    var bloc = context.read<DashboardBloc>();
    var l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          AppDropdown<Habit>(
            key: const Key('entry_habit_input'),
            label: l10n.entryHabit,
            items: parent.habits,
            value: parent.habit,
            getItemLabel: (Habit h) => h.title!,
            onChanged: (Habit? newValue) {
              parent.updateGreeting();
              setState(() {
                parent.titleController!.text = parent.activityTitle;
              });
              setState(() => parent.habit = newValue!);
            },
          ),
          const SizedBox(height: 10),
          FormInput(
            key: const Key('entry_title_input'),
            label: l10n.entryTitle,
            hint: l10n.entryTitle,
            controller: parent.titleController,
          ),
          const SizedBox(height: 10),
          DropDownWidget(
            key: const Key('entry_hours_input'),
            label: l10n.entryHours,
            value: parent.hours,
            items: List.generate(
              12,
              (index) => (index + 1).toString(),
            ),
            onChanged: (String? newValue) {
              setState(() => parent.hours = newValue!);
            },
          ),
          const SizedBox(height: 10),
          FormInput(
            key: const Key('entry_desc_input'),
            label: l10n.entryDesc,
            hint: l10n.entryDesc,
            controller: parent.descController,
          ),
          const SizedBox(height: 20),
          [
            AppButton(
              key: const Key('entry_button'),
              onPressed: () {
                bloc.add(DashboardSaveEntry(newEntry(parent)));
              },
              label: l10n.newHabitEntry,
              bgColor: ThemeColors.primary,
              foreColor: Colors.white,
              hoverColor: Colors.red,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ).expanded()
          ].toRow(),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
