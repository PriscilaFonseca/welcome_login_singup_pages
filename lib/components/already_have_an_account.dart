import 'package:flutter/material.dart';
import 'package:flutter_application_model/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final void Function() onPress;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? 'Don\'t have an Account ? ' : 'Already have an Account',
          style: const TextStyle(color: pPrimaryColor),
        ),
        GestureDetector(
          onTap: onPress,
          child: const Text(
            'Sign up',
            style: TextStyle(color: pPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
