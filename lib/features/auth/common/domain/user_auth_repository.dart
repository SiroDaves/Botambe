import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../common/utils/app_util.dart';

class UserAuthRepository {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<AuthResponse?> signinUser(String email, String password) async {
    logger('Now signing in user');
    try {
      final resp = await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (resp.session != null) {
        logger('User signed in successfully: ${resp.user?.email}');
        return resp;
      } else {
        logger('Authentication failed: No active session');
        return null;
      }
    } catch (e) {
      logger('Request was unsuccessful: $e');
      return null;
    }
  }

  Future<AuthResponse?> signupUser(
      String name, String email, String password) async {
    logger('Now signing up user');
    try {
      final resp = await _supabase.auth.signUp(
        email: email,
        password: password,
        data: {'display_name': name},
      );

      if (resp.session != null) {
        logger('User signed up successfully: ${resp.user?.email}');
        return resp;
      } else {
        logger('Authentication failed: No active session');
        return null;
      }
    } catch (e) {
      logger('Request was unsuccessful: $e');
      return null;
    }
  }

  Future<void> passwordReset(String email) async {
    logger('Now sending password recovery email');
    await _supabase.auth.resetPasswordForEmail(
      email,
    );
    logger('Request was successful');
  }
}
