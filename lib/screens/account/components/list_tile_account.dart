import 'package:flutter/material.dart';
import 'package:flutter_application_model/constants.dart';

class ListTileAccount extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String? subtitle;
  final bool subTitle;
  final Function() onPress;
  const ListTileAccount(
      {super.key,
      required this.icon,
      required this.title,
      required this.onPress,
      this.subtitle,
      this.subTitle = false,
      this.iconColor = pPrimaryColor});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      iconColor: iconColor,
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      subtitle: subTitle
          ? Text(
              subtitle!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            )
          : null,
      onTap: onPress,
    );
  }
}
