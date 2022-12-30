import 'package:flutter/material.dart';
import 'package:flutter_application_model/screens/bakery/components/bakery_stores_list.dart';
import 'package:flutter_application_model/screens/home/components/app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        shadowColor: Colors.transparent,
        title: const AppBarHome(),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: const [
          BakeryStoresList(),
        ],
      ),
    );
  }
}
