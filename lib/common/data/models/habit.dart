import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../utils/constants/app_constants.dart';

part 'habit.g.dart';

@Entity(tableName: AppConstants.habitsTable)
@JsonSerializable()
class Habit {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final int? rid;
  final String? title;
  final bool isMandatory;
  final bool isWeekday;
  final double hours;
  final String createdAt;

  Habit({
    this.id,
    this.rid,
    this.title,
    this.isMandatory = false,
    this.isWeekday = true,
    double? hours,
    String? createdAt,
  })  : hours = hours ?? 1.0,
        createdAt = createdAt ?? DateTime.now().toIso8601String();

  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);

  Map<String, dynamic> toJson() => _$HabitToJson(this);

  Habit copyWith({
    int? id,
    int? rid,
    String? title,
    bool? isMandatory,
    bool? isWeekday,
    double? hours,
    String? createdAt,
  }) {
    return Habit(
      id: id ?? this.id,
      rid: rid ?? this.rid,
      title: title ?? this.title,
      isMandatory: isMandatory ?? this.isMandatory,
      isWeekday: isWeekday ?? this.isWeekday,
      hours: hours ?? this.hours,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
