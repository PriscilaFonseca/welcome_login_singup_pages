import 'package:flutter/material.dart';
import 'package:flutter_application_model/components/already_have_an_account.dart';
import 'package:flutter_application_model/components/rounded_button.dart';
import 'package:flutter_application_model/components/rounded_inpult_field.dart';
import 'package:flutter_application_model/components/rounded_password_field.dart';
import 'package:flutter_application_model/screens/login/login.dart';
import 'package:flutter_application_model/components/or_divider.dart';
import 'package:flutter_application_model/components/social_icon.dart';
import 'package:flutter_application_model/stores/login_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginStore loginStore = LoginStore();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        reverse: true,
        child: Column(
          children: [
            Container(
              height: size.height * 0.35,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/background_signup.png',
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
          ],
        ),
      ),
    );
  }
}
