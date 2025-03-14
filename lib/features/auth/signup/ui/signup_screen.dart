import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

import '../../../../../core/navigator/route_names.dart';
import '../../../../common/repository/auth_repository.dart';
import '../../../../common/repository/prefs_repository.dart';
import '../../../../common/utils/constants/pref_constants.dart';
import '../../../../common/widget/action/base_buttons.dart';
import '../../../../common/widget/inputs/form_input.dart';
import '../../../../common/widget/progress/custom_snackbar.dart';
import '../../../../common/widget/progress/general_progress.dart';
import '../../../../common/widget/responsive_layout.dart';
import '../../../../core/di/injectable.dart';
import '../../../../core/theme/theme_colors.dart';
import '../../common/bloc/user_auth_bloc.dart';
import '../common/signup_utils.dart';

part 'widgets/signup_form.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  late AppLocalizations l10n;
  late PrefsRepository prefRepo;
  late AuthRepository authRepo;
  bool isOnboarded = false, isPassResetting = false;

  TextEditingController? nameController, emailController, passwordController;

  @override
  void initState() {
    super.initState();
    prefRepo = getIt<PrefsRepository>();
    authRepo = getIt<AuthRepository>();
    isOnboarded = prefRepo.getPrefBool(PrefConstants.isOnboardedKey);
    String email = prefRepo.getPrefString(PrefConstants.userEmailKey);
    String name = prefRepo.getPrefString(PrefConstants.userNameKey);
    nameController = TextEditingController(text: name);
    emailController = TextEditingController(text: email);
    passwordController = TextEditingController();
  }

  void nextStep() {
    Navigator.pushNamedAndRemoveUntil(
      context,
      RouteNames.signin,
      (route) => false,
    );
  }

  void setPassResetting(bool value) {
    setState(() => isPassResetting = value);
  }

  @override
  Widget build(BuildContext context) {
    l10n = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => UserAuthBloc(),
      child: BlocConsumer<UserAuthBloc, UserAuthState>(
        listener: (context, state) {
          if (state is UserAuthSignupSuccessState) {
            nextStep();
          } else if (state is UserAuthFailureState) {
            CustomSnackbar.show(context, state.feedback);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: Text(l10n.signup)),
            body: state.maybeWhen(
              loading: () => LoadingProgress(
                title: isPassResetting ? l10n.passResetting : l10n.signingUp,
              ),
              orElse: () => ResponsiveLayout(
                showMobileView: true,
                child: SignupForm(parent: this),
              ),
            ),
          );
        },
      ),
    );
  }
}
