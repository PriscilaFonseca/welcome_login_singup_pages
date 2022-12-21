import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width * 0.8,
        child: Center(
          child: Column(
            children: const [
              Text('Welcome Home'),
            ],
          ),
        ),
      ),
    );
  }
}
