import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../common/utils/app_util.dart';
import '../dashboard/ui/dashboard_screen.dart';

class HabitsScreen extends StatelessWidget {
  final DashboardScreenState parent;
  const HabitsScreen({super.key, required this.parent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Habits')),
      body: ListView.separated(
        padding: const EdgeInsets.all(8.0),
        itemCount: parent.entries.length,
        separatorBuilder: (context, index) => const SizedBox(
          height: 5,
        ),
        itemBuilder: (context, index) {
          final entry = parent.entries[index];

          return Card(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    entry.title ?? "No Title",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  [
                    Text(
                      formatDoneAt(entry.doneAt!),
                      style: TextStyle(fontSize: 14),
                    ),
                    const Spacer(),
                    Text('${entry.hours!.toStringAsFixed(0)} Hrs'),
                  ].toRow(),
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (entry.description!.isNotEmpty) ...[
                    Text(
                      entry.description!,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ],
              ),
              trailing: Icon(Icons.check_circle, color: Colors.green.shade400),
            ),
          );
        },
      ),
    );
  }
}
