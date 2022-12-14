import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
  @observable
  String email = '';

  @action
  void setEmail(String value) => email = value;

  @observable
  String password = '';

  @action
  void setPassword(String value) => password = value;

  @observable
  bool passwordVisible = false;

  @action
  void togglePasswordVisibility() => passwordVisible = !passwordVisible;

  @computed
  bool get isEmailValid => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);

  @computed
  bool get isPasswordValid {
    if (password.length < 8 ||
        (!password.contains(
          RegExp(r"[a-z]"),
        )) ||
        (!password.contains(
          RegExp(r"[A-Z]"),
        )) ||
        (!password.contains(
          RegExp(r"[0-9]"),
        )) ||
        (!password.contains(
          RegExp(r'[!@#$%^&*(),.?":{}|<>]'),
        ))) return false;
    return true;
  }

  @computed
  bool get isFormValid => isEmailValid && isPasswordValid;

  String validatePassword() {
    if (password.length < 8) return 'The password needs at least 8 characters';
    if (!password.contains(
      RegExp(r"[a-z]"),
    )) return 'The password needs at least 1 lowercase letter';
    if (!password.contains(
      RegExp(r"[A-Z]"),
    )) return 'The password needs at least 1 lowercase letter';
    if (!password.contains(
      RegExp(r"[0-9]"),
    )) return 'The password needs at least one number';
    if (!password.contains(
      RegExp(r'[!@#$%^&*(),.?":{}|<>]'),
    )) return 'The password needs at least one special character';

    return '';
  }

  String validateEmail() {
    if (isEmailValid == false) {
      return 'invalid email';
    }
    return '';
  }
}
