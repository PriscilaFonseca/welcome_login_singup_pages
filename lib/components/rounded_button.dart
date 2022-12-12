import 'package:flutter/material.dart';
import 'package:flutter_application_model/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final void Function() onPress;
  final Color color, textColor;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.onPress,
    this.color = pPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            backgroundColor: color,
          ),
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
