import 'package:flutter/material.dart';
import 'package:flutter_application_model/components/elevated_button.dart';

class CategoriesListWidgets extends StatefulWidget {
  const CategoriesListWidgets({super.key});

  @override
  State<CategoriesListWidgets> createState() => _CategoriesListWidgetsState();
}

class _CategoriesListWidgetsState extends State<CategoriesListWidgets> {
  final List<Widget> _categories = List.generate(
    8,
    (index) => ElevatedButtonWidget(
      title: '$index category',
      onPress: () {},
    ),
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, top: 24.0),
      child: Container(
        constraints: BoxConstraints(
          maxHeight: size.height * 0.06,
          maxWidth: size.width,
        ),
        child: GridView.count(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(6.0),
          crossAxisSpacing: 1,
          mainAxisSpacing: 20,
          childAspectRatio: 0.35,
          crossAxisCount: 1,
          children: _categories,
        ),
      ),
    );
  }
}
