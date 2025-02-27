part of 'user_auth_bloc.dart';

@freezed
class UserAuthState with _$UserAuthState {
  const factory UserAuthState.initial() = _UserAuthState;

  const factory UserAuthState.loaded() = UserAuthLoadedState;

  const factory UserAuthState.loading() = UserAuthLoadingState;

  const factory UserAuthState.success() = UserAuthSuccessState;

  const factory UserAuthState.signedin() = UserAuthSigninSuccessState;

  const factory UserAuthState.signedup() = UserAuthSignupSuccessState;

  const factory UserAuthState.passreset() = UserAuthPasswordResetState;
  
  const factory UserAuthState.failure(String feedback) = UserAuthFailureState;
}
