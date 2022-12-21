import 'package:flutter/material.dart';
import 'package:flutter_application_model/components/rounded_button.dart';
import 'package:flutter_application_model/constants.dart';
import 'package:flutter_application_model/screens/login/login.dart';
import 'package:flutter_application_model/screens/signup/signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.6,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/background_welcome.png',
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: size.height * 0.03),
                const Text(
                  'Find the icing on your cake.',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: size.height * 0.01),
                RoundedButton(
                  text: 'LOGIN',
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                ),
                RoundedButton(
                  text: 'SIGN UP',
                  color: pPrimaryLightColor,
                  textColor: Colors.black,
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
          ],
        ),
      ),
    );
  }
}
