import 'package:flutter/material.dart';
import 'package:flutter_application_model/components/rounded_button.dart';
import 'package:flutter_application_model/components/rounded_inpult_field.dart';
import 'package:flutter_application_model/constants.dart';
import 'package:flutter_application_model/screens/login/login.dart';
import 'package:flutter_application_model/stores/login_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    LoginStore loginStore = LoginStore();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        reverse: true,
        child: Center(
          child: Column(
            children: [
              Container(
                height: size.height * 0.4,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/background_forgot_password.png',
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  const Text(
                    'Forgot the password ?',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Container(
                    width: size.width * 0.9,
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: const Text(
                      'We will send you a password reset link, please enter the email used on our platform.',
                      style: TextStyle(fontSize: 20),
                    ),
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
                      return RoundedButton(
                        text: 'RESET',
                        onPress: loginStore.isEmailValid
                            ? () {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: const Text('Check your email'),
                                    actions: <Widget>[
                                      Center(
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty
                                                    .resolveWith((states) =>
                                                        pPrimaryColor),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const LoginScreen(),
                                              ),
                                            );
                                          },
                                          child: const Text('Ok'),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            : null,
                      );
                    },
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
