import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width * 0.8,
        child: Column(
          children: const [
            Text('Calendar'),
          ],
        ),
      ),
    );
  }
}
