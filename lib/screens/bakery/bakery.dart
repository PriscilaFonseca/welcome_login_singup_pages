import 'package:flutter/material.dart';

class BakeryScreen extends StatelessWidget {
  const BakeryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: Center(
        child: SizedBox(
          height: size.width * 0.8,
          child: Center(
            child: Column(
              children: const [
                Text('Welcome'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
