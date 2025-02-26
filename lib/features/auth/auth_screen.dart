import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

import '../../../core/navigator/route_names.dart';
import '../../common/repository/auth_repository.dart';
import '../../common/repository/prefs_repository.dart';
import '../../common/utils/constants/pref_constants.dart';
import '../../common/widget/progress/custom_snackbar.dart';
import '../../core/di/injectable.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => AuthScreenState();
}

class AuthScreenState extends State<AuthScreen> {
  late PrefsRepository prefRepo;
  late AuthRepository authRepo;
  bool isOnboarded = false;

  @override
  void initState() {
    super.initState();
    prefRepo = getIt<PrefsRepository>();
    authRepo = getIt<AuthRepository>();
    isOnboarded = prefRepo.getPrefBool(PrefConstants.isOnboardedKey);
  }

  @override
  Widget build(BuildContext context) {
    var l10n = AppLocalizations.of(context)!;

    void nextStep(Session? session) {
      authRepo.signin(session);
      Navigator.pushNamedAndRemoveUntil(
        context,
        isOnboarded ? RouteNames.onboarding : RouteNames.dashboard,
        (route) => false,
      );
    }

    void signinSuccess(AuthResponse response) {
      CustomSnackbar.show(
        context,
        l10n.signinSuccess,
        isSuccess: true,
      );
      nextStep(response.session);
    }

    void signupSuccess(AuthResponse response) {
      
      CustomSnackbar.show(
        context,
        l10n.signupSuccess,
        isSuccess: true,
      );
      nextStep(response.session);
    }

    void socialAuthSuccess(Session session) {
      
      CustomSnackbar.show(
        context,
        l10n.authSuccess,
        isSuccess: true,
      );
      nextStep(session);
    }

    return Scaffold(
      appBar: AppBar(title: Text(l10n.signin)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SupaEmailAuth(
              onSignInComplete: signinSuccess,
              onSignUpComplete: signupSuccess,
              onPasswordResetEmailSent: () {
                CustomSnackbar.show(
                  context,
                  l10n.passwordResetEmail,
                  isSuccess: true,
                );
              },
              onError: (error) {
                CustomSnackbar.show(
                  context,
                  l10n.errorOccurred(error.toString()),
                );
              },
            ),
            const SizedBox(height: 10),
            SupaSocialsAuth(
              socialProviders: [OAuthProvider.google],
              colored: true,
              onSuccess: socialAuthSuccess,
              onError: (error) {
                CustomSnackbar.show(
                  context,
                  l10n.errorOccurred(error.toString()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
