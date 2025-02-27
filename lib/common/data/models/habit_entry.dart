import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../utils/constants/app_constants.dart';

part 'habit_entry.g.dart';

@Entity(tableName: AppConstants.entriesTable)
@JsonSerializable()
class HabitEntry {
  @PrimaryKey(autoGenerate: true)
  int? id;
  int? rid;
  int? habit;
  double? hours;
  String? doneAt;
  String? title;
  String? description;
  String? photos;
  String? createdAt;

  HabitEntry({
    this.rid,
    this.habit,
    this.hours,
    this.doneAt,
    this.title,
    this.description,
    this.photos,
    this.createdAt,
  });

  factory HabitEntry.fromJson(Map<String, dynamic> json) => _$HabitEntryFromJson(json);

  Map<String, dynamic> toJson() => _$HabitEntryToJson(this);
}
