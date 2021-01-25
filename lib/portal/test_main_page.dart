import 'package:fintech/portal/bottom_navigation_notification.dart';
import 'package:fintech/portal/loan_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_homepage.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    LoanPage(),
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
            title: Text('Home'),
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
            title: Text('Loan'),
            activeIcon: Icon(
              Icons.motorcycle,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.donut_small,
              color: Colors.grey,
              size: 25,
            ),
            title: Text('Banking'),
            activeIcon: Icon(
              Icons.usb,
              color: Colors.red,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.grey,
              size: 25,
            ),
            title: Text('Notification'),
            activeIcon: Icon(
              Icons.usb,
              color: Colors.red,
              size: 30,
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