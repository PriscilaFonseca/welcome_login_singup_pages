import 'package:flutter/material.dart';

class DrawerHeaderWidget extends StatelessWidget {
  final double radius;
  final Image image;
  final String text;
  const DrawerHeaderWidget(
      {super.key,
      required this.radius,
      required this.image,
      required this.text});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Theme(
      data: ThemeData(
        drawerTheme: const DrawerThemeData(
          elevation: 1,
          scrimColor: Colors.black,
          width: 0.0,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: radius,
              backgroundColor: Colors.white,
              child: image,
            ),
            SizedBox(
              width: size.width * 0.06,
            ),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
