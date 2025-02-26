// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Habit _$HabitFromJson(Map<String, dynamic> json) => Habit(
      id: (json['id'] as num?)?.toInt(),
      rid: (json['rid'] as num?)?.toInt(),
      title: json['title'] as String?,
      isMandatory: json['isMandatory'] as bool? ?? false,
      isWeekday: json['isWeekday'] as bool? ?? true,
      hours: (json['hours'] as num?)?.toDouble(),
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$HabitToJson(Habit instance) => <String, dynamic>{
      'id': instance.id,
      'rid': instance.rid,
      'title': instance.title,
      'isMandatory': instance.isMandatory,
      'isWeekday': instance.isWeekday,
      'hours': instance.hours,
      'createdAt': instance.createdAt,
    };
