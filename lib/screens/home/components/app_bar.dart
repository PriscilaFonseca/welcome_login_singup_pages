import 'package:flutter/material.dart';
import 'package:flutter_application_model/screens/deliverys/delivery_addresses.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.location_on,
          size: 20,
        ),
        SizedBox(
          width: size.width * 0.02,
        ),
        const Text('300, First Avenue - USA'),
        IconButton(
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (builder) => const DeliverysAddresses(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_drop_down),
        ),
      ],
    );
  }
}
