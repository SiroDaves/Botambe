import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/di/injectable.dart';
import '../utils/app_util.dart';
import 'prefs_repository.dart';

enum AuthStatus { authenticated, unauthenticated }

@lazySingleton
class AuthRepository {
  final _controller = StreamController<AuthStatus>();

  Stream<AuthStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 3));
    yield AuthStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> signin(Session? session) async {
    var prefRepo = getIt<PrefsRepository>();
    prefRepo.session = session;
    prefRepo.user = session!.user;
    
    logger("User auth status: Authenticated");
    await Future.delayed(
      const Duration(seconds: 2),
      () => _controller.add(AuthStatus.authenticated),
    );
  }

  Future<void> signout() async {
    logger("User auth status: Unauthenticated");
    await Future.delayed(
      const Duration(seconds: 2),
      () => _controller.add(AuthStatus.unauthenticated),
    );
  }

  void dispose() => _controller.close();
}
