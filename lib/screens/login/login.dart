import 'package:flutter/material.dart';
import 'package:flutter_application_model/components/already_have_an_account.dart';
import 'package:flutter_application_model/components/bottom_navigation_bar.dart';
import 'package:flutter_application_model/components/rounded_button.dart';
import 'package:flutter_application_model/components/rounded_inpult_field.dart';
import 'package:flutter_application_model/components/rounded_password_field.dart';
import 'package:flutter_application_model/components/reset_password.dart';
import 'package:flutter_application_model/screens/forgot/forgot_password.dart';
import 'package:flutter_application_model/screens/login/components/background_login.dart';
import 'package:flutter_application_model/screens/signup/signup.dart';
import 'package:flutter_application_model/stores/login_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    LoginStore loginStore = LoginStore();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        reverse: true,
        child: Background(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'LOGIN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SvgPicture.asset(
                'assets/icons/login.svg',
                height: size.height * 0.3,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Observer(
                builder: (_) {
                  return RoundedInputField(
                    labelText: 'E-mail',
                    errorText: loginStore.isEmailEdited
                        ? loginStore.validateEmail()
                        : null,
                    onChanged: (value) {
                      loginStore.setEmailEdited(true);
                      loginStore.setEmail(value);
                    },
                  );
                },
              ),
              Observer(
                builder: (_) {
                  return RoundedPasswordField(
                    labelText: 'Password',
                    errorText: loginStore.isPwdEdited
                        ? loginStore.validatePassword()
                        : null,
                    onChanged: (value) {
                      loginStore.setPwdEdited(true);
                      loginStore.setPassword(value);
                    },
                  );
                },
              ),
              Observer(
                builder: (_) {
                  return RoundedButton(
                    text: 'LOGIN',
                    onPress: loginStore.isFormValid
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const BottomNavigationBarWidget(),
                              ),
                            );
                          }
                        : null,
                  );
                },
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              ResetPassword(
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgotPassword(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              AlreadyHaveAnAccountCheck(
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
