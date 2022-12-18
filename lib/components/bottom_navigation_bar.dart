import 'package:flutter/material.dart';
import 'package:flutter_application_model/constants.dart';
import 'package:flutter_application_model/screens/calendar/calendar.dart';
import 'package:flutter_application_model/screens/home/home.dart';
import 'package:flutter_application_model/screens/profile/profile.dart';
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
    const ProfileScreen(),
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
        backgroundColor: pPrimaryLightColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: pPrimaryColor,
        unselectedItemColor: pIconsHomeColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}



 
    
    
    
    
   /*  SizedBox(
      height: size.height * 0.15,
      width: size.width * 0.2,
      child: GestureDetector(
        onTap: widget.onPress,
        child: Column(
          children: [
            Icon(
              widget.icon,
              color: widget.color,
              size: 40,
            ),
            Text(
              widget.text,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
*/