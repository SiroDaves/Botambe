import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../common/data/models/basic_models.dart';
import '../../../../common/utils/app_util.dart';

class UserAuthRepository {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<RespModel?> signinUser({
    required String email,
    required String password,
  }) async {
    logger('Now signing in user');
    late AuthResponse resp;
    try {
      resp = await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (resp.session != null) {
        logger('User signed in successfully: ${resp.user?.email}');
        return RespModel(response: resp);
      } else {
        logger('Authentication failed: No active session');
        return RespModel(feedback: "Authentication failed");
      }
    } catch (e) {
      logger('Request was unsuccessful: $e');
      return RespModel(feedback: e.toString());
    }
  }

  Future<RespModel?> signupUser({
    required String name,
    required String email,
    required String password,
  }) async {
    logger('Now signing up user');
    late AuthResponse resp;
    try {
      resp = await _supabase.auth.signUp(
        email: email,
        password: password,
        data: {'display_name': name},
      );

      if (resp.user != null) {
        logger('User signed up successfully: ${resp.user?.email}');
        return RespModel(response: resp);
      } else {
        logger('Authentication failed: No active session');
        return RespModel(feedback: "Authentication failed");
      }
    } catch (e) {
      logger('Request was unsuccessful: $e');
      return RespModel(feedback: e.toString());
    }
  }

  Future<void> passwordReset({required String email}) async {
    logger('Now sending password recovery email');
    await _supabase.auth.resetPasswordForEmail(email);
    logger('Request was successful');
  }
}
