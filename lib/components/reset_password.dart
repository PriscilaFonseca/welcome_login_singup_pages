import 'package:flutter/material.dart';

import 'package:flutter_application_model/constants.dart';

class ResetPassword extends StatelessWidget {
  final bool login;
  final void Function() onPress;
  const ResetPassword({
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
          login ? 'Forgot password? ' : '',
          style: const TextStyle(color: pPrimaryColor, fontSize: 16),
        ),
        GestureDetector(
          onTap: onPress,
          child: Text(
            login ? 'Reset' : '',
            style: const TextStyle(
                color: pPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
      ],
    );
  }
}
