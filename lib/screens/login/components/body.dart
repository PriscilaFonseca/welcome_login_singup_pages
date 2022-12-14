import 'package:flutter/material.dart';
import 'package:flutter_application_model/components/already_have_an_account.dart';
import 'package:flutter_application_model/components/rounded_button.dart';
import 'package:flutter_application_model/components/rounded_inpult_field.dart';
import 'package:flutter_application_model/components/rounded_password_field.dart';
import 'package:flutter_application_model/screens/home/home.dart';
import 'package:flutter_application_model/screens/login/components/background.dart';
import 'package:flutter_application_model/stores/login_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    LoginStore loginStore = LoginStore();
    Size size = MediaQuery.of(context).size;

    return Observer(
      builder: (_) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Background(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'LOGIN',
                  style: TextStyle(fontWeight: FontWeight.bold),
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
                RoundedInputField(
                  labelText: 'E-mail',
                  errorText: loginStore.validateEmail(),
                  onChanged: loginStore.setEmail,
                ),
                RoundedPasswordField(
                  labelText: 'Password',
                  errorText: loginStore.validatePassword(),
                  onChanged: loginStore.setPassword,
                ),
                RoundedButton(
                  text: 'LOGIN',
                  onPress: loginStore.isFormValid
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        }
                      : null,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                AlreadyHaveAnAccountCheck(
                  onPress: () {},
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
