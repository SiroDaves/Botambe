part of 'user_auth_bloc.dart';

@freezed
sealed class UserAuthEvent with _$UserAuthEvent {
  const factory UserAuthEvent.signin({
    required String email,
    required String password,
  }) = UserAuthSigninNow;

  const factory UserAuthEvent.signup({
    required String name,
    required String email,
    required String password,
  }) = UserAuthSignupNow;

  const factory UserAuthEvent.passreset({
    required String email,
  }) = UserAuthPasswordReset;
}
