import 'package:flutter/material.dart';
import 'package:flutter_application_model/components/already_have_an_account.dart';
import 'package:flutter_application_model/components/rounded_button.dart';
import 'package:flutter_application_model/components/rounded_inpult_field.dart';
import 'package:flutter_application_model/components/rounded_password_field.dart';
import 'package:flutter_application_model/screens/login/login.dart';
import 'package:flutter_application_model/components/background_signup.dart';
import 'package:flutter_application_model/components/or_divider.dart';
import 'package:flutter_application_model/components/social_icon.dart';
import 'package:flutter_application_model/stores/login_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                'SIGN UP',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SvgPicture.asset(
                'assets/icons/signup.svg',
                width: size.height * 0.35,
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
                    text: 'SIGN UP',
                    onPress: loginStore.isFormValid
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
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
              AlreadyHaveAnAccountCheck(
                login: false,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
              ),
              const OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(
                    iconSrc: 'assets/icons/facebook.svg',
                    onPress: () {},
                  ),
                  SocialIcon(
                    iconSrc: 'assets/icons/twitter.svg',
                    onPress: () {},
                  ),
                  SocialIcon(
                    iconSrc: 'assets/icons/google-plus.svg',
                    onPress: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
