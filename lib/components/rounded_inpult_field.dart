import 'package:flutter/material.dart';
import 'package:flutter_application_model/components/text_field_container.dart';
import 'package:flutter_application_model/constants.dart';

class RoundedInputField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String labelText;
  final String? errorText;
  final IconData icon;
  const RoundedInputField({
    Key? key,
    required this.onChanged,
    required this.labelText,
    required this.errorText,
    this.icon = Icons.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: labelText,
          errorText: errorText,
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: pPrimaryColor,
          ),
        ),
      ),
    );
  }
}
