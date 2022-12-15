import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
  @observable
  String _email = '';

  @observable
  String _password = '';

  @observable
  bool passwordVisible = false;

  @observable
  bool _isEmailEdited = false;

  @observable
  bool _isPwdEdited = false;

  @computed
  bool get isEmailEdited => _isEmailEdited;

  @computed
  bool get isPwdEdited => _isPwdEdited;

  @computed
  bool get isEmailValid => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(_email);

  @computed
  bool get isPasswordValid {
    if (_password.length < 8 ||
        (!_password.contains(
          RegExp(r"[a-z]"),
        )) ||
        (!_password.contains(
          RegExp(r"[A-Z]"),
        )) ||
        (!_password.contains(
          RegExp(r"[0-9]"),
        )) ||
        (!_password.contains(
          RegExp(r'[!@#$%^&*(),.?":{}|<>]'),
        ))) return false;
    return true;
  }

  @computed
  bool get isFormValid => isEmailValid && isPasswordValid;

  @action
  void setEmail(String value) => _email = value;

  @action
  void setPassword(String value) => _password = value;

  @action
  void setEmailEdited(bool value) => _isEmailEdited = value;

  @action
  void setPwdEdited(bool value) => _isPwdEdited = value;

  @action
  void togglePasswordVisibility() => passwordVisible = !passwordVisible;

  String validatePassword() {
    if (_password.length < 8) return 'The password needs at least 8 characters';
    if (!_password.contains(
      RegExp(r"[a-z]"),
    )) return 'The password needs at least lowercase letter';
    if (!_password.contains(
      RegExp(r"[A-Z]"),
    )) return 'The password needs at least capital letter';
    if (!_password.contains(
      RegExp(r"[0-9]"),
    )) return 'The password needs at least number';
    if (!_password.contains(
      RegExp(r'[!@#$%^&*(),.?":{}|<>]'),
    )) return 'The password needs at least special character';
    return '';
  }

  String validateEmail() {
    if (isEmailValid == false) {
      return 'invalid email';
    }
    return '';
  }
}
