import '../../data/db/app_database.dart';
import '../../data/models/models.dart';
import 'database_repository.dart';

/// Implementor of Database Repository
class DatabaseRepositoryImpl implements DatabaseRepository {
  final AppDatabase _appDB;

  DatabaseRepositoryImpl(this._appDB);

  @override
  Future<List<HabitEntry>> fetchHabitEntries() async {
    return _appDB.entriesDao.fetchHabitEntries();
  }

  @override
  Future<void> saveHabitEntry(HabitEntry entry) async {
    return _appDB.entriesDao.insertHabitEntry(entry);
  }

  @override
  Future<void> deleteHabitEntry(HabitEntry entry) async {
    return _appDB.entriesDao.deleteHabitEntry(entry);
  }

  @override
  Future<void> removeAllHabitEntries() async {
    return _appDB.entriesDao.deleteAllHabitEntries();
  }

  @override
  Future<List<Habit>> fetchHabits() async {
    return _appDB.habitsDao.fetchHabits();
  }

  @override
  Future<void> saveHabit(Habit habit) async {
    return _appDB.habitsDao.insertHabit(habit);
  }

  @override
  Future<void> deleteHabit(Habit habit) async {
    return _appDB.habitsDao.deleteHabit(habit);
  }

  @override
  Future<void> removeAllHabits() async {
    return _appDB.habitsDao.deleteAllHabits();
  }

}
