import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/repository/auth_repository.dart';
import '../../../../common/repository/prefs_repository.dart';
import '../../../../common/utils/app_util.dart';
import '../../../../common/utils/constants/pref_constants.dart';
import '../../../../core/di/injectable.dart';
import '../domain/user_auth_repository.dart';

part 'user_auth_event.dart';
part 'user_auth_state.dart';

part 'user_auth_bloc.freezed.dart';

class UserAuthBloc extends Bloc<UserAuthEvent, UserAuthState> {
  UserAuthBloc() : super(const _UserAuthState()) {
    on<UserAuthSigninNow>(_onSigninNow);
    on<UserAuthSignupNow>(_onSignupNow);
    on<UserAuthPasswordReset>(_onPasswordReset);
  }

  final _authrepo = getIt<AuthRepository>();
  final _userAuthrepo = UserAuthRepository();
  final _prefsRepo = getIt<PrefsRepository>();

  void _onSigninNow(
    UserAuthSigninNow event,
    Emitter<UserAuthState> emit,
  ) async {
    emit(const UserAuthLoadingState());

    try {
      _prefsRepo.setPrefString(PrefConstants.userEmailKey, event.email);

      final resp = await _userAuthrepo.signinUser(
        email: event.email,
        password: event.password,
      );

      if (resp!.response != null) {
        _authrepo.signin();
        emit(UserAuthSigninSuccessState());
      } else {
        emit(UserAuthFailureState(extractMessage(resp.feedback)));
      }
    } catch (e) {
      emit(UserAuthFailureState(e.toString()));
    }
  }

  void _onSignupNow(
    UserAuthSignupNow event,
    Emitter<UserAuthState> emit,
  ) async {
    emit(const UserAuthLoadingState());

    try {
      _prefsRepo.setPrefString(PrefConstants.userEmailKey, event.email);

      final resp = await _userAuthrepo.signupUser(
        name: event.name,
        email: event.email,
        password: event.password,
      );

      if (resp!.response != null) {
        _authrepo.signin();
        emit(UserAuthSignupSuccessState());
      } else {
        emit(UserAuthFailureState(extractMessage(resp.feedback)));
      }
    } catch (e) {
      emit(UserAuthFailureState(e.toString()));
    }
  }

  void _onPasswordReset(
    UserAuthPasswordReset event,
    Emitter<UserAuthState> emit,
  ) async {
    emit(const UserAuthLoadingState());
    _prefsRepo.setPrefString(PrefConstants.userEmailKey, event.email);
    await _userAuthrepo.passwordReset(email: event.email);
    emit(UserAuthPasswordResetState());
  }
}
