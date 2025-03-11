part of '../signin_screen.dart';

class SigninForm extends StatelessWidget {
  final SigninScreenState parent;
  const SigninForm({super.key, required this.parent});

  @override
  Widget build(BuildContext context) {
    var l10n = AppLocalizations.of(context)!;
    var bloc = context.read<UserAuthBloc>();

    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            FormInput(
              key: const Key('signin_email_input'),
              label: l10n.email,
              hint: l10n.email,
              controller: parent.emailController,
            ),
            const SizedBox(height: 10),
            FormInput(
              key: const Key('signin_password_input'),
              label: l10n.password,
              hint: l10n.password,
              isPassword: true,
              controller: parent.passwordController,
            ),
            const SizedBox(height: 20),
            [
              AppButton(
                key: const Key('signin_button'),
                onPressed: () {
                  var validation = validateSignin(parent);
                  if (validation.validated) {
                    bloc.add(UserAuthSigninNow(
                      email: parent.emailController!.text.trim(),
                      password: parent.passwordController!.text.trim(),
                    ));
                  } else {
                    CustomSnackbar.show(context, validation.error);
                  }
                },
                label: l10n.signin,
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
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RouteNames.signup,
                  (route) => false,
                );
              },
              child: Text(l10n.dontHaveAccount),
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
