import 'package:flutter/material.dart';
import 'package:flutter_application_model/components/text_field_container.dart';
import 'package:flutter_application_model/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.labelText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: labelText,
          icon: Icon(
            icon,
            color: pPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
