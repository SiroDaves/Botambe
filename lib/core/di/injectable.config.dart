// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:botambe/common/data/db/app_database.dart' as _i676;
import 'package:botambe/common/repository/auth_repository.dart' as _i989;
import 'package:botambe/common/repository/db/database_repository.dart' as _i80;
import 'package:botambe/common/repository/prefs_repository.dart' as _i568;
import 'package:botambe/core/di/injectable.dart' as _i293;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> initGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => registerModule.prefsRepository(),
      preResolve: true,
    );
    gh.lazySingleton<_i989.AuthRepository>(() => _i989.AuthRepository());
    await gh.singletonAsync<_i676.AppDatabase>(
      () => registerModule.provideAppDatabase(),
      registerFor: {_prod},
      preResolve: true,
    );
    gh.singleton<_i568.PrefsRepository>(
        () => _i568.PrefsRepository(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i80.DatabaseRepository>(
      () => registerModule.provideDatabaseRepository(gh<_i676.AppDatabase>()),
      registerFor: {_prod},
    );
    return this;
  }
}

class _$RegisterModule extends _i293.RegisterModule {}
