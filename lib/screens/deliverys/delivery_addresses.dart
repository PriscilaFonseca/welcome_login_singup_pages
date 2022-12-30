import 'package:flutter/material.dart';

class DeliverysAddresses extends StatelessWidget {
  const DeliverysAddresses({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black, automaticallyImplyLeading: true),
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
