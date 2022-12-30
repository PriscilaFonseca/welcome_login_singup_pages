import 'package:flutter/material.dart';
import 'package:flutter_application_model/constants.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String title;
  final Function() onPress;
  final Color backgroundColor;
  const ElevatedButtonWidget({
    super.key,
    required this.title,
    required this.onPress,
    this.backgroundColor = pPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => backgroundColor.withOpacity(0.8),
        ),
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        padding: MaterialStateProperty.resolveWith(
          (states) => const EdgeInsets.all(10.0),
        ),
      ),
      onPressed: onPress,
      child: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
