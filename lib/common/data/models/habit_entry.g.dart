// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HabitEntry _$HabitEntryFromJson(Map<String, dynamic> json) => HabitEntry(
      rid: (json['rid'] as num?)?.toInt(),
      habit: (json['habit'] as num?)?.toInt(),
      hours: (json['hours'] as num?)?.toDouble(),
      doneAt: json['doneAt'] as String?,
      createdAt: json['createdAt'] as String?,
    )..id = (json['id'] as num?)?.toInt();

Map<String, dynamic> _$HabitEntryToJson(HabitEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rid': instance.rid,
      'habit': instance.habit,
      'hours': instance.hours,
      'doneAt': instance.doneAt,
      'createdAt': instance.createdAt,
    };
