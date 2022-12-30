import 'package:flutter/material.dart';
import 'package:flutter_application_model/screens/bakery/components/bakery_store.dart';

class BakeryStoresList extends StatefulWidget {
  const BakeryStoresList({super.key});

  @override
  State<BakeryStoresList> createState() => _BakeryStoresListState();
}

class _BakeryStoresListState extends State<BakeryStoresList> {
  final List<Widget> _bakeryStores = List.generate(
    6,
    (index) => BakeryStoreWidget(
      title: '$index Bakery Name',
      image: 'assets/images/default_cake.jpg',
      evaluation: '4.5',
      distance: ' - 1.3 km',
      time: '50-60 min',
      delivery: ' - \$2.99',
    ),
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxHeight: size.height, maxWidth: size.width),
      child: GridView.count(
        padding: const EdgeInsets.all(16.0),
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        childAspectRatio: 0.8,
        crossAxisCount: 2,
        children: _bakeryStores,
      ),
    );
  }
}
