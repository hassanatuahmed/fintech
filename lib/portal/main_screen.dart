import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_banking.dart';
import 'bottom_navigation_homepage.dart';
import 'bottom_navigation_notification.dart';
import 'loan_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage1(),
    LoanPage(),
    Banking(),
    NotificationPage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
                Icons.home,
              color: Colors.grey,

            ),
            title: Text('HOME'),
            activeIcon: Icon(
                Icons.home,
                color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.motorcycle,
                color: Colors.grey,
            ),
            title: Text('Banking'),
            activeIcon: Icon(
                Icons.motorcycle,
                color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.donut_small,
              color: Colors.grey,
              size: 36,
            ),
            title: Text('Loan'),
            activeIcon: Icon(
              Icons.usb,
              color: Colors.red,
              size: 36,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.grey,
              size: 36,
            ),
            title: Text('Notification'),
            activeIcon: Icon(
              Icons.usb,
              color: Colors.red,
              size: 36,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

}