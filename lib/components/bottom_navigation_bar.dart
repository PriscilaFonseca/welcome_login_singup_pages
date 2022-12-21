import 'package:flutter/material.dart';
import 'package:flutter_application_model/constants.dart';
import 'package:flutter_application_model/screens/calendar/calendar.dart';
import 'package:flutter_application_model/screens/home/home.dart';
import 'package:flutter_application_model/screens/account/account.dart';
import 'package:flutter_application_model/screens/search/search.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const SearchScreen(),
    const CalendarScreen(),
    const AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: pPrimaryColor,
        unselectedItemColor: pIconsNavigationColor,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.calendar_month,
              size: 30,
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
