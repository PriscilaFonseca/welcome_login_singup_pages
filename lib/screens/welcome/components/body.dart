import 'package:flutter/material.dart';
import 'package:flutter_application_model/components/rounded_button.dart';
import 'package:flutter_application_model/constants.dart';
import 'package:flutter_application_model/screens/welcome/components/backgroud.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Backgroud(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'WELCOME',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () {},
            ),
            RoundedButton(
              text: 'SIGNUP',
              color: pPrimaryLightColor,
              textColor: Colors.black,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
