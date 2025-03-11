import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supa;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'common/auth/auth_bloc.dart';
import 'common/repository/auth_repository.dart';
import 'common/repository/prefs_repository.dart';
import 'common/utils/app_util.dart';
import 'common/utils/constants/pref_constants.dart';
import 'core/di/injectable.dart';
import 'core/navigator/main_navigator.dart';
import 'core/navigator/route_names.dart';
import 'core/theme/bloc/theme_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  
  final supabaseUrl = dotenv.env['SUPABASE_URL'];
  final supabaseAnonKey = dotenv.env['SUPABASE_ANON_KEY'];

  await supa.Supabase.initialize(url: supabaseUrl!, anonKey: supabaseAnonKey!);
  logger('Supabase init started: $supabaseUrl');
  await configureDependencies(kIsWeb ? 'dev' : 'prod');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  final Widget? dashboard;
  const MyApp({super.key, this.dashboard});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final navigatorKey = MainNavigatorState.navigationKey;
  NavigatorState get navigator =>
      MainNavigatorState.navigationKey.currentState!;

  late final AuthRepository _authRepo;

  @override
  void initState() {
    super.initState();
    _authRepo = AuthRepository();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authRepo,
      child: BlocProvider(
        create: (_) => AuthBloc(authRepo: _authRepo),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  final Widget? dashboard;
  const AppView({super.key, this.dashboard});

  @override
  State<AppView> createState() => AppViewState();
}

class AppViewState extends State<AppView> {
  final navigatorKey = MainNavigatorState.navigationKey;
  NavigatorState get navigator =>
      MainNavigatorState.navigationKey.currentState!;

  @override
  Widget build(BuildContext context) {
    var prefRepo = getIt<PrefsRepository>();
    bool isOnboarded = prefRepo.getPrefBool(PrefConstants.isOnboardedKey);

    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp(
            home: widget.dashboard,
            debugShowCheckedModeBanner: false,
            navigatorKey: navigatorKey,
            supportedLocales: const [Locale('en'), Locale('sw')],
            initialRoute: MainNavigatorState.initialRoute,
            onGenerateRoute: MainNavigatorState.onGenerateRoute,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            builder: (context, child) => BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                switch (state.status) {
                  case AuthStatus.unauthenticated:
                    navigator.pushNamedAndRemoveUntil<void>(
                      RouteNames.signin,
                      (route) => false,
                    );
                  case AuthStatus.authenticated:
                    if (isOnboarded) {
                      navigator.pushNamedAndRemoveUntil<void>(
                        RouteNames.dashboard,
                        (route) => false,
                      );
                    } else {
                      prefRepo.setPrefString(
                        PrefConstants.dateInstalledKey,
                        dateNow(),
                      );

                      navigator.pushNamedAndRemoveUntil<void>(
                        RouteNames.onboarding,
                        (route) => false,
                      );
                    }
                }
              },
              child: child,
            ),
          );
        },
      ),
    );
  }
}
