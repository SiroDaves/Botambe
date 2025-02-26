import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../models/models.dart';
import 'dao/habits_dao.dart';
import 'dao/entries_dao.dart';

part 'app_database.g.dart';

@Database(
  version: 1,
  entities: [
    Habit,
    HabitEntry,
  ],
)
abstract class AppDatabase extends FloorDatabase {
  HabitsDao get habitsDao;
  HabitEntriesDao get entriesDao;
}

Future<AppDatabase> buildInMemoryDatabase() {
  return $FloorAppDatabase
      .inMemoryDatabaseBuilder()
      .build();
}
