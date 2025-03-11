part of '../signup_screen.dart';

class SignupForm extends StatelessWidget {
  final SignupScreenState parent;
  const SignupForm({super.key, required this.parent});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<UserAuthBloc>();
    var l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FormInput(
              key: const Key('signup_name_input'),
              label: l10n.name,
              hint: l10n.name,
              controller: parent.nameController,
            ),
            const SizedBox(height: 10),
            FormInput(
              key: const Key('signup_email_input'),
              label: l10n.email,
              hint: l10n.email,
              controller: parent.emailController,
            ),
            const SizedBox(height: 10),
            FormInput(
              key: const Key('signup_password_input'),
              label: l10n.password,
              hint: l10n.password,
              isPassword: true,
              controller: parent.passwordController,
            ),
            const SizedBox(height: 20),
            [
              AppButton(
                key: const Key('signup_button'),
                onPressed: () {
                  var validation = validateSignup(parent);
                  if (validation.validated) {
                    parent.setPassResetting(false);
                    bloc.add(UserAuthSignupNow(
                      name: parent.nameController!.text.trim(),
                      email: parent.emailController!.text.trim(),
                      password: parent.passwordController!.text.trim(),
                    ));
                  } else {
                    CustomSnackbar.show(context, validation.error);
                  }
                },
                label: l10n.signup,
                bgColor: ThemeColors.primary,
                foreColor: Colors.white,
                hoverColor: Colors.red,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ).expanded()
            ].toRow(),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                var validation = validatePassreset(parent);
                if (validation.validated) {
                  parent.setPassResetting(true);
                  bloc.add(UserAuthPasswordReset(
                    email: parent.emailController!.text.trim(),
                  ));
                } else {
                  CustomSnackbar.show(context, validation.error);
                }
              },
              child: Text(l10n.forgotPassword),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RouteNames.signin,
                  (route) => false,
                );
              },
              child: Text(l10n.haveAccount),
            ),
            const SizedBox(height: 10),
            SupaSocialsAuth(
              socialProviders: [OAuthProvider.google],
              colored: true,
              onSuccess: (x) => parent.nextStep(),
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
