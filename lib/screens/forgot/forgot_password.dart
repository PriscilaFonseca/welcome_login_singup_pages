import 'package:flutter/material.dart';
import 'package:flutter_application_model/components/rounded_button.dart';
import 'package:flutter_application_model/components/rounded_inpult_field.dart';
import 'package:flutter_application_model/stores/login_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    LoginStore loginStore = LoginStore();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'assets/icons/reset_password.svg',
              height: size.height * 0.08,
            ),
            const Text(
              'Forgot the password ?',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
            const Text(
              'Please enter the email used on our platform. We will send you a password reset link, follow the instructions.',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: size.height * 0.08,
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
                return RoundedButton(
                  text: 'RESET',
                  onPress: loginStore.isEmailValid ? () {} : null,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
