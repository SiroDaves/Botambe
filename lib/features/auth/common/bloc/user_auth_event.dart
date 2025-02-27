part of 'user_auth_bloc.dart';

@freezed
sealed class UserAuthEvent with _$UserAuthEvent {
  const factory UserAuthEvent.signin(
    String email,
    String password,
  ) = UserAuthSigninNow;

  const factory UserAuthEvent.signup(
    String name,
    String email,
    String password,
  ) = UserAuthSignupNow;

  const factory UserAuthEvent.passreset(String email) = UserAuthPasswordReset;
}
