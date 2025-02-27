// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $AppDatabaseBuilderContract {
  /// Adds migrations to the builder.
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $AppDatabaseBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<AppDatabase> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder implements $AppDatabaseBuilderContract {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $AppDatabaseBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  HabitsDao? _habitsDaoInstance;

  HabitEntriesDao? _entriesDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `habits` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `rid` INTEGER, `title` TEXT, `isMandatory` INTEGER NOT NULL, `isWeekday` INTEGER NOT NULL, `hours` REAL NOT NULL, `createdAt` TEXT NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `entries` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `rid` INTEGER, `habit` INTEGER, `hours` REAL, `doneAt` TEXT, `title` TEXT, `description` TEXT, `photos` TEXT, `createdAt` TEXT)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  HabitsDao get habitsDao {
    return _habitsDaoInstance ??= _$HabitsDao(database, changeListener);
  }

  @override
  HabitEntriesDao get entriesDao {
    return _entriesDaoInstance ??= _$HabitEntriesDao(database, changeListener);
  }
}

class _$HabitsDao extends HabitsDao {
  _$HabitsDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _habitInsertionAdapter = InsertionAdapter(
            database,
            'habits',
            (Habit item) => <String, Object?>{
                  'id': item.id,
                  'rid': item.rid,
                  'title': item.title,
                  'isMandatory': item.isMandatory ? 1 : 0,
                  'isWeekday': item.isWeekday ? 1 : 0,
                  'hours': item.hours,
                  'createdAt': item.createdAt
                }),
        _habitDeletionAdapter = DeletionAdapter(
            database,
            'habits',
            ['id'],
            (Habit item) => <String, Object?>{
                  'id': item.id,
                  'rid': item.rid,
                  'title': item.title,
                  'isMandatory': item.isMandatory ? 1 : 0,
                  'isWeekday': item.isWeekday ? 1 : 0,
                  'hours': item.hours,
                  'createdAt': item.createdAt
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Habit> _habitInsertionAdapter;

  final DeletionAdapter<Habit> _habitDeletionAdapter;

  @override
  Future<Habit?> findHabitById(int id) async {
    return _queryAdapter.query('SELECT * FROM habits WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Habit(
            id: row['id'] as int?,
            rid: row['rid'] as int?,
            title: row['title'] as String?,
            isMandatory: (row['isMandatory'] as int) != 0,
            isWeekday: (row['isWeekday'] as int) != 0,
            hours: row['hours'] as double?,
            createdAt: row['createdAt'] as String?),
        arguments: [id]);
  }

  @override
  Future<List<Habit>> fetchHabits() async {
    return _queryAdapter.queryList('SELECT * FROM habits',
        mapper: (Map<String, Object?> row) => Habit(
            id: row['id'] as int?,
            rid: row['rid'] as int?,
            title: row['title'] as String?,
            isMandatory: (row['isMandatory'] as int) != 0,
            isWeekday: (row['isWeekday'] as int) != 0,
            hours: row['hours'] as double?,
            createdAt: row['createdAt'] as String?));
  }

  @override
  Future<void> deleteAllHabits() async {
    await _queryAdapter.queryNoReturn('DELETE FROM habits');
  }

  @override
  Future<void> insertHabit(Habit habit) async {
    await _habitInsertionAdapter.insert(habit, OnConflictStrategy.replace);
  }

  @override
  Future<void> deleteHabit(Habit habit) async {
    await _habitDeletionAdapter.delete(habit);
  }
}

class _$HabitEntriesDao extends HabitEntriesDao {
  _$HabitEntriesDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _habitEntryInsertionAdapter = InsertionAdapter(
            database,
            'entries',
            (HabitEntry item) => <String, Object?>{
                  'id': item.id,
                  'rid': item.rid,
                  'habit': item.habit,
                  'hours': item.hours,
                  'doneAt': item.doneAt,
                  'title': item.title,
                  'description': item.description,
                  'photos': item.photos,
                  'createdAt': item.createdAt
                }),
        _habitEntryDeletionAdapter = DeletionAdapter(
            database,
            'entries',
            ['id'],
            (HabitEntry item) => <String, Object?>{
                  'id': item.id,
                  'rid': item.rid,
                  'habit': item.habit,
                  'hours': item.hours,
                  'doneAt': item.doneAt,
                  'title': item.title,
                  'description': item.description,
                  'photos': item.photos,
                  'createdAt': item.createdAt
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<HabitEntry> _habitEntryInsertionAdapter;

  final DeletionAdapter<HabitEntry> _habitEntryDeletionAdapter;

  @override
  Future<HabitEntry?> findHabitEntryById(int id) async {
    return _queryAdapter.query('SELECT * FROM entries WHERE id = ?1',
        mapper: (Map<String, Object?> row) => HabitEntry(
            rid: row['rid'] as int?,
            habit: row['habit'] as int?,
            hours: row['hours'] as double?,
            doneAt: row['doneAt'] as String?,
            title: row['title'] as String?,
            description: row['description'] as String?,
            photos: row['photos'] as String?,
            createdAt: row['createdAt'] as String?),
        arguments: [id]);
  }

  @override
  Future<List<HabitEntry>> fetchHabitEntries() async {
    return _queryAdapter.queryList('SELECT * FROM entries',
        mapper: (Map<String, Object?> row) => HabitEntry(
            rid: row['rid'] as int?,
            habit: row['habit'] as int?,
            hours: row['hours'] as double?,
            doneAt: row['doneAt'] as String?,
            title: row['title'] as String?,
            description: row['description'] as String?,
            photos: row['photos'] as String?,
            createdAt: row['createdAt'] as String?));
  }

  @override
  Future<void> deleteAllHabitEntries() async {
    await _queryAdapter.queryNoReturn('DELETE FROM entries');
  }

  @override
  Future<void> insertHabitEntry(HabitEntry entry) async {
    await _habitEntryInsertionAdapter.insert(entry, OnConflictStrategy.replace);
  }

  @override
  Future<void> deleteHabitEntry(HabitEntry entry) async {
    await _habitEntryDeletionAdapter.delete(entry);
  }
}
