import 'package:flutter/material.dart';
import 'package:flutter_application_model/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function() onPress;
  const SocialIcon({
    Key? key,
    required this.iconSrc,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: pPrimaryLightColor),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc,
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
