// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on LoginStoreBase, Store {
  Computed<bool>? _$isEmailEditedComputed;

  @override
  bool get isEmailEdited =>
      (_$isEmailEditedComputed ??= Computed<bool>(() => super.isEmailEdited,
              name: 'LoginStoreBase.isEmailEdited'))
          .value;
  Computed<bool>? _$isPwdEditedComputed;

  @override
  bool get isPwdEdited =>
      (_$isPwdEditedComputed ??= Computed<bool>(() => super.isPwdEdited,
              name: 'LoginStoreBase.isPwdEdited'))
          .value;
  Computed<bool>? _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid,
              name: 'LoginStoreBase.isEmailValid'))
          .value;
  Computed<bool>? _$isPasswordValidComputed;

  @override
  bool get isPasswordValid =>
      (_$isPasswordValidComputed ??= Computed<bool>(() => super.isPasswordValid,
              name: 'LoginStoreBase.isPasswordValid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: 'LoginStoreBase.isFormValid'))
          .value;

  late final _$_emailAtom =
      Atom(name: 'LoginStoreBase._email', context: context);

  @override
  String get _email {
    _$_emailAtom.reportRead();
    return super._email;
  }

  @override
  set _email(String value) {
    _$_emailAtom.reportWrite(value, super._email, () {
      super._email = value;
    });
  }

  late final _$_passwordAtom =
      Atom(name: 'LoginStoreBase._password', context: context);

  @override
  String get _password {
    _$_passwordAtom.reportRead();
    return super._password;
  }

  @override
  set _password(String value) {
    _$_passwordAtom.reportWrite(value, super._password, () {
      super._password = value;
    });
  }

  late final _$passwordVisibleAtom =
      Atom(name: 'LoginStoreBase.passwordVisible', context: context);

  @override
  bool get passwordVisible {
    _$passwordVisibleAtom.reportRead();
    return super.passwordVisible;
  }

  @override
  set passwordVisible(bool value) {
    _$passwordVisibleAtom.reportWrite(value, super.passwordVisible, () {
      super.passwordVisible = value;
    });
  }

  late final _$_isEmailEditedAtom =
      Atom(name: 'LoginStoreBase._isEmailEdited', context: context);

  @override
  bool get _isEmailEdited {
    _$_isEmailEditedAtom.reportRead();
    return super._isEmailEdited;
  }

  @override
  set _isEmailEdited(bool value) {
    _$_isEmailEditedAtom.reportWrite(value, super._isEmailEdited, () {
      super._isEmailEdited = value;
    });
  }

  late final _$_isPwdEditedAtom =
      Atom(name: 'LoginStoreBase._isPwdEdited', context: context);

  @override
  bool get _isPwdEdited {
    _$_isPwdEditedAtom.reportRead();
    return super._isPwdEdited;
  }

  @override
  set _isPwdEdited(bool value) {
    _$_isPwdEditedAtom.reportWrite(value, super._isPwdEdited, () {
      super._isPwdEdited = value;
    });
  }

  late final _$LoginStoreBaseActionController =
      ActionController(name: 'LoginStoreBase', context: context);

  @override
  void setEmail(String value) {
    final _$actionInfo = _$LoginStoreBaseActionController.startAction(
        name: 'LoginStoreBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$LoginStoreBaseActionController.startAction(
        name: 'LoginStoreBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmailEdited(bool value) {
    final _$actionInfo = _$LoginStoreBaseActionController.startAction(
        name: 'LoginStoreBase.setEmailEdited');
    try {
      return super.setEmailEdited(value);
    } finally {
      _$LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPwdEdited(bool value) {
    final _$actionInfo = _$LoginStoreBaseActionController.startAction(
        name: 'LoginStoreBase.setPwdEdited');
    try {
      return super.setPwdEdited(value);
    } finally {
      _$LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void togglePasswordVisibility() {
    final _$actionInfo = _$LoginStoreBaseActionController.startAction(
        name: 'LoginStoreBase.togglePasswordVisibility');
    try {
      return super.togglePasswordVisibility();
    } finally {
      _$LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
passwordVisible: ${passwordVisible},
isEmailEdited: ${isEmailEdited},
isPwdEdited: ${isPwdEdited},
isEmailValid: ${isEmailValid},
isPasswordValid: ${isPasswordValid},
isFormValid: ${isFormValid}
    ''';
  }
}
