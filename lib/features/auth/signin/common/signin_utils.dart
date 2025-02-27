import '../../../../common/data/models/basic_models.dart';
import '../ui/signin_screen.dart';

Validation validateSignin(SigninScreenState parent) {
  Validation validation = Validation();
  if (parent.emailController!.text.isEmpty ||
      !parent.emailController!.text.contains('@')) {
    validation.error = parent.l10n.validEmailError;
    validation.validated = false;
  } else if (parent.passwordController!.text.isEmpty ||
      parent.passwordController!.text.length < 8) {
    validation.error = parent.l10n.enterPassword;
    validation.validated = false;
  } else {
    validation.validated = true;
  }
  return validation;
}