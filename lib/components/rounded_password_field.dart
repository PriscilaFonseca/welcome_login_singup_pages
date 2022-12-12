import 'package:flutter/material.dart';
import 'package:flutter_application_model/components/text_field_container.dart';
import 'package:flutter_application_model/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      obscureText: true,
      onChanged: onChanged,
      decoration: const InputDecoration(
        labelText: 'Password',
        icon: Icon(
          Icons.lock,
          color: pPrimaryColor,
        ),
        border: InputBorder.none,
        suffixIcon: Icon(
          Icons.visibility,
          color: pPrimaryColor,
        ),
      ),
    ));
  }
}
